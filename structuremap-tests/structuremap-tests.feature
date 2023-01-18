Feature: structure map tests
# prerequisites: Java, Karate v1.3.1, Matchbox server, run sushi

Background:
# Matcbox instance URL
  * url 'https://test.ahdis.ch/matchbox/fhir'
  # url 'http://localhost:8080/fhir'

@precondition
Scenario: Get capability statement
Given path 'metadata'
And header Accept = 'application/fhir+json'
When method get
Then status 200  

@ddcc
Scenario: Upload DDCC IG
Given path 'ImplementationGuide'
And request '{ "resourceType": "ImplementationGuide", "version": "1.0.0", "name": "fhir.who.ddcc", "url": "http://worldhealthorganization.github.io/ddcc/package.tgz" }'
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200

@ddcc
Scenario: Updating DDCC Core Data Set
Given path 'StructureDefinition', 'DDCCCoreDataSet'
And request read('../fsh-generated/resources/StructureDefinition-DDCCCoreDataSet.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method put
Then status 200 || status 201

@ddcc
Scenario: Updating DDCC Core Data Set VS
Given path 'StructureDefinition', 'DDCCCoreDataSet.VS'
And request read('../fsh-generated/resources/StructureDefinition-DDCCCoreDataSet.VS.json')
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method put
Then status 200 || status 201

@shc
Scenario: Upload SHC IG
Given path 'ImplementationGuide'
And request '{ "resourceType": "ImplementationGuide", "version": "0.6.2", "name": "hl7.fhir.uv.shc-vaccination", "packageId": "hl7.fhir.uv.shc-vaccination" }'
And header Accept = 'application/fhir+json'
And header Content-Type = 'application/fhir+json'
When method post
Then status 200

@shc
Scenario: Updating SHC to Core Data Set VS Structure Map
Given path 'StructureMap'
And request read('../input/maps-src/SHCToCoreDataSetVS.map')
And header Accept = 'application/fhir+json'
And header Content-Type = 'text/fhir-mapping'
When method post
Then status 200

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