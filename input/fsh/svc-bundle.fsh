Profile:        SVC_Bundle
Parent:         Bundle
Id:             svc-bundle
Title:          "SVC Bundle"
Description:    """ 
An [SVC Bundle](StructureDefinition-svc-bundle.html) is a document bundle containing the Smart Vaccination Certificate (SVC) content. 

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "Smart Vaccination Certificate Bundle"
* identifier 1.. MS
* type MS
* type = #document
* timestamp MS

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
