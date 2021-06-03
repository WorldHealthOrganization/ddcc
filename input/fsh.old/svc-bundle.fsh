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
  svcCompositionEntry 1..1 MS and
  svcPatientEntry 1..1 MS and
  svcAuthorEntry 1..1 MS and
  svcImmunizationEntry 1..1 MS and
  svcOtherEntry 0.. and
  svcProvenanceEntry 0.. MS
* entry[svcCompositionEntry].resource 1..1 MS
* entry[svcCompositionEntry].resource only SVC_Composition
* entry[svcPatientEntry].resource 1..1 MS
* entry[svcPatientEntry].resource only SHC_Patient
* entry[svcAuthorEntry].resource 1..1 MS
* entry[svcAuthorEntry].resource only SHC_Organization
* entry[svcImmunizationEntry].resource 1..1 MS
* entry[svcImmunizationEntry].resource only SVC_Immunization
* entry[svcOtherEntry].resource 1..1 MS
* entry[svcProvenanceEntry].resource 1..1 MS
* entry[svcProvenanceEntry].resource only SHC_Provenance
