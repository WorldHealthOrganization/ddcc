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
* agent contains Provenance_Agent 1.. MS
* agent[Provenance_Agent].who 1..1
* agent[Provenance_Agent].who only Reference(SHC_Organization)
* agent[Provenance_Agent].onBehalfOf 1..1 
* agent[Provenance_Agent].onBehalfOf only Reference(SHC_Patient)
* signature 1.. MS
* signature ^slicing.discriminator.type = #type
* signature ^slicing.discriminator.path = "who"
* signature ^slicing.rules = #open
* signature ^slicing.ordered = true
* signature contains Provenance_Signature 1.. MS
* signature[Provenance_Signature].who 1..1 MS
* signature[Provenance_Signature].who only Reference(SHC_Organization or SVC_PractitionerRole or SHC_Practitioner)
