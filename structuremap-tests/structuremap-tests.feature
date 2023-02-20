Feature: structure map tests
# prerequisites: Java >= JDK11, Karate v1.3.1 (downloaded by run shell script)
# for Matchbox tests: running server <v3, run sushi
# for validator tests: local validator_cli.jar at least ver 5.6.93, built IG on ../output
# preload tests are not independent and should not be run in parallel

Background:
# Matchbox instance URL
#  * url 'https://test.ahdis.ch/matchbox/fhir'
  * url 'http://localhost:8080/matchboxv3/fhir'
  * def transform =
    """
    function(src, output, map) {
      var ValidatorCli = Java.type('org.hl7.fhir.validation.ValidatorCli');
      var Files = Java.type("java.nio.file.Files");
      var Paths = Java.type("java.nio.file.Paths");
      Files.deleteIfExists(Paths.get(output));
      // local IG build folder needs to start with ./ due to bug in Validator relative path handling
      var args = [src,"-output",output,"-transform",map,"-ig","hl7.fhir.uv.shc-vaccination#0.6.2","-ig","./../output","-version","4.0.1"];
      ValidatorCli.main(args);
      return read(output);
    }
    """

@ignore
Scenario: Get capability statement
Given path 'metadata'
And header Accept = 'application/fhir+json'
When method get
Then status 200

# this is work-around for missing Base structure definition in HAPI FHIR R4 validation profiles
@preload
@matchbox
Scenario: Preload Base structure definition
Given path 'StructureDefinition', 'Base'
And request read('./StructureDefinition-Base.xml')
And header Accept = 'application/fhir+xml'
And header Content-Type = 'application/fhir+xml'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@preload
@matchbox
Scenario: Upload DDCC IG
Given path 'ImplementationGuide'
And request '{ "resourceType": "ImplementationGuide", "version": "1.0.0", "name": "fhir.who.ddcc", "url": "http://worldhealthorganization.github.io/ddcc/package.tgz" }'
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then assert responseStatus == 200 || responseStatus == 201

