Profile:        SVC_Immunization
Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Id:             svc-immunization
Title:          "SVC Immunization"
Description:    """ 
An SVC Immunization contains the content to be encoded in a QR-code on a row in the Vaccination Events section of the Paper SVC. This profile is not intended to be instantiated directly, rather a [New SVC Immunization](StructureDefinition-svc-immunization-new.html) or an [Updated SVC Composition](StructureDefinition-svc-immunization-updated.html) should be used.

"""
* ^abstract = true

* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains Identifier_URN 1..1
* identifier[Identifier_URN].system 1..1
* identifier[Identifier_URN].value 1..1
* identifier[Identifier_URN].system = "urn:uuid"

// * vaccineCode.coding 1..1
// -- Is this actually needed ?
* vaccineCode.coding.system 1..1 MS
* vaccineCode.coding.code 1..1 MS
//-- end --

// --  added -- 
* vaccineCode.coding ^slicing.discriminator.type = #pattern
* vaccineCode.coding ^slicing.discriminator.path = "$this"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains who-vaccine 1..1
* vaccineCode.coding[who-vaccine] from who-svc-vaccines (required)

// * vaccineCode.coding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
// * vaccineCode.coding.code from who-svc-vaccines (required)

// Not clear why this part disappeared ...
* expirationDate MS
* lotNumber MS
* patient only Reference(SVC_Patient)
* occurrence[x] only dateTime
* performer 1.. MS
* performer.actor only Reference(SVC_Practitioner)
* protocolApplied 1.. MS

// REMOVED THE SLICE BECAUSE authority CAN BE ONLY AN ORGANIZATION....

/* ---  BEGIN 
 * protocolApplied ^slicing.discriminator.type = #type
* protocolApplied ^slicing.discriminator.path = "authority"
* protocolApplied ^slicing.rules = #open
* protocolApplied ^slicing.ordered = true
* protocolApplied contains ProtocolApplied_Authority 1.. MS
* protocolApplied[ProtocolApplied_Authority].authority  only Reference(SVC_Organization)
* protocolApplied[ProtocolApplied_Authority].targetDisease from WHO_SVC_Vaccinable_Conditions (required)
--- end */

* protocolApplied.authority  only Reference(SVC_Organization)
* protocolApplied.targetDisease from WHO_SVC_Vaccinable_Conditions (required)


Profile:        SVC_Immunization_New
Parent:         SVC_Immunization
Id:             svc-immunization-new
Title:          "New SVC Immunization"
Description:    """ 
A New SVC Immunization contains the content to be encoded in a QR-code on a row in the Vaccination Events section of the Paper SVC.

When a new Paper SVC is issued, the following rules apply to a New SVC Immnuization:
  * the [patient](StructureDefinition-svc-immunization-new-definitions.html#Immunization.patient) reference is set to the [New Patient Resource](StructureDefinition-svc-patient-new.html) that was generated
"""
* status = #not-done
* patient only Reference(SVC_Patient_New)
* ^abstract = false







Profile:        SVC_Immunization_Updated
Parent:         SVC_Immunization
Id:             svc-immunization-updated
Title:          "Updated SVC Immunization"
Description:    """ 
An [Updated SVC Immunization](StructureDefinition-svc-immunization-updated.html) contains the content to be encoded in a QR-code row in the Vaccination Events section of the Paper SVC.  The QR-code is either placed as a sticker over an existing QR-code with the same Identiifier or printed directly on a reissued Paper SVC.

An Updated SVC Immunization is derived from an existing [SVC Immunization](StructureDefinition-svc-immunization.html) according to the following rules:
 * preserve the content from the existing [SVC Immunization](StructureDefinition-svc-immunization.html)
 * amend this by transferring the vaccination event content from the Paper SVC into the [SVC Immunization](StructureDefinition-svc-immunization.html) resource
 * optionally update the [patient](StructureDefinition-svc-immunization-updated-definitions.html#Immunization.patient)to reference an appropriate SVC Patient as determined by the PHA (e.g. the referenced Patient matches an existing Patient record)
"""
* expirationDate MS
* lotNumber MS
* patient only Reference(SVC_Patient_Updated)
* occurrence[x] only dateTime
* performer 1.. MS
* performer.actor only Reference(SVC_Practitioner)
* protocolApplied 1.. MS

* protocolApplied ^slicing.discriminator.type = #type
* protocolApplied ^slicing.discriminator.path = "authority"
* protocolApplied ^slicing.rules = #open
* protocolApplied ^slicing.ordered = true
* protocolApplied contains ProtocolApplied_Authority 1.. MS
* protocolApplied[ProtocolApplied_Authority].authority  only Reference(SVC_Organization)

// how can be bound a targetDisease to a vaccine ? Should not be a disease ?
// maybe could be
// * protocolApplied[ProtocolApplied_Authority].targetDisease from WHO_SVC_Vaccinable_Conditions (required)

* protocolApplied[ProtocolApplied_Authority].targetDisease from WHO_SVC_Vaccines (required)
* ^abstract = false

