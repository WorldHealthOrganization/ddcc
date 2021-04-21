Alias: $QRCodeUVCEIQuestionnaireURL = http://who-int.github.io/svc/refs/heads/rc2/SVC-QR-UVCEI-Questionnaire


Instance: SVC-QR-UVCEI-Questionnaire
InstanceOf: Questionnaire
Usage: #definition

* url = $QRCodeUVCEIQuestionnaireURL
* name = "SVC-QR-UVCEI-Questionnaire" // computer ready name
* title = "SVC QR Code Questionnaire for UVCEI"
* description = "SVC QR Code Questionnaire for an Immunization event."
* version = "0.1.0"
* status = #draft
* experimental = true
* date = "2021-04-21"

* item[+].linkId = "version"
* item[=].text = "Version/type of the SVC UVCEI"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "vaccinecode"
* item[=].text = "Vaccine Code"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "occurence"
* item[=].text = "Date vaccine was administered"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "status"
* item[=].text = "Status of course of vacccination"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "protocol"
* item[=].text = "Vaccination Protocol"
* item[=].type = #choice
* item[=].required = false

* item[=].linkId = "lot"
* item[=].text = "Lot number of the adminstered vaccine"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "expiry"
* item[=].text = "Expiration Date of the vaccine"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "paperid"
* item[=].text = "Identifier of the [SVC Bundle](StructureDefinition-svc-bunclde.html) that represents the Paper SVC Card"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "pha"
* item[=].text = "ID of the Public Health Authority"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "hw"
* item[=].text = "ID of the Health Worker"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "patientid"
* item[=].text = "ID of the Patient"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "signature"
* item[=].text = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* item[=].type = #string
* item[=].required = false



Instance:     SVC-QR-UVCEI-QuestionnaireResponse-Example
InstanceOf:   QuestionnaireResponse
Usage:        #example

* questionnaire = $QRCodeUVCIQuestionnaireURL
* status = #completed


* item[+].linkId = "version"
* item[=].answer.valueString = "RC-2-draft"

* item[+].linkId = "occurence"
* item[=].answer.valueDate = "2021-04-01"

* item[=].linkId = "lot"
* item[=].answer.valueString = "ER8732"

* item[+].linkId = "expiry"
* item[=].answer.valueDate = "2021-06-30"

* item[+].linkId = "paperid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hw"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "patientid"
* item[=].answer.valueString = "NMCZ8B1KwsMgVo64bDn2"

* item[+].linkId = "signature"
* item[=].answer.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"

