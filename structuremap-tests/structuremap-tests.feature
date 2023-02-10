Feature: structure map tests
# prerequisites: Java >= JDK11, Karate v1.3.1 (downloaded by run shell script)
# for Matchbox tests: running server <v3, run sushi
# for validator tests: local validator_cli.jar at least ver 5.6.93, built IG on ../output
# preload tests are not independent and should not be run in parallel

Background:
# Matchbox instance URL
#  * url 'https://test.ahdis.ch/matchbox/fhir'
  * url 'http://localhost:8080/matchbox/fhir'
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
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM0GQ8'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[0].resource.vaccination.lot == '0000001'
And match response.entry[0].resource.vaccination.date == '2021-01-01'
And match response.entry[0].resource.vaccination.centre == 'ABC General Hospital'

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
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://loinc.org', code: '94558-4'}
And match response.entry[0].resource.test.date == '2021-02-17'
And match response.entry[0].resource.test.result contains only {system: 'http://snomed.info/sct', code: '260373001'}

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
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '#present' }}

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
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '#present' }}

@shc
@validator
Scenario: Transforming Example SHC Bundle to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/shc/example-00-a-fhirBundle.json','target/example-00-a-fhirBundle.json','http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetVS')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[3]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'John B. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.identifier contains only {system: 'urn:oid:example', value: '12345'}
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XM0GQ8'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XM8NQ0'}
And match response.entry[0].resource.vaccination.lot == '0000001'
And match response.entry[0].resource.vaccination.date == '2021-01-01'
And match response.entry[0].resource.vaccination.centre == 'ABC General Hospital'

@shc
@validator
Scenario: Transforming Example SHC Bundle to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/shc/Bundle-example-bundle-lab-test-results-covid.json','target/Bundle-example-bundle-lab-test-results-covid.json','http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetTR')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.resourceType == 'DDCCCoreDataSet'
And match response.entry[0].resource.name == 'James T. Anyperson'
And match response.entry[0].resource.birthDate == '1951-01-20'
And match response.entry[0].resource.test.pathogen contains {system: 'http://id.who.int/icd11/mms', code: 'XN109'}
And match response.entry[0].resource.test.type contains only {system: 'http://loinc.org', code: '94558-4'}
And match response.entry[0].resource.test.date == '2021-02-17'
And match response.entry[0].resource.test.result contains only {system: 'http://snomed.info/sct', code: '260373001'}

@shc
@validator
Scenario: Transforming Example CertSHC to Bundle of Core Data Set VS using validator
Given def response = transform('fixtures/shc/example-00-b-jws-payload-expanded.json','target/example-00-b-jws-payload-expanded.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertSHCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[3]'
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '#present' }}

@shc
@validator
Scenario: Transforming Example CertSHC to Bundle of Core Data Set TR using validator
Given def response = transform('fixtures/shc/bundle-lab-test-results-covid-jws-payload-expanded.json','target/bundle-lab-test-results-covid-jws-payload-expanded.json','http://worldhealthorganization.github.io/ddcc/StructureMap/CertSHCtoCoreDataSet')
Then match response.resourceType == 'Bundle'
And match response.entry == '#[1]'
And match response.entry[0].resource.certificate contains { issuer: {reference: 'https://spec.smarthealth.cards/examples/issuer'}, period: {start: '#present' }}

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
##### Fails, valueset source: [* $icd11#XMOGQ8 "COVID-19 vaccine, RNA based"]
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XMOGQ8'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XMOGQ8'}
And match response.entry[0].resource.vaccination.manufacturer contains only {system: 'https://covid-19-diagnostics.jrc.ec.europa.eu/devices', code: 'ORG-100030215'}
And match response.entry[0].resource.vaccination.maholder contains only {code: 'ORG-100030215'}
# And match response.entry[0].resource.vaccination.lot == '0000001' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.date == '2022-05-13'
# And match response.entry[0].resource.vaccination.validFrom == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.dose == 4
And match response.entry[0].resource.vaccination.totalDoses == 4
And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: 'URY'}
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
And match response.entry[0].resource.test.type contains only {system: 'http://loinc.org', code: '94558-4'}
And match response.entry[0].resource.test.brand contains only {system: 'https://id.uvci.eu/valuesets/test-manf.json', code: 'Detección de ARN COVID-19 RT PCR en secreciones respiratorias'}
And match response.entry[0].resource.test.manufacturer contains only {system: 'https://covid-19-diagnostics.jrc.ec.europa.eu/devices', code: 'manufacturer'}
# And match response.entry[0].resource.test.origin == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.test.date == '2022-01-21T00:00:00Z'
And match response.entry[0].resource.test.result contains only {system: 'http://snomed.info/sct', code: '260373001'}
And match response.entry[0].resource.test.centre contains only { code: 'Laboratorio ATGEN'}
And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: 'URY'}

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
##### Fails, valueset source: [* $icd11#XMOGQ8 "COVID-19 vaccine, RNA based"]
And match response.entry[0].resource.vaccination.vaccine contains only {system: 'http://id.who.int/icd11/mms', code: 'XMOGQ8'}
And match response.entry[0].resource.vaccination.brand contains only {system: 'http://id.who.int/icd11/mms', code: 'XMOGQ8'}
And match response.entry[0].resource.vaccination.manufacturer contains only {system: 'https://covid-19-diagnostics.jrc.ec.europa.eu/devices', code: 'ORG-100030215'}
And match response.entry[0].resource.vaccination.maholder contains only {code: 'ORG-100030215'}
# And match response.entry[0].resource.vaccination.lot == '0000001' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.date == '2022-05-13'
# And match response.entry[0].resource.vaccination.validFrom == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.vaccination.dose == 4
And match response.entry[0].resource.vaccination.totalDoses == 4
And match response.entry[0].resource.vaccination.country contains only {system: 'urn:iso:std:iso:3166', code: 'URY'}
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
And match response.entry[0].resource.test.type contains only {system: 'http://loinc.org', code: '94558-4'}
And match response.entry[0].resource.test.brand contains only {system: 'https://id.uvci.eu/valuesets/test-manf.json', code: 'Detección de ARN COVID-19 RT PCR en secreciones respiratorias'}
And match response.entry[0].resource.test.manufacturer contains only {system: 'https://covid-19-diagnostics.jrc.ec.europa.eu/devices', code: 'manufacturer'}
# And match response.entry[0].resource.test.origin == 'unk' ### NO SOURCE ###
And match response.entry[0].resource.test.date == '2022-01-21T00:00:00Z'
And match response.entry[0].resource.test.result contains only {system: 'http://snomed.info/sct', code: '260373001'}
And match response.entry[0].resource.test.centre contains only { code: 'Laboratorio ATGEN'}
And match response.entry[0].resource.test.country contains only {system: 'urn:iso:std:iso:3166', code: 'URY'}