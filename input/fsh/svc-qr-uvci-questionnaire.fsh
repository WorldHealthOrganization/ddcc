Alias: $QRCodeUVCIQuestionnaireURL = http://who-int.github.io/svc/refs/heads/rc2/SVC-QR-UVCI-Questionnaire

Instance:     SVC-QR-UVCI-Questionnaire
InstanceOf:   Questionnaire
Usage:        #definition

* url = $QRCodeUVCIQuestionnaireURL
* version = "0.1.0"
* name = "SVC-QR-UVCI-Questionnaire"
* title = "SVC QR Code Questionnaire for UVCI"
* description = "SVC QR Code Questionnaire for an Immunization card."
* status = #draft
* experimental = true
* date = "2021-04-21"

* item[+].linkId = "version"
* item[=].text = "Version/type of the [SVC Comostion](StructureDefinition-svc-composition.html) document"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "name"
* item[=].text = "Name of the [SVC Patient](StructureDefinition-svc-patient.html), if provided"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "birthDate"
* item[=].text = "Date of birth of the [SVC Patient](StructureDefinition-svc-patient.html), if provided"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "patientid"
* item[=].text = "Identifier of the [SVC Patient](StructureDefinition-svc-patient.html), if provided"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "paperid"
* item[=].text = "Identifier of the [SVC Bundle](StructureDefinition-svc-bunclde.html) that represents the Paper SVC Card"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "digitalid"
* item[=].text = "Identifier of the [SVC Composition](StructureDefinition-svc-composition.html) that represents the Digital SVC Card"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "pha"
* item[=].text = "ID of the Public Health Authority"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "signature"
* item[=].text = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* item[=].type = #string
* item[=].required = false


Instance:     SVC-QR-UVCI-QuestionnaireResponse-Example
InstanceOf:   QuestionnaireResponse
Usage:        #example

* questionnaire = $QRCodeUVCIQuestionnaireURL
* status = #completed

* item[+].linkId = "version"
* item[=].answer.valueString = "RC-2-draft"

* item[+].linkId = "name"
* item[=].answer.valueString = "Felix Cat"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2005-10-04"

* item[+].linkId = "patientid"
* item[=].answer.valueString = "NMCZ8B1KwsMgVo64bDn2"

* item[+].linkId = "paperid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt"

* item[+].linkId = "digitalid"
* item[=].answer.valueString = "h1dZ75FMdY9EQQjE64O4"

* item[+].linkId = "pha"
* item[=].answer.valueString = "cvm6wAX7QCop8ueK7vkPYp"

* item[+].linkId = "signature"
* item[=].answer.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"

