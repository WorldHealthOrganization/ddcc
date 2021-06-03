Profile:        DDCCSubmitHealthEventRequest
Parent:         Bundle
Id:        DDCCSubmitHealthEventRequest
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
* entry 0.. MS




Profile:        DDCCSubmitHealthEventResponse
Parent:         Bundle
Id:             DDCCSubmitHealthEventResponse
Title:          "DDCC Submit Health Event Response"
Description:    """ 
An DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventRespose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.html#submit-health-event) transaction.

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "DDCC Submit Health Event Response"
* identifier 1.. MS
* type MS
* type = #batch-response
* timestamp MS
* entry 0.. MS



Profile:        DDCCBundle
Parent:         Bundle
Id:             DDCCBundle
Title:          "DDCC Bundle"
Description:    """ 
An [DDCC Bundle](StructureDefinition-DDCCBundle.html) is a document bundle containing the DDCC.

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "DDCC Bundle"
* ^abstract = true
* identifier 1.. MS
* type MS
* type = #document
* timestamp MS


