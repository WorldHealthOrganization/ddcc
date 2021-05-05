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
* type = #transaction
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
* type = #transaction-response
* timestamp MS
* entry 0.. MS



Profile:        SHC_Bundle
Parent:         Bundle
Id:             shc-bundle
Title:          "SHC Bundle"
Description:    """ 
An [SHC Bundle](StructureDefinition-svc-bundle.html) is a document bundle containing the Smart Health Certificate (SHC) content. 

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "Smart Vaccination Certificate Bundle"
* ^abstract = true
* identifier 1.. MS
* type MS
* type = #document
* timestamp MS


Profile:        SVC_Bundle
Parent:         SHC_Bundle
Id:             svc-bundle
Title:          "SVC Bundle"
Description:    """ 
An [SVC Bundle](StructureDefinition-svc-bundle.html) is a document bundle containing the Smart Vaccination Certificate (SVC) content. 

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "Smart Vaccination Certificate Bundle"
* entry 3.. MS
* entry ^slicing.discriminator[0].type = #value
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.ordered = true

* entry contains
  SVC_Composition_Entry 1..1 MS and
  SVC_Patient_Entry 1..1 MS and
  SVC_Author_Entry 1..1 MS and
  SVC_Immunization_Entry 1..1 MS and
  SVC_Other_Entry 0.. and
  SVC_Provenance_Entry 0.. MS
* entry[SVC_Composition_Entry].resource 1..1 MS
* entry[SVC_Composition_Entry].resource only SVC_Composition
* entry[SVC_Patient_Entry].resource 1..1 MS
* entry[SVC_Patient_Entry].resource only SVC_Patient
* entry[SVC_Author_Entry].resource 1..1 MS
* entry[SVC_Author_Entry].resource only SVC_Organization
* entry[SVC_Immunization_Entry].resource 1..1 MS
* entry[SVC_Immunization_Entry].resource only SVC_Immunization
* entry[SVC_Other_Entry].resource 1..1 MS
* entry[SVC_Provenance_Entry].resource 1..1 MS
* entry[SVC_Provenance_Entry].resource only SVC_Provenance
