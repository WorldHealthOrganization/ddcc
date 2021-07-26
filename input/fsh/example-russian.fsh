Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-Russian
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Авл Агерий"
* birthDate = "2003-03-03"

Instance: DDCC-Organization-Russian
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Государственная больница"

Instance: DDCC-Immunization-Russian
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* extension[vaccineBrand].valueCoding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* extension[vaccineBrand].valueCoding.code = #TEST
* extension[country].valueCode = #RUS
* vaccineCode.coding[ddccVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding[ddccVaccine].code = $ICD11#XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Example-Russian)
* location.display = "Сайт вакцинации"
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(DDCC-Organization-Russian)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Russian)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-Russian
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Russian"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-Russian

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-Russian"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-Russian

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-Russian"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-Russian
