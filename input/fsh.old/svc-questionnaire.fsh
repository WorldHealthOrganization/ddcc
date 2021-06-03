Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $QRCodeQuestionnaireURL = http://who-int.github.io/svc/refs/heads/rc2/SVC-Questionnaire
Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $QRMapURL = http://who-int.github.io/svc/StructureMap/svc-map-qr-bundle

Instance: SVC_Questionnaire
InstanceOf: SHC_Questionnaire
Usage: #definition

* id = "SVC-Questionnaire"
* url = $QRCodeQuestionnaireURL
* name = "SVC-QR-Questionnaire" // computer ready name
* title = "SVC Questionnaire "
* description = "SVC QR Code Questionnaire for an Immunization event."
* version = "0.1.0"
* status = #draft
* experimental = true
* date = "2021-04-21"
* extension[$targetStructureMap].valueCanonical = $QRMapURL

* item[+].linkId = "version"
* item[=].text = "Version/type of the SVC"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "name"
* item[=].text = "Patient Name"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "birthDate"
* item[=].text = "Patient Birth Date"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "vaccinecode"
* item[=].text = "Vaccine Code"
* item[=].type = #choice
* item[=].required = false

* item[+].linkId = "status"
* item[=].text = "Status of course of vacccination"
* item[=].type = #choice
* item[=].required = true

* item[+].linkId = "protocol"
* item[=].text = "Vaccination Protocol"
* item[=].type = #choice
* item[=].required = true

* item[+].linkId = "lot"
* item[=].text = "Lot number of the adminstered vaccine"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "expiry"
* item[=].text = "Expiration Date of the vaccine"
* item[=].type = #date
* item[=].required = true

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


// * item[+].linkId = "signature"
// * item[=].text = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
// * item[=].type = #string
// * item[=].required = false




Profile:        SVC_QuestionnaireResponse
Parent:         shc-questionnaireresponse
Id:             svc-questionnaireresponse
Title:          "SVC Questionnaire Response"
Description:    """ 
Describes the logical structure for a questionnaire response associacted to a [SVC Questionaire](StructureDefinition-svc-questionnaire.html). 
"""
* ^abstract = false
// * questionnaire = Canonical(SVC_Questionnaire)



Instance:     SVC-QR-QuestionnaireResponse-Example
InstanceOf:   SVC_QuestionnaireResponse
Usage:        #example

* questionnaire = $QRCodeQuestionnaireURL
* status = #completed

* subject = Reference(SHC-Patient-English)
* authored = "2021-04-01"

* item[+].linkId = "version"
* item[=].answer.valueString = "RC-2-draft"

* item[+].linkId = "name"
* item[=].answer.valueString = "Felix Cat"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "vaccinecode"
* item[=].answer.valueCoding = $ICD11#XM1NL1

* item[+].linkId = "lot"
* item[=].answer.valueString = "ER8732"

* item[+].linkId = "expiry"
* item[=].answer.valueDate = "2021-06-30"

* item[+].linkId = "paperid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hw"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"



// * item[+].linkId = "signature"
// * item[=].answer.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"


