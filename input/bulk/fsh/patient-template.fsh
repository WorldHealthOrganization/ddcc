Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-{{instance.suffix}}
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = {{patient.name.text}}
* birthDate = {{patient.birthDate}}
* gender = {{patient.gender}}

Instance: DDCC-Organization-{{instance.suffix}}
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = {{organization.name}}

Instance: DDCC-Immunization-{{instance.suffix}}
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
* expirationDate = {{immunization.expirationDate}}
* lotNumber = {{immunization.lotNumber}}
* patient = Reference(DDCC-Patient-{{instance.suffix}})
* location.display = {{immunization.location.display}}
* occurrenceDateTime =  {{immunization.occurrenceDateTime}}
* performer.actor = Reference(DDCC-Organization-{{instance.suffix}})
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-{{instance.suffix}})
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-{{instance.suffix}}
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-{{instance.suffix}}"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-{{instance.suffix}}

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-{{instance.suffix}}"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-{{instance.suffix}}

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-{{instance.suffix}}"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-{{instance.suffix}}
