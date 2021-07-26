Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-Chinese
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "奥卢斯·阿杰里乌斯"
* birthDate = "2003-03-03"

Instance: DDCC-Organization-Chinese
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "政府医院"

Instance: DDCC-Immunization-Chinese
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* extension[vaccineBrand].valueCoding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* extension[vaccineBrand].valueCoding.code = #TEST
* extension[country].valueCode = #CHN
* vaccineCode.coding[ddccVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding[ddccVaccine].code = $ICD11#XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Chinese)
* location.display = "疫苗接种现场"
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(DDCC-Organization-Chinese)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Chinese)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-Chinese
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Chinese"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-Chinese

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-Chinese"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-Chinese

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-Chinese"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-Chinese
