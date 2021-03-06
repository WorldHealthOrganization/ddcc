Profile:        SVC_Bundle
Parent:         Bundle
Id:             svc-bundle
Title:          "SVC Bundle"
Description:    """ 
An SVC Bundle contains the content to be encoded in QR-code on the front page of a Paper SVC.

"""
* type = #document
* entry 3..3
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.ordered = true
* entry contains
  SVC_Patient_Entry 1..1 and
  SVC_Composition_Entry 1..1 and
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
An SVC Bundle contains the content to be encoded in QR-code on the front page of a Paper SVC.

An new SVC Bundle is derived from an existing SVC Bundle according to the following rules:
 * preserve the content in the existing SVC Bundle
 * amend this by transferring the non-digital demographic content  from the Paper SVC into the SVC Patient resource 
"""
* type = #document
* entry[SVC_Patient_Entry].resource only SVC_Patient_Updated
* entry[SVC_Composition_Entry].resource only SVC_Composition_Updated
* entry[SVC_Provenance_Entry].resource only SVC_Provenance_Digital_Updated
* ^abstract = false

Profile:        SVC_Bundle_Updated
Parent:         SVC_Bundle
Id:             svc-bundle-updated
Title:          "Updated SVC Bundle"
Description:    """ 
An Updated SVC Bundle is generated PHA when the PHA transfers content from a Paper SVC in which case it should:
 * generate an Updated SVC Patient 
 * generate an Updated SVC Compostion
"""
* type = #document
* entry[SVC_Patient_Entry].resource only SVC_Patient_Updated
* entry[SVC_Composition_Entry].resource only SVC_Composition_Updated
* entry[SVC_Provenance_Entry].resource only SVC_Provenance_Digital_Updated
* ^abstract = false


Profile:        SVC_Bundle_Ingested
Parent:         SVC_Bundle
Id:             svc-bundle-ingested
Title:          "Ingested SVC Bundle"
Description:    """ 
An Ingested SVC Bundle is generated PHA when the PHA transfers content from a Paper SVC issued by an extenral PHA, in which case it should:
 * generate an Updated SVC Patient 
 * generate an Ingested SVC Compostion
"""
* type = #document
* entry[SVC_Patient_Entry].resource only SVC_Patient_Ingested
* entry[SVC_Composition_Entry].resource only SVC_Composition_Ingested
* entry[SVC_Provenance_Entry].resource only SVC_Provenance_Digital_Ingested
* ^abstract = false