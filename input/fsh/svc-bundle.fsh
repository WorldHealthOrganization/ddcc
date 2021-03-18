Profile:        SVC_Bundle
Parent:         Bundle
Id:             svc-bundle
Title:          "SVC Bundle"
Description:    """ 
An [SVC Bundle](StructureDefinition-svc-bundle.html) contains the content to be encoded in QR-code on the front page of a Paper SVC.

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "Smart Vaccination Certificate Bundle"
* identifier 1.. MS
* type MS
* type = #document
* timestamp MS
* entry 2.. MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
  SVC_Composition_Entry 1..1 MS and
  SVC_Patient_Entry 1..1 MS and
  SVC_Provenance_Entry 0.. MS
* entry[SVC_Patient_Entry].resource 1..1 MS
* entry[SVC_Patient_Entry].resource only SVC_Patient
* entry[SVC_Composition_Entry].resource 1..1 MS
* entry[SVC_Composition_Entry].resource only SVC_Composition
* entry[SVC_Provenance_Entry].resource 1..1 MS
* entry[SVC_Provenance_Entry].resource only SVC_Provenance
