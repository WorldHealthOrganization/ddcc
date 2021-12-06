Instance:     DDCC-Patient-{{suffix}}
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "{{name}}"
* name[=].use = #official
* birthDate = "{{birthDate}}"


Instance: DDCC-Organization-{{suffix}}
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "{{orgname}}"

Instance: DDCC-ImmunizationRecommendation-{{suffix}}
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-{{suffix}})
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-{{suffix}})

Instance: DDCC-Immunization-{{suffix}}
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[vaccineMarketAuthorization].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#SAU
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-{{suffix}})
* location.display = "{{centre}}"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-{{suffix}})
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-{{suffix}})
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-{{suffix}}
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-{{suffix}})
* date = "2020-05-06"
* author = Reference(DDCC-Organization-{{suffix}})
* attester.party = Reference(DDCC-Organization-{{suffix}})
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-{{suffix}})
* section[vaccination].entry[+] = Reference(DDCC-Immunization-{{suffix}})
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-{{suffix}})



Instance: Example-{{suffix}}
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCC-Composition-Example-{{suffix}}"
* entry[ddccComposition].resource = DDCC-Composition-Example-{{suffix}}

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-{{suffix}}"
* entry[ddccPatient].resource = DDCC-Patient-{{suffix}}

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-{{suffix}}"
* entry[ddccOrganization].resource = DDCC-Organization-{{suffix}}

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-{{suffix}}"
* entry[ddccImmunization].resource = DDCC-Immunization-{{suffix}}

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCC-ImmunizationRecommendation-{{suffix}}"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-{{suffix}}


Instance:     DDCC-VS-QuestionnaireResponse-{{suffix}}
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCQuestionnaireURL
* status = #completed

* subject = Reference(DDCC-Patient-{{suffix}})
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "{{name}}"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "{{birthDate}}"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "{{identifier}}"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM1NL1

* item[+].linkId = "brand"
* item[=].answer.valueCoding = DDCC_Example_Test_CodeSystem#TEST

* item[+].linkId = "manufacturer"
* item[=].answer.valueCoding = DDCC_Example_Test_CodeSystem#TEST

* item[+].linkId = "ma_holder"
* item[=].answer.valueCoding = DDCC_Example_Test_CodeSystem#TEST

* item[+].linkId = "lot"
* item[=].answer.valueString = "ER8732"

* item[+].linkId = "date"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "vaccine_valid"
* item[=].answer.valueDate = "2021-04-19"

* item[+].linkId = "dose"
* item[=].answer.valueInteger = 1

* item[+].linkId = "total_doses"
* item[=].answer.valueInteger = 2

* item[+].linkId = "country"
* item[=].answer.valueCoding = urn:iso:std:iso:3166#SAU

* item[+].linkId = "centre"
* item[=].answer.valueString = "{{centre}}"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hcid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt5"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


Instance:     DDCC-VS-TX-SHE-Parameters-{{suffix}}
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[+].name = "response"
* parameter[=].resource = DDCC-VS-QuestionnaireResponse-{{suffix}}


Instance:     DDCC-TX-SHE-bundle-example-{{suffix}}
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[+].fullUrl = "http://www.example.org/fhir/Parameters/DDCC-VS-TX-SHE-Parameters-{{suffix}}"
* entry[=].resource = DDCC-VS-TX-SHE-Parameters-{{suffix}}
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"