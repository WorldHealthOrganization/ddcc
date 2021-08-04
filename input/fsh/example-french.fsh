Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-French
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulus Agerius"
* birthDate = "2003-03-03"

Instance: DDCC-Organization-French
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Hôpital du gouvernement"

Instance: DDCC-Immunization-French
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[country].valueCode = urn:iso:std:iso:3166#FRA
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-French)
* location.display = "Site de vaccination"
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(DDCC-Organization-French)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-French)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01 "COVID-19"
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-French
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-French"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-French

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-French"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-French

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-French"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-French