@preload
@matchbox
Scenario Outline: Preload generated structure definitions
Given path 'StructureDefinition', '<sdid>'
And request read('../fsh-generated/resources/StructureDefinition-<sdid>.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method put
Then assert responseStatus == 200 || responseStatus == 201
  Examples:
    | sdid |
    | DDCCCoreDataSet  |
    | DDCCCoreDataSet.VS  |
    | DDCCOrganization |
    | DDCCImmunizationRecommendation |    
    | DDCCImmunization |    
    | DDCCPatient |    
    | DDCCEventBrand |    
    | DDCCCountryOfEvent |    
    | DDCCDocumentReferenceQR |    
    | DDCCComposition |    
    | DDCCCoreDataSet.VS.PoV |    
    | DDCCCoreDataSet.VS.CoC |

# SHC -----------------------------------------------------------------------------

@shc
@preload
@matchbox
Scenario: Upload SHC IG
Given path 'ImplementationGuide'
And request '{ "resourceType": "ImplementationGuide", "version": "0.6.2", "name": "hl7.fhir.uv.shc-vaccination", "packageId": "hl7.fhir.uv.shc-vaccination" }'
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then assert responseStatus == 200 || responseStatus == 201

@shc
@preload
@matchbox
Scenario: Updating SHC to Core Data Set VS Structure Map
Given path 'StructureMap', 'SHCToCoreDataSetVS'
And request read('../input/maps-src/SHCToCoreDataSetVS.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@shc
@preload
@matchbox
Scenario: Updating SHC to Core Data Set TR Structure Map
Given path 'StructureMap', 'SHCToCoreDataSetTR'
And request read('../input/maps-src/SHCToCoreDataSetTR.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@shc
@preload
@matchbox
Scenario: Updating CertSHC to Core Data Set Structure Map
Given path 'StructureMap', 'CertSHCtoCoreDataSet'
And request read('../input/maps-src/CertSHCtoCoreDataSet.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@shc
@matchbox
Scenario: Transforming Example SHC Bundle to Bundle of Core Data Set VS
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetVS'
Given path 'StructureMap', '$transform'
And request read('fixtures/shc/example-00-a-fhirBundle.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[3]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[1].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[2].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[1].resource.name == 'John B. Anyperson'
And match response.entry[2].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[1].resource.birthDate == '1951-01-20'
And match response.entry[2].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
And match response.entry[1].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
And match response.entry[2].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
# And match response.entry[0].resource.certificate.issuer contains {display: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.version == '1.3.0' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.hcid contains only {value: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.ddccid.value == '' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.period  ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[1].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM3DT5'}
# The next assertion fails due to false coding.memberOf('http://worldhealthorganization.github.io/ddcc/ValueSet/vaccine-covid19-cvx')
And match response.entry[2].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM3DT5'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '208'}
And match response.entry[1].resource.vaccination.brand contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '207'}
And match response.entry[2].resource.vaccination.brand contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '229'}
And match response.entry[0].resource.vaccination.manufacturer contains only {system: 'http://hl7.org/fhir/sid/mvx', code: 'MOD'}
# And match response.entry[0].resource.vaccination.maholder ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.lot == '0000009'
And match response.entry[1].resource.vaccination.lot == '0000007'
And match response.entry[2].resource.vaccination.lot == '0000001'
And match response.entry[0].resource.vaccination.date == '2021-01-01'
And match response.entry[1].resource.vaccination.date == '2021-01-29'
And match response.entry[2].resource.vaccination.date == '2022-09-05'
# And match response.entry[0].resource.vaccination.validFrom == '' ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.dose == 1 ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.totalDoses == 3 ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: ''} ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.centre == 'ABC General Hospital'
And match response.entry[1].resource.vaccination.centre == 'ABC General Hospital'
And match response.entry[2].resource.vaccination.centre == 'ABC General Hospital'
# And match response.entry[0].resource.vaccination.signature == '' ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.practitioner == '' ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.disease contains only {system: 'http://snomed.info/sct', code: '840539006'} ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.nextDose == '' ### NOT MAPPED ###

@shc
@matchbox
Scenario: Transforming Example SHC Bundle to Bundle of Core Data Set TR
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetTR'
Given path 'StructureMap', '$transform'
And request read('fixtures/shc/Bundle-example-bundle-lab-test-results-covid.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'James T. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
# And match response.entry[0].resource.identifier == '' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.issuer contains {display: 'ABC General Hospital'} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.version == '1.3.0' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.hcid contains only {value: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.ddccid.value == '' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.period contains only {start: '', end: ''} ### NOT MAPPED ###
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://id.who.int/icd11/mms', code: '2056159157'}
# And match response.entry[0].resource.test.brand contains only {system: '', code: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.test.manufacturer contains only {system: '', code: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.test.origin == '' ### NOT MAPPED ###
And match response.entry[0].resource.test.date == '2021-02-17'
And match response.entry[0].resource.test.result contains only {system: 'http://id.who.int/icd11/mms', code: 'RA01.0'}
# And match response.entry[0].resource.test.centre contains only { code: 'ABC General Hospital'} ### NOT MAPPED ###
# And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: ''} ### NO SOURCE ###

@shc
@matchbox
Scenario: Transforming Example CertSHC to Bundle of Core Data Set VS
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertSHCtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/shc/example-00-b-jws-payload-expanded.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[3]'
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '2022-12-08T16:08:50.000+00:00' }}

@shc
@matchbox
Scenario: Transforming Example CertSHC to Bundle of Core Data Set TR
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertSHCtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/shc/bundle-lab-test-results-covid-jws-payload-expanded.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '2022-09-11T10:49:40.000+00:00' }}

