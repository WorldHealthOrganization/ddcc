Instance:     DDCC-Patient-Chinese
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "奥卢斯·阿杰里乌斯"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCC-Organization-Chinese
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "政府医院"

Instance: DDCC-ImmunizationRecommendation-Chinese
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-Chinese)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-Chinese)

Instance: DDCC-Immunization-Chinese
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[vaccineMarketAuthorization].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#CHN
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Chinese)
* location.display = "疫苗接种现场"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-Chinese)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Chinese)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-Chinese
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-Chinese)
* date = "2020-05-06"
* author = Reference(DDCC-Organization-Chinese)
* attester.party = Reference(DDCC-Organization-Chinese)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-Chinese)
* section[vaccination].entry[+] = Reference(DDCC-Immunization-Chinese)
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-Chinese)


Instance: Example-Chinese
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCC-Composition-Example-Chinese"
* entry[ddccComposition].resource = DDCC-Composition-Example-Chinese

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Chinese"
* entry[ddccPatient].resource = DDCC-Patient-Chinese

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-Chinese"
* entry[ddccOrganization].resource = DDCC-Organization-Chinese

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-Chinese"
* entry[ddccImmunization].resource = DDCC-Immunization-Chinese

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCC-ImmunizationRecommendation-Chinese"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-Chinese
