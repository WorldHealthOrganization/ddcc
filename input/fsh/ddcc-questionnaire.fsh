Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $DDCCVSQuestionnaireURL = http://worldhealthorganization.github.io/ddcc/DDCCVSCoreDataSetQuestionnaire
Alias: $DDCCTRQuestionnaireURL = http://worldhealthorganization.github.io/ddcc/DDCCTRCoreDataSetQuestionnaire
Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $QRVSMapURL = http://worldhealthorganization.github.io/ddcc/StructureMap/QRespToVSCoreDataSet
Alias: $QRTRMapURL = http://worldhealthorganization.github.io/ddcc/StructureMap/QRespToTRCoreDataSet


Profile:        DDCCQuestionnaire
Parent:         sdc-questionnaire-extr-smap
Id:             DDCCQuestionnaire
Title:          "DDCC Questionniare"
Description:    """ 
Describes the logical structure for a questionnaire associacted to a DDCC which includes a Structure Map to generate the relevant DDCC from a given [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.html) which responds to the DDCC Questionnaire.
"""
* ^abstract = true
* extension[$targetStructureMap] 1.. MS


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
* url = $DDCCVSQuestionnaireURL
* name = "DDCCVSCoreDataSetQuestionnaire" // computer ready name
* title = "DDCC:VS Core Data Set Questionnaire"
* description = "DDCC Questionnaire for an Immunization event."
* version = "0.1.0"
* status = #draft
* experimental = true
* date = "2021-12-22"
* extension[$targetStructureMap].valueCanonical = $QRVSMapURL

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
* item[=].answerValueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-vaccines-covid-19"
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

* item[+].linkId = "vaccine_valid"
* item[=].text = "Vaccination valid from"
* item[=].type = #date
* item[=].required = false

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
* item[=].answerValueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-disease-targeted-covid-19"
* item[=].required = false

* item[+].linkId = "due_date"
* item[=].text = "Due date of next dose"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "pha"
* item[=].text = "Certificate issuer"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "hcid"
* item[=].text = "Health certificate identifier"
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



// * item[+].linkId = "signature"
// * item[=].answer.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"


Instance: DDCCTRCoreDataSetQuestionnaire
InstanceOf: DDCCQuestionnaire
Usage: #definition

* id = "DDCCTRCoreDataSetQuestionnaire"
* url = $DDCCTRQuestionnaireURL
* name = "DDCCTRCoreDataSetQuestionnaire" // computer ready name
* title = "DDCC:TR Core Data Set Questionnaire"
* description = "DDCC Questionnaire for a Test event."
* version = "0.1.0"
* status = #draft
* experimental = true
* date = "2021-12-22"
* extension[$targetStructureMap].valueCanonical = $QRTRMapURL

* item[+].linkId = "name"
* item[=].text = "Name"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "birthDate"
* item[=].text = "Date of birth"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "identifier"
* item[=].text = "Unique identifier"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "pathogen"
* item[=].text = "Pathogen targeted"
* item[=].type = #choice
* item[=].answerValueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-agent-targeted-covid-19"
* item[=].required = true

* item[+].linkId = "type"
* item[=].text = "Type of test"
* item[=].type = #choice
* item[=].answerValueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-type-of-test-covid-19"
* item[=].required = true

* item[+].linkId = "brand"
* item[=].text = "Test brand"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "manufacturer"
* item[=].text = "Test manufacturer"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "origin"
* item[=].text = "Specimen Sample Origin"
* item[=].type = #choice
* item[=].answerValueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-sample-origin-covid-19"
* item[=].required = false

* item[+].linkId = "date"
* item[=].text = "Date and time of sample collection  "
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "result"
* item[=].text = "Test result"
* item[=].type = #choice
* item[=].answerValueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-test-result-covid-19"
* item[=].required = true

* item[+].linkId = "vaccine_valid"
* item[=].text = "Vaccination valid from"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "centre"
* item[=].text = "Test centre or facility name"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "country"
* item[=].text = "Test centre country"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/iso3166-1-3"
* item[=].required = true

* item[+].linkId = "pha"
* item[=].text = "Certificate issuer"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "hcid"
* item[=].text = "Health certificate identifier"
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
