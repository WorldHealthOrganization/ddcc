Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     SHC-Patient-Spanish
InstanceOf:   SHC_Patient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "El gato Félix"
* birthDate = "2000-01-02"

Instance: SHC-Organization-Spanish
InstanceOf: SHC_Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Hospital del Gobierno"

Instance: SVC-Immunization-Spanish
InstanceOf: SVC_Immunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* identifier[SVC_Identifier].system = "https://who-int.github.io/svc/refs/heads/rc2/test_system"
* identifier[SVC_Identifier].value = "123"
* vaccineCode.coding[svcVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding[svcVaccine].code = $ICD11#XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(SHC-Patient-Example-Spanish)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(SHC-Organization-Spanish)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(SHC-Organization-Spanish)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-Spanish
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/SHC-Patient-Spanish"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = SHC-Patient-Spanish

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/SHC-Organization-Spanish"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = SHC-Organization-Spanish

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/SVC-Immunization-Spanish"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = SVC-Immunization-Spanish
