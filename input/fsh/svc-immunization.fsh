Profile:        SVC_Immunization
Parent:         ImmunizationUvIPS
Id:             svc-immunization
Title:          "SVC Immunization"
Description:    """ 
An SVC Immunization contains the content to be encoded in a QR-code on a row in the Vaccination Events section of the Paper SVC. This profile is not intended to be instantiated directly, rather a New SVC Immunization or an Updated SVC Composition should be used.

"""
* identifier 1..
* identifier[0].system 1..1
* identifier[0].value 1..1
* identifier[0].system = "urn:uuid"
* vaccineCode.coding 1..1
* vaccineCode.coding.system 1..1
* vaccineCode.coding.system = "<<TODO>> URI WHO Vaccine Product Catalog"
* vaccineCode.coding.code 1..1
* vaccineCode.coding.code = "<<TODO>>Bind to Vaccine Product Catalog Valueset"
* ^abstract = true


Profile:        SVC_Immunization_New
Parent:         SVC_Immunization
Id:             svc-immunization-new
Title:          "New SVC Immunization"
Description:    """ 
A New SVC Immunization contains the content to be encoded in a QR-code on a row in the Vaccination Events section of the Paper SVC.

When a new Paper SVC is issued, the following rules apply to a New SVC Immnuization::
  * the patient reference is set to the New Patient Resource that was generated
"""
* status = #not-done
* patient only Reference(SVC_Patient_New)
* ^abstract = false

Profile:        SVC_Immunization_Updated
Parent:         SVC_Immunization
Id:             svc-immunization-updated
Title:          "Updated SVC Immunization"
Description:    """ 
An Updated SVC Immunization contains the content to be encoded in a QR-code row in the Vaccination Events section of the Paper SVC.  The QR-code is either placed as a sticker over an existing QR-code with the same Identiiifer or printed directly on a reissued Paper SVC.

An updated SVC Immunization is derived from an existing SVC Immunization according to the following rules:
 * preserve the content from the existing SVC Immunization
 * amend this by transferring the vaccination event content from the Paper SVC into the SVC Immunization resource
 * optionally update the patient to reference an appropriate SVC Patient as determined by the PHA after Patient deduplication

"""
* expirationDate 1..1
* lotNumber 1..1
* patient only Reference(SVC_Patient_Updated)
* occurrenceDateTime only DateTime
* performer 1..
* performer.actor only Reference(SVC_Practitioner)
* protocalApplied 1..
* protocalApplied[0].targetDisease = "<<TODO>> Bind to ICD-11 ValueSet"
* protocalApplied[0].authority 1..1
* protocalApplied[0].authority only Reference(SVC_Organization)
* ^abstract = false

