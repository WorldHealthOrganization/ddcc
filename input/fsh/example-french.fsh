Instance:     DDCCPatientFrench
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[ddccName].text = "Aulus Agerius"
* name[ddccName].use = #official
* birthDate = "2003-03-03"


Instance: DDCCOrganizationFrench
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Hôpital du gouvernement"

Instance: DDCCImmunizationRecommendationFrench
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCCPatientFrench)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0GQ8
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCCImmunizationFrench)

Instance: DDCCImmunizationFrench
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = $ICD11#XM8NQ0
* extension[vaccineMarketAuthorization].valueCoding = DDCCExampleTestCodeSystem#TEST
* extension[validFrom].valueDate = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#FRA
* vaccineCode = $ICD11#XM0GQ8
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCCPatientFrench)
* location.display = "Site de vaccination"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCCOrganizationFrench)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCCOrganizationFrench)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCCCompositionExampleFrench
InstanceOf:   DDCCVSComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCCPatientFrench)
* date = "2020-05-06"
* author = Reference(DDCCOrganizationFrench)
* attester.party = Reference(DDCCOrganizationFrench)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCCImmunizationFrench)
* section[vaccination].entry[+] = Reference(DDCCImmunizationFrench)
* section[vaccination].entry[+] = Reference(DDCCImmunizationRecommendationFrench)



Instance: ExampleFrench
InstanceOf: DDCCVSDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCCCompositionExampleFrench"
* entry[ddccComposition].resource = DDCCCompositionExampleFrench

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCCPatientFrench"
* entry[ddccPatient].resource = DDCCPatientFrench

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCCOrganizationFrench"
* entry[ddccOrganization].resource = DDCCOrganizationFrench

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCCImmunizationFrench"
* entry[ddccImmunization].resource = DDCCImmunizationFrench

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCCImmunizationRecommendationFrench"
* entry[ddccImmunizationRecommendation].resource = DDCCImmunizationRecommendationFrench



Instance:     DDCCVSQuestionnaireResponseFrench
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCVSQuestionnaireURL
* status = #completed

* subject = Reference(DDCCPatientFrench)
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "Aulus Agerius"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "12345678902"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM0GQ8

* item[+].linkId = "brand"
* item[=].answer.valueCoding = $ICD11#XM8NQ0

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
* item[=].answer.valueCoding = urn:iso:std:iso:3166#FRA

* item[+].linkId = "centre"
* item[=].answer.valueString = "Site de vaccination"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hcid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt2"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


Instance:     DDCCVSTXSHEParametersFrench
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[+].name = "response"
* parameter[=].resource = DDCCVSQuestionnaireResponseFrench


Instance:     DDCCTXSHEbundleexampleFrench
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[+].fullUrl = "http://www.example.org/fhir/Parameters/DDCCVSTXSHEParametersFrench"
* entry[=].resource = DDCCVSTXSHEParametersFrench
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"
