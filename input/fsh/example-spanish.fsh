Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-Spanish
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulo Agerio"
* birthDate = "2003-03-03"

Instance: DDCC-Organization-Spanish
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Hospital del Gobierno"

Instance: DDCC-Immunization-Spanish
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* extension[vaccineBrand].valueCoding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* extension[vaccineBrand].valueCoding.code = #TEST
* extension[country].valueCode = #ESP
* vaccineCode.coding[ddccVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding[ddccVaccine].code = $ICD11#XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Example-Spanish)
* location.display = "Sitio de vacunación"
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(DDCC-Organization-Spanish)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Spanish)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-Spanish
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Spanish"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-Spanish

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-Spanish"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-Spanish

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-Spanish"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-Spanish
