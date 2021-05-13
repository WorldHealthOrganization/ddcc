Instance:     SHC-Patient-Example-Spanish
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

Instance: SVC-Immunizaton-Spanish
InstanceOf: SVC_Immunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* identifier[SVC_Identifier].system = "test.com"
* identifier[SVC_Identifier].value = "123"
* vaccineCode.coding[svcVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding[svcVaccine].code = #XM0CX4
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(SHC-Patient-Spanish)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(SHC-Organization-Spanish)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(SHC-Organization-Spanish)
* protocolApplied[protocolAppliedAuthority].targetDisease = #RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumber[x] = 1
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] = 2
