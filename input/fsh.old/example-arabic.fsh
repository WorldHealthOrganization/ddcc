Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     SHC-Patient-Arabic
InstanceOf:   SHC_Patient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "فيليكس القط"
* birthDate = "2000-01-02"

Instance: SHC-Organization-Arabic
InstanceOf: SHC_Organization
Usage: #example
// Title: ""
// Description: ""
* name = "مستشفى حكومي"

Instance: SVC-Immunization-Arabic
InstanceOf: SVC_Immunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* identifier[SVC_Identifier].system = "https://who-int.github.io/svc/refs/heads/rc2/test_system"
* identifier[SVC_Identifier].value = "123"
* vaccineCode.coding[svcVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding[svcVaccine].code = #XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(SHC-Patient-Arabic)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(SHC-Organization-Arabic)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(SHC-Organization-Arabic)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-Arabic
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/SHC-Patient-Arabic"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = SHC-Patient-Arabic

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/SHC-Organization-Arabic"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = SHC-Organization-Arabic

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/SVC-Immunization-Arabic"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = SVC-Immunization-Arabic
