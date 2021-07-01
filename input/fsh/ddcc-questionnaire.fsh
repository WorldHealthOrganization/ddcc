Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $DDCCQuestionnaireURL = http://worldhealthorganization.github.io/ddcc-rc1/DDCCVSCoreDataSetQuestionnaire
Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $QRMapURL = http://worldhealthorganization.github.io/ddcc-rc1/StructureMap/ddcc-map-qr-bundle
Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap

Profile:        DDCCQuestionnaire
Parent:         sdc-questionnaire-extr-smap
Id:             DDCCQuestionnaire
Title:          "DDCC Questionniare"
Description:    """ 
Describes the logical structure for a questionnaire associacted to a DDCC which includes a Structure Map to generate the relevant DDCC from a given [DDCC QuestionnaireResponse](StructureDefintion-DDCCQuestionnaireResponse.html) which responds to the DDCC Questionnaire.
"""
* ^abstract = true
* extension[$targetStructureMap] 1.. MS
// * extension[$targetStructureMap].valueCanonical = "http://worldhealthorganization.github.io/svc/StructureMap/ddcc-bundle"

Profile:        DDCCQuestionnaireResponse
Parent:         sdc-questionnaireresponse
Id:             DDCCQuestionnaireResponse
Title:          "DDCC Questionnaire Response"
Description:    """ 
Describes the logical structure for a questionnaire response associacted to a [DDCC Questionaire](StructureDefinition-DDCCQuestionnaire.html). 
"""
* ^abstract = true


Instance: DDCCVSCoreDataSetQuestionnaire
InstanceOf: DDCCQuestionnaire
Usage: #definition

* id = "DDCCVSCoreDataSetQuestionnaire"
* url = $DDCCQuestionnaireURL
* name = "DDCCCoreDataSetQuestionnaire" // computer ready name
* title = "DDCC Core Data Set Questionnaire "
* description = "DDCC Questionnaire for an Immunization event."
* version = "0.1.0"
* status = #draft
* experimental = true
* date = "2021-06-03"
* extension[$targetStructureMap].valueCanonical = $QRMapURL

* item[+].linkId = "name"
* item[=].text = "Name"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "birthDate"
* item[=].text = "Date of birth"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "identifier"
* item[=].text = "Unique identifier"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "sex"
* item[=].text = "Sex"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].required = false

* item[+].linkId = "vaccine"
* item[=].text = "Vaccine or prophylaxis"
* item[=].type = #choice
* item[=].required = true

* item[+].linkId = "brand"
* item[=].text = "Vaccine brand"
* item[=].type = #choice
* item[=].required = true

* item[+].linkId = "manufacturer"
* item[=].text = "Vaccine manufacturer"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "ma_holder"
* item[=].text = "Vaccine market authorization holder"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "lot"
* item[=].text = "Vaccine batch number"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "date"
* item[=].text = "Date of vaccine"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "dose"
* item[=].text = "Dose number"
* item[=].type = #integer
* item[=].required = true

* item[+].linkId = "total_doses"
* item[=].text = "Total doses"
* item[=].type = #integer
* item[=].required = false

* item[+].linkId = "country"
* item[=].text = "Country of vaccination"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/iso3166-1-3"
* item[=].required = true

* item[+].linkId = "centre"
* item[=].text = "Administering centre"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "hw"
* item[=].text = "Health worker identifier"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "disease"
* item[=].text = "Disease or agent targeted"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "due_date"
* item[=].text = "Due date of next dose"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "pha"
* item[=].text = "Certificate issuer"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "paperid"
* item[=].text = "Certificate identifier"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "valid_from"
* item[=].text = "Certificate valid from"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "valid_until"
* item[=].text = "Certificate valid until"
* item[=].type = #date
* item[=].required = false


// * item[+].linkId = "signature"
// * item[=].text = "Signature of the health worker"
// * item[=].type = #string
// * item[=].required = false


Instance:     DDCC-VS-QuestionnaireResponse-Example
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCQuestionnaireURL
* status = #completed

* subject = Reference(DDCC-Patient-English)
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "Felix Cat"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "1234567890"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM1NL1

* item[+].linkId = "brand"
* item[=].answer.valueCoding = #test-brand

* item[+].linkId = "manufacturer"
* item[=].answer.valueCoding = #test-manufacturer

* item[+].linkId = "ma_holder"
* item[=].answer.valueCoding = #test-ma-holder

* item[+].linkId = "lot"
* item[=].answer.valueString = "ER8732"

* item[+].linkId = "date"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "dose"
* item[=].answer.valueInteger = 1

* item[+].linkId = "total_doses"
* item[=].answer.valueInteger = 2

* item[+].linkId = "country"
* item[=].answer.valueCoding = #USA

* item[+].linkId = "centre"
* item[=].answer.valueString = "Vaccination Site"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01.0

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "paperid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


// * item[+].linkId = "signature"
// * item[=].answer.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"


