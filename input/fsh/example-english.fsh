Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org



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
* extension[vaccineBrand].valueCoding.code = #VAX-BRAND-EX
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


Instance:     DDCC-Composition-Example-English
InstanceOf:   DDCCComposition
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* status = #final
* subject = Reference(DDCC-Patient-English)
* date = "2020-05-22"
* author = Reference(DDCC-Organization-English)
* title = "Digital Documentation of COVID-19 Certificate (DDCC)"
* attester.party = Reference(DDCC-Organization-English)
* section[vaccination].code[+].coding.system = $LOINC
* section[vaccination].code[=].coding.code = #11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-English)
* section[vaccination].entry = Reference(DDCC-Immunization-English)



Instance: Example-English
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"
* entry[+].fullUrl = "https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCComposition"
* entry[=].resource = DDCC-Composition-Example-English

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-English"
* entry[=].resource = DDCC-Patient-English

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-English"
* entry[=].resource = DDCC-Organization-English

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-English"
* entry[=].resource = DDCC-Immunization-English
