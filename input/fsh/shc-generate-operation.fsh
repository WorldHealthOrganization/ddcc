Instance:       SHC_GenerateHealthCertificate
InstanceOf:     OperationDefinition
Title:          "OperationDefinition for generating a health certificate QR code that is signed."
Usage:          #definition
* id = "SHC-QuestionnaireReponse-generateHealthCertificate"
* name = "QuestionnaireReponse Generate Health Certificate"
* status = #draft
* kind = #operation
* experimental = true
* date = "2021-05-07"
* description = """
Generate one or more signed QR Codes based on a [SHC QuestionnaireResponse](StructureDefinition-shc-questionnaireresponse.html)
"""
* code = #generateHealthCertificate
* resource = #QuestionnaireResponse
* system = false
* type = true
* instance = true
* parameter[+].name = #response
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The questionnaire response resource used to generate the QR code."
* parameter[=].type = #QuestionnaireResponse

* parameter[+].name = #id
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The questionnaire response resource id used to generate the QR code."
* parameter[=].type = #id


* parameter[+].name = #qr-code
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].documentation = "The QR Code PNG that was generated."
* parameter[=].type = #SHC_Binary_QRPNG

* parameter[+].name = #qr-content
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].documentation = "The signed QR Code content that was used to generate the image.  QR Code content must be listed in the same order as the cooresponding QR Code PNG"
* parameter[=].type = #SHC_Binary_QRContent

* parameter[+].name = #certificate
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The URI of the location of the certificate when the available."
* parameter[=].type = #uri








