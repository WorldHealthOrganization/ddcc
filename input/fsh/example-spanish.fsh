Instance:     DDCCPatientSpanish
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[ddccName].text = "Aulo Agerio"
* name[ddccName].use = #official
* birthDate = "2003-03-03"


Instance: DDCCOrganizationSpanish
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Hospital del Gobierno"

Instance: DDCCOrganizationXCL
InstanceOf: DDCCOrganization
* name = "Chile (Demonstration)"
* identifier.system = "urn:iso:std:iso:3166"
* identifier.value = "CL"

Instance: DDCCImmunizationRecommendationSpanish
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCCPatientSpanish)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM9QW8
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCCImmunizationSpanish)

Instance: DDCCImmunizationSpanish
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = $ICD11#XM4YL8
* extension[vaccineMarketAuthorization].valueCoding = DDCCExampleTestCodeSystem#TEST
* extension[validFrom].valueDate = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#ESP
* vaccineCode = $ICD11#XM9QW8
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCCPatientSpanish)
* location.display = "Sitio de vacunación"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCCOrganizationSpanish)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCCOrganizationSpanish)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCCCompositionExampleSpanish
InstanceOf:   DDCCVSComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCCPatientSpanish)
* date = "2020-05-06"
* author = Reference(DDCCOrganizationSpanish)
* attester.party = Reference(DDCCOrganizationSpanish)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCCImmunizationSpanish)
* section[vaccination].entry[+] = Reference(DDCCImmunizationSpanish)
* section[vaccination].entry[+] = Reference(DDCCImmunizationRecommendationSpanish)



Instance: ExampleSpanish
InstanceOf: DDCCVSDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[hcid].relation = "publication"
* link[hcid].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCCCompositionExampleSpanish"
* entry[ddccComposition].resource = DDCCCompositionExampleSpanish

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCCPatientSpanish"
* entry[ddccPatient].resource = DDCCPatientSpanish

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCCOrganizationSpanish"
* entry[ddccOrganization].resource = DDCCOrganizationSpanish

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCCImmunizationSpanish"
* entry[ddccImmunization].resource = DDCCImmunizationSpanish

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCCImmunizationRecommendationSpanish"
* entry[ddccImmunizationRecommendation].resource = DDCCImmunizationRecommendationSpanish


Instance:     DDCCVSQuestionnaireResponseSpanish
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCVSQuestionnaireURL
* status = #completed

* subject = Reference(DDCCPatientSpanish)
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "Aulo Agerio"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "12345678904"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM9QW8

* item[+].linkId = "brand"
* item[=].answer.valueCoding = $ICD11#XM4YL8

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
* item[=].answer.valueCoding = urn:iso:std:iso:3166#ESP

* item[+].linkId = "centre"
* item[=].answer.valueString = "Sitio de vacunación"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hcid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt4"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


Instance:     DDCCVSTXSHEParametersSpanish
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[ddccResponse].name = "response"
* parameter[ddccResponse].resource = DDCCVSQuestionnaireResponseSpanish


Instance:     DDCCTXSHEbundleexampleSpanish
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[ddccParameters].fullUrl = "http://www.example.org/fhir/Parameters/DDCCVSTXSHEParametersSpanish"
* entry[ddccParameters].resource = DDCCVSTXSHEParametersSpanish
* entry[ddccParameters].request.method = #POST
* entry[ddccParameters].request.url = "QuestionnaireResponse/$generateHealthCertificate"
