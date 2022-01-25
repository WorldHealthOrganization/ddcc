Instance:       DDCCRevokeHealthCertificate
InstanceOf:     OperationDefinition
Usage:          #definition
* id = "DDCC-QuestionnaireResponse-revokeHealthCertificate"
* name = "QuestionnaireResponse_Revoke_Health_Certificate"
* title = "OperationDefinition for revoking a health certificate (DDCC)."
* status = #draft
* kind = #operation
* experimental = true
* date = "2021-12-21"
* description = """
Revoke a DDCC Document.
"""
* code = #revokeHealthCertificate
* system = false
* type = true
* instance = true

* parameter[+].name = #id
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The DDCC id of the DDCC Document."
* parameter[=].type = #id

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = """A boolean to determine if the revocation was successful or not."""
* parameter[=].type = #boolean
