Instance:     SHC-Patient-Example-French
InstanceOf:   SHC_Patient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Félix le chat"
* birthDate = "2000-01-02"

Instance: SHC-Organization-French
InstanceOf: SHC_Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Hôpital du gouvernement"

Instance: SVC-Immunizaton-French
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
* patient = Reference(SHC-Patient-Example-French)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(SHC-Organization-French)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(SHC-Organization-French)
* protocolApplied[protocolAppliedAuthority].targetDisease = #RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumber[x] = 1
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] = 2
