Instance:     SVC-TX-SHE-QuestionnaireResponse-1
InstanceOf:   SVC_QuestionnaireResponse
Usage:        #inline

* questionnaire = $QRCodeQuestionnaireURL
* status = #completed

* subject = Reference(SVC_Patient_Example)
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

* item[+].linkId = "shfid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hw"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"


Instance:     SVC-TX-SHE-Parameters-1
InstanceOf:   Parameters
Usage:        #example

* parameter[+].name = "response"
* parameter[=].resource = SVC-TX-SHE-QuestionnaireResponse-1


Instance:     SVC-TX-SHE-bundle-example-1
InstanceOf:   Bundle
Usage:        #example

* type = #batch
* entry[+].resource = SVC-TX-SHE-Parameters-1
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"
