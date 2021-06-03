Profile:        SHC_Provenance
Parent:         Provenance 
Id:             shc-provenance
Title:          "Provenance of SHC"
Description:    """ 
Used to assert the provenance of a public health authority (PHA) over either a Paper or a Digital Smart Vaccination Certificate (SHC). 

"""
* policy = "urn:EXAMPLE-who:smart:vaccine-certificate:RC1"
* target 1..1 MS
* entity 1.. MS
* entity ^slicing.discriminator.type = #type
* entity ^slicing.discriminator.path = "what"
* entity ^slicing.rules = #open
* entity ^slicing.ordered = true
* entity contains Provenance_Entity 1.. MS
* entity[Provenance_Entity].what only Reference(SHC_Bundle)
* agent 1.. MS
* agent ^slicing.discriminator.type = #type
* agent ^slicing.discriminator.path = "who"
* agent ^slicing.rules = #open
* agent ^slicing.ordered = true
* agent contains provenanceAgent 1.. MS
* agent[provenanceAgent].who 1..1
* agent[provenanceAgent].who only Reference(SHC_Organization)
* agent[provenanceAgent].onBehalfOf 1..1 
* agent[provenanceAgent].onBehalfOf only Reference(SHC_Patient)
* signature 1.. MS
* signature ^slicing.discriminator.type = #type
* signature ^slicing.discriminator.path = "who"
* signature ^slicing.rules = #open
* signature ^slicing.ordered = true
* signature contains provenanceSignature 1.. MS
* signature[provenanceSignature].who 1..1 MS
* signature[provenanceSignature].who only Reference(SHC_Organization or SHC_PractitionerRole or SHC_Practitioner)
