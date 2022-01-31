Profile:        DDCCGenerateHealthCertificateParameters
Parent:         Parameters
Id:             DDCCGenerateHealthCertificateParameters
Title:          "DDCC Generate Health Certificate Parameters"
Description:    "Parameters for the [DDCC Generate Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthCertificate.html)."
* ^publisher = "World Health Organization (WHO)"
* parameter 1..
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains ddccResponse 1..1 
* parameter[ddccResponse].name = "response"
* parameter[ddccResponse].resource 1..1
* parameter[ddccResponse].resource only DDCCQuestionnaireResponse or Bundle

Profile:        DDCCGenerateHealthFolderParameters
Parent:         Parameters
Id:             DDCCGenerateHealthFolderParameters
Title:          "DDCC Generate Health Folder Parameters"
Description:    "Parameters for the [DDCC Generate Health Folder Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthFolder.html)."
* ^publisher = "World Health Organization (WHO)"
* parameter 1..
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains ddccBundle 0..1
* parameter[ddccBundle].name = "bundle"
* parameter[ddccBundle].resource 1..1
* parameter[ddccBundle].resource only Bundle

Profile:        DDCCRevokeHealthCertificateParameters
Parent:         Parameters
Id:             DDCCRevokeHealthCertificateParameters
Title:          "DDCC Revoke Health Certificate Parameters"
Description:    "Parameters for the [DDCC Revoke Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-revokeHealthCertificate.html)."
* ^publisher = "World Health Organization (WHO)"
* parameter 1..
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains 
        ddccId 1..1
* parameter[ddccId].name = "id"
* parameter[ddccId].value[x] 1..1
* parameter[ddccId].value[x] only id


Profile:        DDCCSubmitHealthEventRequest
Parent:         Bundle
Id:             DDCCSubmitHealthEventRequest
Title:          "DDCC Submit Health Event Request"
Description:    """ 
An [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.html) is a transaction bundle containing the content of health events which are being submitted under the [Submit Health Event](transactions.html#submit-health-event) transaction.
"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "DDCC Submit Health Event Request"
* type MS
* type = #batch
* timestamp MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 1..* MS
* entry contains ddccParameters 0..* and ddccQuestionnaireResponse 0..*
* entry[ddccParameters].resource only DDCCGenerateHealthCertificateParameters
* entry[ddccParameters].request.method = #POST
* entry[ddccParameters].request.url 1..1
* entry[ddccQuestionnaireResponse].resource only DDCCQuestionnaireResponse
* entry[ddccQuestionnaireResponse].request.method = #POST
* entry[ddccQuestionnaireResponse].request.url = "QuestionnaireResponse/$generateHealthCertificate"



Profile:        DDCCSubmitHealthEventResponse
Parent:         Bundle
Id:             DDCCSubmitHealthEventResponse
Title:          "DDCC Submit Health Event Response"
Description:    """ 
A DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventRespose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.html#submit-health-event) transaction.

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "DDCC Submit Health Event Response"
* identifier 1.. MS
* type MS
* type = #batch-response
* timestamp MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains ddccBundle 1..*
* entry[ddccBundle].resource only DDCCDocument


Profile:        DDCCVSAddBundle
Parent:         Bundle
Id:             DDCCVSAddBundle
Title:          "DDCC:VS Add Bundle"
Description:    """
Bundle to be transformed to from the DDCC:VS QuestionnaireResponse
to add on the DDCC generator.
"""
* ^publisher = "World Health Organization (WHO)"
* type = #transaction
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains ddccQR 1..1
        and ddccPatient 1..1
        and ddccImmunization 1..1
        and ddccImmunizationRecommendation 0..1
        and ddccDocumentReference 0..*
        and ddccComposition 1..1
* entry[ddccQR].resource only DDCCQuestionnaireResponse
* entry[ddccQR].request.method = #PUT
* entry[ddccPatient].resource only DDCCPatient
* entry[ddccPatient].request.method = #PUT
* entry[ddccImmunization].resource only DDCCImmunization
* entry[ddccImmunization].request.method = #PUT
* entry[ddccImmunizationRecommendation].resource only DDCCImmunizationRecommendation
* entry[ddccImmunizationRecommendation].request.method = #PUT
* entry[ddccDocumentReference].resource only DDCCDocumentReference
* entry[ddccDocumentReference].request.method = #PUT
* entry[ddccComposition].resource only DDCCComposition
* entry[ddccComposition].request.method = #PUT

