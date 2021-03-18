Profile:        SVC_Patient
//Parent: 	Patient
Parent: 	Patient-uv-ips //this forces gender.  not good.
Id:		svc-patient
Title:		"SVC Patient"
Description:	"""
Correponds to the demographic information on the front page of the Paper SVC. This profile is not intended to be instantiated directly, rather a [New SVC Patient](StructureDefinition-svc-patient-new.html) or an [Updated SVC Patient](StructureDefinition-svc-patient-updated.html) should be used.  
A SVC_Patient should:
* set the [identifier.assigner](StructureDefinition-svc-patient-definitions.html#Patient.identifier.assigner) to reference the [SVC Organization](StructureDefinition-svc-organization.html) resource associated to the PHA via the WHO Smart Directory

"""
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains Identifier_URN 1..
* identifier[Identifier_URN].system 1..
* identifier[Identifier_URN].value 1..
* identifier[Identifier_URN].system = "urn:uuid"
* identifier[Identifier_URN].assigner 1.. MS

