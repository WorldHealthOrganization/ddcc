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
* resource[+] = #QuestionnaireResponse
* resource[+] = #Bundle
* system = false
* type = true
* instance = false
* parameter[+].name = #response
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The questionnaire response or bundle resource used to generate the DDCC Document."
* parameter[=].type = #Resource

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = """The DDCC, including any QR codes, that was created under the [Generate Health Certificate](transactions.html#submit-health-event-expected-actions) expected actions"""
* parameter[=].type = #Bundle

Instance:       DDCCGenerateHealthFolder
InstanceOf:     OperationDefinition
Usage:          #definition
* id = "DDCC-QuestionnaireResponse-generateHealthFolder"
* name = "QuestionnaireResponse_Generate_Health_Folder"
* title = "OperationDefinition for generating a health folder (DDCCFolder)."
* status = #draft
* kind = #operation
* experimental = true
* date = "2022-01-24"
* description = """
Generate a DDCC Folder from an IPS Bundle.
"""
* code = #generateHealthFolder
* resource = #Bundle
* system = false
* type = true
* instance = false
* parameter[+].name = #bundle
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The bundle resource used to generate the DDCC Folder."
* parameter[=].type = #Bundle

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The DDCC Folder that was created."
* parameter[=].type = #List