@shc
@validator
Scenario: Transforming Example SHC Bundle to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/shc/example-00-a-fhirBundle.json','target/example-00-a-fhirBundle.json','http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetVS')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[3]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[1].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[2].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[1].resource.name == 'John B. Anyperson'
And match response.entry[2].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[1].resource.birthDate == '1951-01-20'
And match response.entry[2].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
And match response.entry[1].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
And match response.entry[2].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
# And match response.entry[0].resource.certificate.issuer contains {display: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.version == '1.3.0' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.hcid contains only {value: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.ddccid.value == '' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.period  ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[1].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM3DT5'}
# The next assertion fails due to false coding.memberOf('http://worldhealthorganization.github.io/ddcc/ValueSet/vaccine-covid19-cvx')
And match response.entry[2].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM3DT5'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '208'}
And match response.entry[1].resource.vaccination.brand contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '207'}
And match response.entry[2].resource.vaccination.brand contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '229'}
And match response.entry[0].resource.vaccination.manufacturer contains only {system: 'http://hl7.org/fhir/sid/mvx', code: 'MOD'}
# And match response.entry[0].resource.vaccination.maholder ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.lot == '0000009'
And match response.entry[1].resource.vaccination.lot == '0000007'
And match response.entry[2].resource.vaccination.lot == '0000001'
And match response.entry[0].resource.vaccination.date == '2021-01-01'
And match response.entry[1].resource.vaccination.date == '2021-01-29'
And match response.entry[2].resource.vaccination.date == '2022-09-05'
# And match response.entry[0].resource.vaccination.validFrom == '' ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.dose == 1 ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.totalDoses == 3 ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: ''} ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.centre == 'ABC General Hospital'
And match response.entry[1].resource.vaccination.centre == 'ABC General Hospital'
And match response.entry[2].resource.vaccination.centre == 'ABC General Hospital'
# And match response.entry[0].resource.vaccination.signature == '' ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.practitioner == '' ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.disease contains only {system: 'http://snomed.info/sct', code: '840539006'} ### NOT MAPPED ###
# And match response.entry[0].resource.vaccination.nextDose == '' ### NOT MAPPED ###

@shc
@validator
Scenario: Transforming Example SHC Bundle to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/shc/Bundle-example-bundle-lab-test-results-covid.json','target/Bundle-example-bundle-lab-test-results-covid.json','http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetTR')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'James T. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
# And match response.entry[0].resource.identifier == '' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.issuer contains {display: 'ABC General Hospital'} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.version == '1.3.0' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.hcid contains only {value: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.ddccid.value == '' ### NOT MAPPED ###
# And match response.entry[0].resource.certificate.period contains only {start: '', end: ''} ### NOT MAPPED ###
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://id.who.int/icd11/mms', code: '2056159157'}
# And match response.entry[0].resource.test.brand contains only {system: '', code: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.test.manufacturer contains only {system: '', code: ''} ### NOT MAPPED ###
# And match response.entry[0].resource.test.origin == '' ### NOT MAPPED ###
And match response.entry[0].resource.test.date == '2021-02-17'
And match response.entry[0].resource.test.result contains only {system: 'http://id.who.int/icd11/mms', code: 'RA01.0'}
# And match response.entry[0].resource.test.centre contains only { code: 'ABC General Hospital'} ### NOT MAPPED ###
# And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: ''} ### NO SOURCE ###

@shc
@validator
Scenario: Transforming Example CertSHC to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/shc/example-00-b-jws-payload-expanded.json','target/example-00-b-jws-payload-expanded.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertSHCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[3]'
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '2022-12-08T16:08:50.000+00:00' }}

@shc
@validator
Scenario: Transforming Example CertSHC to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/shc/bundle-lab-test-results-covid-jws-payload-expanded.json','target/bundle-lab-test-results-covid-jws-payload-expanded.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertSHCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '2022-09-11T10:49:40.000+00:00' }}

