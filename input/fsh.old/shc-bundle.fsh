Profile:        SHC_Submit_Health_Event_Request
Parent:         Bundle
Id:             shc-submit-health-event-request
Title:          "SHC Submit Health Event Request"
Description:    """ 
An [SHC Submit Health Event Request](StructureDefinition-shc-submit-health-event-request.html) is a transaction bundle containing the content of health events which are being submitted under the [Submit Health Event](transactions.html#submit-health-event) transaction.
"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "SHC Submit Health Event Request"
* type MS
* type = #batch
* timestamp MS
* entry 0.. MS




Profile:        SHC_Submit_Health_Event_Response
Parent:         Bundle
Id:             shc-submit-health-event-response
Title:          "SHC Submit Health Event Response"
Description:    """ 
An [SHC Submit Health Event Response](StructureDefinition-shc-submit-health-event-respose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.html#submit-health-event) transaction.

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "SHC Submit Health Event Response"
* identifier 1.. MS
* type MS
* type = #batch-response
* timestamp MS
* entry 0.. MS



Profile:        SHC_Bundle
Parent:         Bundle
Id:             shc-bundle
Title:          "SHC Bundle"
Description:    """ 
An [SHC Bundle](StructureDefinition-shc-bundle.html) is a document bundle containing the Smart Health Certificate (SHCs). 

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "Smart Vaccination Certificate Bundle"
* ^abstract = true
* identifier 1.. MS
* type MS
* type = #document
* timestamp MS


