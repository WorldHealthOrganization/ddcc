Feature: structure map tests
# prerequisites: Java >= JDK11, Karate v1.3.1, Matchbox server <v3, run sushi
# tests are not independent and should not be run in parallel

Background:
# Matchbox instance URL
  # url 'https://test.ahdis.ch/matchbox/fhir'
  * url 'http://localhost:8080/matchbox/fhir'

@ignore
Scenario: Get capability statement
Given path 'metadata'
And header Accept = 'application/fhir+json'
When method get
Then status 200

# this is work-around for missing Base structure definition in HAPI FHIR R4 validation profiles
@preload
Scenario: Preload Base structure definition
Given path 'StructureDefinition', 'Base'
And request read('./StructureDefinition-Base.xml')
And header Accept = 'application/fhir+xml'
And header Content-Type = 'application/fhir+xml'
When method put
Then assert responseStatus == 200 || responseStatus == 201

@preload
Scenario: Upload DDCC IG
Given path 'ImplementationGuide'
And request '{ "resourceType": "ImplementationGuide", "version": "1.0.0", "name": "fhir.who.ddcc", "url": "http://worldhealthorganization.github.io/ddcc/package.tgz" }'
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then assert responseStatus == 200 || responseStatus == 201

@preload
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
Scenario: Upload SHC IG
Given path 'ImplementationGuide'
And request '{ "resourceType": "ImplementationGuide", "version": "0.6.2", "name": "hl7.fhir.uv.shc-vaccination", "packageId": "hl7.fhir.uv.shc-vaccination" }'
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then assert responseStatus == 200 || responseStatus == 201

@shc
Scenario: Updating SHC to Core Data Set VS Structure Map
Given path 'StructureMap'
And request read('../input/maps-src/SHCToCoreDataSetVS.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method post
Then assert responseStatus == 200 || responseStatus == 201

@shc
Scenario: Transforming Example SHC Bundle to Core Data Set VS
* param source = 'http://worldhealthorganization.github.io/ddcc/StructureMap/SHCToCoreDataSetVS'
Given path 'StructureMap', '$transform'
And request read('fixtures/shc/example-00-a-fhirBundle.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200
And match response.resourceType == 'DDCCCoreDataSet'
And match response.name == 'John B. Anyperson'
And match response.birthDate == '1951-01-20'
And match response.vaccination.vaccine.coding[0] contains only {system: 'http://hl7.org/fhir/sid/cvx', code: '229'}
And match response.vaccination.lot == '0000001'
And match response.vaccination.date == '2022-09-05'
And match response.vaccination.centre == 'ABC General Hospital'