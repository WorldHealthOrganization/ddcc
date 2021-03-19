Profile:        SVC_Provenance
Parent:         Provenance 
Id:             svc-provenance
Title:          "Provenance of SVC"
Description:    """ 
Used to assert the provenance of a public health auhority (PHA) over either a Paper or a Digital Smart Vaccination Certificate (SVC). 

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
* signature.who only Reference(SVC_Organization) or Reference(SVC_Practitioner) or Reference(SVC_PractitionerRole)


