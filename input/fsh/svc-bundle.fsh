Profile:        SVC_Bundle
Parent:         Bundle
Id:             svc-bundle
Title:          "SVC Bundle"
Description:    """ 
An [SVC Bundle](StructureDefinition-svc-bundle.html) contains the content to be encoded in QR-code on the front page of a Paper SVC.

"""
* type = #document
* entry 3..3
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = true
* entry contains
  SVC_Composition_Entry 1..1 and
  SVC_Patient_Entry 1..1 and
  SVC_Provenance_Entry 1..1
* entry[SVC_Patient_Entry].resource only SVC_Patient
* entry[SVC_Composition_Entry].resource only SVC_Composition
* entry[SVC_Provenance_Entry].resource only SVC_Provenance
* ^abstract = true


Profile:        SVC_Bundle_New
Parent:         SVC_Bundle
Id:             svc-bundle-new
Title:          "New SVC Bundle"
Description:    """ 


 * amend this by transferring the non-digital demographic content  from the Paper SVC into the [SVC Patient] resource 
"""
* type = #document
* entry[SVC_Composition_Entry].resource only SVC_Composition_New
* entry[SVC_Patient_Entry].resource only SVC_Patient_New
* entry[SVC_Provenance_Entry].resource only SVC_Provenance_Digital_New
* ^abstract = false

Profile:        SVC_Bundle_Updated
Parent:         SVC_Bundle
Id:             svc-bundle-updated
Title:          "Updated SVC Bundle"
Description:    """ 
An [Updated SVC Bundle](StructureDefinition-svc-bundle-update.html) is generated PHA when the PHA transfers content from a Paper SVC.  An [Updated SVC Bundle](StructureDefinition-svc-bundle-update.html) is derived from an existing [SVC Bundle](StructureDefinition-svc-bundle.html) according to the following rules:
 * preserve the content in the existing [SVC Bundle](StructureDefinition-svc-bundle.html)
 * generate an [Updated SVC Patient](StructureDefinition-svc-bundle-updated.html)
 * generate an [Updated SVC Compostion](StructureDefinition-svc-composition-updated.html)
"""
* type = #document
* entry[SVC_Composition_Entry].resource only SVC_Composition_Updated
* entry[SVC_Patient_Entry].resource only SVC_Patient_Updated
* entry[SVC_Provenance_Entry].resource only SVC_Provenance_Digital_Updated
* ^abstract = false


