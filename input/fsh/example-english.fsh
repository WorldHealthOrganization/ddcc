Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org

CodeSystem:     DDCCExampleTestCodeSystem
Title:          "DDCC Codes for examples"
Description:    "Example codes for example resources."
* ^experimental = false
* ^caseSensitive = true
* #TEST        "Test"

Instance:     DDCCPatientEnglish
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulus Agerius"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCCOrganizationEnglish
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"

Instance: DDCCImmunizationRecommendationEnglish
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCCPatientEnglish)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0GQ8
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCCImmunizationEnglish)

Instance: DDCCImmunizationEnglish
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = $ICD11#XM3DT5
* extension[vaccineMarketAuthorization].valueCoding = DDCCExampleTestCodeSystem#TEST
* extension[validFrom].valueDate = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#CHE
* vaccineCode = $ICD11#XM0GQ8
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCCPatientEnglish)
* location.display = "Vaccination Site"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCCOrganizationEnglish)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCCOrganizationEnglish)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCCCompositionExampleEnglish
InstanceOf:   DDCCVSComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCCPatientEnglish)
* date = "2020-05-06"
* author = Reference(DDCCOrganizationEnglish)
* attester.party = Reference(DDCCOrganizationEnglish)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCCImmunizationEnglish)
* section[vaccination].entry[+] = Reference(DDCCImmunizationEnglish)
* section[vaccination].entry[+] = Reference(DDCCImmunizationRecommendationEnglish)



Instance: ExampleEnglish
InstanceOf: DDCCVSDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCCCompositionExampleEnglish"
* entry[ddccComposition].resource = DDCCCompositionExampleEnglish

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCCPatientEnglish"
* entry[ddccPatient].resource = DDCCPatientEnglish

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCCOrganizationEnglish"
* entry[ddccOrganization].resource = DDCCOrganizationEnglish

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCCImmunizationEnglish"
* entry[ddccImmunization].resource = DDCCImmunizationEnglish

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCCImmunizationRecommendationEnglish"
* entry[ddccImmunizationRecommendation].resource = DDCCImmunizationRecommendationEnglish


Instance:     DDCCVSQuestionnaireResponseExample
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCVSQuestionnaireURL
* status = #completed

* subject = Reference(DDCCPatientEnglish)
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "Aulus Agerius"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "1234567890"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM0GQ8

* item[+].linkId = "brand"
* item[=].answer.valueCoding = $ICD11#XM3DT5

* item[+].linkId = "manufacturer"
* item[=].answer.valueCoding = DDCCExampleTestCodeSystem#TEST

* item[+].linkId = "ma_holder"
* item[=].answer.valueCoding = DDCCExampleTestCodeSystem#TEST

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
* item[=].answer.valueCoding = urn:iso:std:iso:3166#USA

* item[+].linkId = "centre"
* item[=].answer.valueString = "Vaccination Site"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hcid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


Instance:     DDCCVSTXSHEParameters1
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[+].name = "response"
* parameter[=].resource = DDCCVSQuestionnaireResponseExample


Instance:     DDCCTXSHEbundleexample1
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[+].fullUrl = "http://www.example.org/fhir/Parameters/DDCCVSTXSHEParameters1"
* entry[=].resource = DDCCVSTXSHEParameters1
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"