# EU DCC -----------------------------------------------------------------------------

@eudcc
@preload
@matchbox
Scenario: Updating EU DCC to Core Data Set Structure Map
Given path 'StructureMap', 'CertDCCtoCoreDataSet'
And request read('../input/maps-src/CertDCCtoCoreDataSet.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@eudcc
@matchbox
Scenario: Transforming Example EU DCC to Bundle of Core Data Set VS
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertDCCtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/eudcc/dcc-valid-vs.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
# And match response.entry[0].resource.identifier == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.issuer contains {display: 'Ministerio de Salud Pública'}
And match response.entry[0].resource.certificate.version == '1.3.0'
And match response.entry[0].resource.certificate.hcid contains only {value: 'URN:UVCI:01:UY:10002661:20221209084253125'}
# And match response.entry[0].resource.certificate.ddccid.value == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.period contains only {start: '2022-12-09T11:44:58.000+00:00', end: '2023-03-09T11:44:58.000+00:00'}
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'https://ec.europa.eu/health/documents/community-register/html/', code: '1119349007'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[0].resource.vaccination.maholder contains only {system: 'https://id.uvci.eu/valuesets/vaccine-mah-manf.json', code: 'ORG-100030215'}
# And match response.entry[0].resource.vaccination.lot == '0000001' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.date == '2022-05-13'
# And match response.entry[0].resource.vaccination.validFrom == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.dose == 4
And match response.entry[0].resource.vaccination.totalDoses == 4
And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: 'UY'}
# And match response.entry[0].resource.vaccination.centre == 'unk' ### NO SOURCE FOR VACCINE, ONLY FOR TEST RESULTS ###
# And match response.entry[0].resource.vaccination.signature == 'unk' ### NO SOURCE ###
# And match response.entry[0].resource.vaccination.practitioner == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.disease contains only {system: 'http://snomed.info/sct', code: '840539006'}
# And match response.entry[0].resource.vaccination.nextDose == 'unk' ### NO SOURCE ###

@eudcc
@matchbox
Scenario: Transforming Example EU DCC to Bundle of Core Data Set TR
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertDCCtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/eudcc/dcc-valid-tr.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
# And match response.entry[0].resource.identifier == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.issuer contains {display: 'Ministerio de Salud Pública'}
And match response.entry[0].resource.certificate.version == '1.3.0'
And match response.entry[0].resource.certificate.hcid contains only {value: 'URN:UVCI:01:UY:10002661:20221209082240307'}
# And match response.entry[0].resource.certificate.ddccid.value == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.period contains only {start: '2022-12-09T11:24:45.000+00:00', end: '2023-03-09T11:24:45.000+00:00'}
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://id.who.int/icd11/mms', code: '2056159157'}
And match response.entry[0].resource.test.brand contains only {system: 'https://id.uvci.eu/valuesets/test-manf.json', code: 'Detección de ARN COVID-19 RT PCR en secreciones respiratorias'}
And match response.entry[0].resource.test.manufacturer contains only {system: 'https://covid-19-diagnostics.jrc.ec.europa.eu/devices', code: 'manufacturer'}
# And match response.entry[0].resource.test.origin == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.test.date == '2022-01-21T00:00:00Z'
And match response.entry[0].resource.test.result contains only {system: 'http://id.who.int/icd11/mms', code: 'RA01.0'}
And match response.entry[0].resource.test.centre contains only { code: 'Laboratorio ATGEN'}
And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: 'UY'}

