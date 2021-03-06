Profile:        SVC_Immunization
Parent:         ImmunizationUvIps
Id:             svc-immunization
Title:          "SVC Immunization"
Description:    """ 
An SVC Immunization contains the content to be encoded in a QR-code on a row in the Vaccination Events section of the Paper SVC. This profile is not intended to be instantiated directly, rather a New SVC Immunization or an Updated SVC Composition should be used.

"""
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = true
* identifier contains Identifier_URN 1..1
* identifier[Identifier_URN].system 1..1
* identifier[Identifier_URN].value 1..1
* identifier[Identifier_URN].system = "urn:uuid"
* vaccineCode.coding 1..1
* vaccineCode.coding.system 1..1 MS
* vaccineCode.coding.code 1..1 MS
* vaccineCode.coding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding.code from who-svc-vaccines (required)
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
* expirationDate MS
* lotNumber MS
* patient only Reference(SVC_Patient_Updated)
* occurrence[x] only dateTime
* performer 1.. MS
* performer.actor only Reference(SVC_Practitioner)
* protocolApplied contains ProtocolApplied_Authority 1..1 
* protocolApplied ^slicing.discriminator.type = #type
* protocolApplied ^slicing.discriminator.path = "authority"
* protocolApplied ^slicing.rules = #closed
* protocolApplied ^slicing.ordered = true
* protocolApplied contains ProtocolApplied_Authority 1.. MS
* protocolApplied[ProtocolApplied_Authority].authority  only Reference(SVC_Organization)
* protocolApplied[ProtocolApplied_Authority].targetDisease binding who-svc-vaccines
* ^abstract = false

