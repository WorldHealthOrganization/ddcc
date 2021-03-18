Profile:        SVC_Provenance
Parent:         Provenance 
Id:             svc-provenance
Title:          "Provenance of SVC"
Description:    """ 
Used to assert the provenance of a Public Health Auhority (PHA) over either a Paper or a Digital Smart Vaccination Card (SVC). This profile is not intended to be instantiated directly, rather a  [Provenance of an New Digital SVC](StructureDefinition-svc-provenance-digital-new.html), or a [Provenance of an Updated Digital SVC](StructureDefinition-svc-provenance-digital-updated.html), or a [Provenance of an Paper SVC](StructureDefinition-svc-provenance-paper.html) should be used.

"""
* policy = "urn:EXAMPLE-who:smart:vaccine-certificate:RC1"
* target 1..1 MS
* entity 1..
* entity ^slicing.discriminator.type = #type
* entity ^slicing.discriminator.path = "what"
* entity ^slicing.rules = #open
* entity ^slicing.ordered = true
* entity contains Provenance_Entity 1.. MS
* entity[Provenance_Entity].what only Reference(SVC_Bundle)
* agent 1..
* agent ^slicing.discriminator.type = #type
* agent ^slicing.discriminator.path = "who"
* agent ^slicing.rules = #open
* agent ^slicing.ordered = true
* agent contains Provenance_Agent 1.. MS
* agent[Provenance_Agent].who 1..1
* agent[Provenance_Agent].who only Reference(SVC_Organization)
* agent[Provenance_Agent].onBehalfOf 1..1 
* agent[Provenance_Agent].onBehalfOf only Reference(SVC_Patient)
* signature 1.. MS
* signature.type 1.. MS