@eudcc
@validator
Scenario: Transforming Example EU DCC to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/eudcc/dcc-valid-vs.json','target/dcc-valid-vs.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertDCCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
# And match response.entry[0].resource.identifier == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.issuer contains {display: 'Ministerio de Salud Pública'}
And match response.entry[0].resource.certificate.version == '1.3.0'
And match response.entry[0].resource.certificate.hcid contains only {value: 'URN:UVCI:01:UY:10002661:20221209084253125'}
# And match response.entry[0].resource.certificate.ddccid.value == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.period contains only {start: '2022-12-09T11:44:58.000+00:00', end: '2023-03-09T11:44:58.000+00:00'}
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'https://ec.europa.eu/health/documents/community-register/html/', code: '1119349007'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[0].resource.vaccination.maholder contains only {system: 'https://id.uvci.eu/valuesets/vaccine-mah-manf.json', code: 'ORG-100030215'}
# And match response.entry[0].resource.vaccination.lot == '0000001' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.date == '2022-05-13'
# And match response.entry[0].resource.vaccination.validFrom == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.dose == 4
And match response.entry[0].resource.vaccination.totalDoses == 4
And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: 'UY'}
# And match response.entry[0].resource.vaccination.centre == 'unk' ### NO SOURCE FOR VACCINE, ONLY FOR TEST RESULTS ###
# And match response.entry[0].resource.vaccination.signature == 'unk' ### NO SOURCE ###
# And match response.entry[0].resource.vaccination.practitioner == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.disease contains only {system: 'http://snomed.info/sct', code: '840539006'}
# And match response.entry[0].resource.vaccination.nextDose == 'unk' ### NO SOURCE ###

@eudcc
@validator
Scenario: Transforming Example EU DCC to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/eudcc/dcc-valid-tr.json','target/dcc-valid-tr.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertDCCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
# And match response.entry[0].resource.identifier == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.issuer contains {display: 'Ministerio de Salud Pública'}
And match response.entry[0].resource.certificate.version == '1.3.0'
And match response.entry[0].resource.certificate.hcid contains only {value: 'URN:UVCI:01:UY:10002661:20221209082240307'}
# And match response.entry[0].resource.certificate.ddccid.value == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.certificate.period contains only {start: '2022-12-09T11:24:45.000+00:00', end: '2023-03-09T11:24:45.000+00:00'}
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://id.who.int/icd11/mms', code: '2056159157'}
And match response.entry[0].resource.test.brand contains only {system: 'https://id.uvci.eu/valuesets/test-manf.json', code: 'Detección de ARN COVID-19 RT PCR en secreciones respiratorias'}
And match response.entry[0].resource.test.manufacturer contains only {system: 'https://covid-19-diagnostics.jrc.ec.europa.eu/devices', code: 'manufacturer'}
# And match response.entry[0].resource.test.origin == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.test.date == '2022-01-21T00:00:00Z'
And match response.entry[0].resource.test.result contains only {system: 'http://id.who.int/icd11/mms', code: 'RA01.0'}
And match response.entry[0].resource.test.centre contains only { code: 'Laboratorio ATGEN'}
And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: 'UY'}

# ICAO -------------------------------------------------------------------------------

@icao
@preload
@matchbox
Scenario: Updating ICAO to Core Data Set Structure Map
Given path 'StructureMap', 'CertICAOtoCoreDataSet'
And request read('../input/maps-src/CertICAOtoCoreDataSet.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@icao
@matchbox
Scenario: Transforming Example CertICAO to Bundle of Core Data Set VS
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertICAOtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/icao/vaccination_example.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[2]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM68M6'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[0].resource.vaccination.lot == '0000001'
And match response.entry[0].resource.vaccination.date == '2021-01-01'
And match response.entry[0].resource.vaccination.centre == 'ABC General Hospital'

@icao
@validator
Scenario: Transforming Example CertICAO to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/icao/vaccination_example.json','target/vaccination_example.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertICAOtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[2]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM68M6'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[0].resource.vaccination.lot == '0000001'
And match response.entry[0].resource.vaccination.date == '2021-01-01'
And match response.entry[0].resource.vaccination.centre == 'ABC General Hospital'

@icao
@matchbox
Scenario: Transforming Example CertICAO to Bundle of Core Data Set TR
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertICAOtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/icao/testing_example.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'James T. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://loinc.org', code: '94558-4'}
And match response.entry[0].resource.test.date == '2021-02-17'
And match response.entry[0].resource.test.result contains only {system: 'http://snomed.info/sct', code: '260373001'}

