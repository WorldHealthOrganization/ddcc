Instance:     DDCCPatientRussian
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[ddccName].text = "Авл Агерий"
* name[ddccName].use = #official
* birthDate = "2003-03-03"


Instance: DDCCOrganizationRussian
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Государственная больница"

Instance: DDCCImmunizationRecommendationRussian
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCCPatientRussian)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM9QW8
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCCImmunizationRussian)

Instance: DDCCImmunizationRussian
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = $ICD11#XM5QM6
* extension[vaccineMarketAuthorization].valueCoding = DDCCExampleTestCodeSystem#TEST
* extension[validFrom].valueDate = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#RUS
* vaccineCode = $ICD11#XM9QW8
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCCPatientRussian)
* location.display = "Сайт вакцинации"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCCOrganizationRussian)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCCOrganizationRussian)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCCCompositionExampleRussian
InstanceOf:   DDCCVSComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCCPatientRussian)
* date = "2020-05-06"
* author = Reference(DDCCOrganizationRussian)
* attester.party = Reference(DDCCOrganizationRussian)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCCImmunizationRussian)
* section[vaccination].entry[+] = Reference(DDCCImmunizationRussian)
* section[vaccination].entry[+] = Reference(DDCCImmunizationRecommendationRussian)



Instance: Example-Russian
InstanceOf: DDCCVSDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCCCompositionExampleRussian"
* entry[ddccComposition].resource = DDCCCompositionExampleRussian

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCCPatientRussian"
* entry[ddccPatient].resource = DDCCPatientRussian

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCCOrganizationRussian"
* entry[ddccOrganization].resource = DDCCOrganizationRussian

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCCImmunizationRussian"
* entry[ddccImmunization].resource = DDCCImmunizationRussian

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCCImmunizationRecommendationRussian"
* entry[ddccImmunizationRecommendation].resource = DDCCImmunizationRecommendationRussian


Instance:     DDCCVSQuestionnaireResponseRussian
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCVSQuestionnaireURL
* status = #completed

* subject = Reference(DDCCPatientRussian)
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "Авл Агерий"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "12345678903"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM9QW8

* item[+].linkId = "brand"
* item[=].answer.valueCoding = $ICD11#XM5QM6

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
* item[=].answer.valueCoding = urn:iso:std:iso:3166#RUS

* item[+].linkId = "centre"
* item[=].answer.valueString = "Сайт вакцинации"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hcid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt3"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


Instance:     DDCCVSTXSHEParametersRussian
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[+].name = "response"
* parameter[=].resource = DDCCVSQuestionnaireResponseRussian


Instance:     DDCCTXSHEbundleexampleRussian
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[+].fullUrl = "http://www.example.org/fhir/Parameters/DDCCVSTXSHEParametersRussian"
* entry[=].resource = DDCCVSTXSHEParametersRussian
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"
