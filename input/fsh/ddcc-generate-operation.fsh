Instance:       DDCCGenerateHealthCertificate
InstanceOf:     OperationDefinition
Usage:          #definition
* id = "DDCC-QuestionnaireResponse-generateHealthCertificate"
* name = "QuestionnaireResponse_Generate_Health_Certificate"
* title = "OperationDefinition for generating a health certificate (DDCC) that is signed."
* status = #draft
* kind = #operation
* experimental = true
* date = "2021-06-03"
* description = """
Generate one or more signed DDCC Documents based on a [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.html)
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
* parameter[=].documentation = "The questionnaire response resource used to generate the DDCC Document.  Can only use one of response, id, or immunization."
* parameter[=].type = #QuestionnaireResponse

* parameter[+].name = #id
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The questionnaire response resource id used to generate the DDCC Document.  Can only use one of response, id, or immunization."
* parameter[=].type = #id

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = """The DDCC, including any QR codes, that was created under the [Generate Health Certificate](transactions.html#submit-health-event-expected-actions) expected actions"""
* parameter[=].type = #Bundle