@icao
@validator
Scenario: Transforming Example CertICAO to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/icao/testing_example.json','target/testing_example.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertICAOtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'James T. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://loinc.org', code: '94558-4'}
And match response.entry[0].resource.test.date == '2021-02-17'
And match response.entry[0].resource.test.result contains only {system: 'http://snomed.info/sct', code: '260373001'}

# DIVOC ------------------------------------------------------------------------------

@divoc
@preload
@matchbox
Scenario: Updating DIVOC to Core Data Set Structure Map
Given path 'StructureMap', 'CertDIVOCToCoreDataSet'
And request read('../input/maps-src/CertDIVOCtoCoreDataSet.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@divoc
@matchbox
Scenario: Transforming Example CertDIVOC to Bundle of Core Data Set VS
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertDIVOCtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/divoc/example-divoc-payload-vaccine.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'Jill C. Anyperson'
And match response.entry[0].resource.birthDate == '1985-03-04'
And match response.entry[0].resource.identifier.value == '19882120590'
And match response.entry[0].resource.certificate.issuer.display == 'https://cowin.gov.in/'
And match response.entry[0].resource.certificate.version == 'https://cowin.gov.in/credentials/vaccination/v1'
And match response.entry[0].resource.certificate.hcid.value == "448086902"
# And match response.entry[0].resource.certificate.ddccid.value == '448086902' ### NO SOURCE ###
And match response.entry[0].resource.certificate.period contains only {start: '2021-04-21', end: '2022-04-21'}
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM0GQ8'}
And match response.entry[0].resource.vaccination.brand contains only {"code": "Pfizer"}
# And match response.entry[0].resource.vaccination.maholder contains only {system: 'https://id.uvci.eu/valuesets/vaccine-mah-manf.json', code: 'ORG-100030215'}
And match response.entry[0].resource.vaccination.lot == 'batch-01'
And match response.entry[0].resource.vaccination.date == '2021-06-28T05:30:28.187Z'
# And match response.entry[0].resource.vaccination.validFrom == '2021-04-21' ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.dose == 1
And match response.entry[0].resource.vaccination.totalDoses == 2
And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: 'IN'}
And match response.entry[0].resource.vaccination.centre == 'MOH Gothatuwa'
# And match response.entry[0].resource.vaccination.signature == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.practitioner.value == 'ss'
# And match response.entry[0].resource.vaccination.disease contains only {system: 'http://snomed.info/sct', code: '840539006'} ### NO SOURCE ###
# And match response.entry[0].resource.vaccination.nextDose == 'unk' ### NO SOURCE ###

@divoc
@validator
Scenario: Transforming Example CertDIVOC to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/divoc/example-divoc-payload-vaccine.json','target/example-divoc-payload-vaccine.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertDIVOCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'Jill C. Anyperson'
And match response.entry[0].resource.birthDate == '1985-03-04'
And match response.entry[0].resource.identifier.value == '19882120590'
And match response.entry[0].resource.certificate.issuer.display == 'https://cowin.gov.in/'
And match response.entry[0].resource.certificate.version == 'https://cowin.gov.in/credentials/vaccination/v1'
And match response.entry[0].resource.certificate.hcid.value == "448086902"
# And match response.entry[0].resource.certificate.ddccid.value == '448086902' ### NO SOURCE ###
And match response.entry[0].resource.certificate.period contains only {start: '2021-04-21', end: '2022-04-21'}
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM0GQ8'}
And match response.entry[0].resource.vaccination.brand contains only {"code": "Pfizer"}
# And match response.entry[0].resource.vaccination.maholder contains only {system: 'https://id.uvci.eu/valuesets/vaccine-mah-manf.json', code: 'ORG-100030215'}
And match response.entry[0].resource.vaccination.lot == 'batch-01'
And match response.entry[0].resource.vaccination.date == '2021-06-28T05:30:28.187Z'
# And match response.entry[0].resource.vaccination.validFrom == '2021-04-21' ### NOT MAPPED ###
And match response.entry[0].resource.vaccination.dose == 1
And match response.entry[0].resource.vaccination.totalDoses == 2
And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: 'IN'}
And match response.entry[0].resource.vaccination.centre == 'MOH Gothatuwa'
# And match response.entry[0].resource.vaccination.signature == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.practitioner.value == 'ss'
# And match response.entry[0].resource.vaccination.disease contains only {system: 'http://snomed.info/sct', code: '840539006'} ### NO SOURCE ###
# And match response.entry[0].resource.vaccination.nextDose == 'unk' ### NO SOURCE ###

