Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-English
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulus Agerius"
* birthDate = "2003-03-03"

Instance: DDCC-Organization-English
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"

Instance: DDCC-Immunization-English
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* extension[vaccineBrand].valueCoding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* extension[vaccineBrand].valueCoding.code = #TEST
* extension[country].valueCode = #CHE
* vaccineCode.coding[ddccVaccine].code = $ICD11#XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-English)
* location.display = "Vaccination Site"
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(DDCC-Organization-English)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-English)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-English
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-English"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-English

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-English"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-English

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-English"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-English