@divoc
@matchbox
Scenario: Transforming Example CertDIVOC to Bundle of Core Data Set TR
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/CertDIVOCtoCoreDataSet'
Given path 'StructureMap', '$transform'
And request read('fixtures/divoc/example-divoc-test-result.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'Sam-21'
And match response.entry[0].resource.birthDate == '1995-10-19'
And match response.entry[0].resource.identifier.value == 'did:in.gov.passport:11112332334'
And match response.entry[0].resource.certificate.issuer contains {display: 'https://cowin.gov.in/'}
And match response.entry[0].resource.certificate.version == 'https://cowin.gov.in/credentials/testCertificate/v1'
And match response.entry[0].resource.certificate.hcid contains only {value: '204604148'}
#And match response.entry[0].resource.certificate.ddccid.value == '126' ### NO SOURCE ###
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://id.who.int/icd/entity', code: '1334426561'}
And match response.entry[0].resource.test.brand contains only {code: 'ABC'}
And match response.entry[0].resource.test.manufacturer contains only {code: 'Bharat Biotech'}
And match response.entry[0].resource.test.origin contains only {system: 'http://id.who.int/icd/entity', code: '50872817'}
And match response.entry[0].resource.test.date == '2021-08-20T19:21:19.646Z'
And match response.entry[0].resource.test.result contains only {system: 'http://id.who.int/icd11/mms', code: 'RA01.0'}
And match response.entry[0].resource.test.centre contains only { code: 'ABCD Medical Center'}
And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: 'IND'}

@divoc
@validator
Scenario: Transforming Example CertDIVOC to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/divoc/example-divoc-test-result.json','target/example-divoc-test-result.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertDIVOCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'Sam-21'
And match response.entry[0].resource.birthDate == '1995-10-19'
And match response.entry[0].resource.identifier.value == 'did:in.gov.passport:11112332334'
And match response.entry[0].resource.certificate.issuer contains {display: 'https://cowin.gov.in/'}
And match response.entry[0].resource.certificate.version == 'https://cowin.gov.in/credentials/testCertificate/v1'
And match response.entry[0].resource.certificate.hcid contains only {value: '204604148'}
#And match response.entry[0].resource.certificate.ddccid.value == '126' ### NO SOURCE ###
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://id.who.int/icd/entity', code: '1334426561'}
And match response.entry[0].resource.test.brand contains only {code: 'ABC'}
And match response.entry[0].resource.test.manufacturer contains only {code: 'Bharat Biotech'}
And match response.entry[0].resource.test.origin contains only {system: 'http://id.who.int/icd/entity', code: '50872817'}
And match response.entry[0].resource.test.date == '2021-08-20T19:21:19.646Z'
And match response.entry[0].resource.test.result contains only {system: 'http://id.who.int/icd11/mms', code: 'RA01.0'}
And match response.entry[0].resource.test.centre contains only { code: 'ABCD Medical Center'}
And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: 'IND'}