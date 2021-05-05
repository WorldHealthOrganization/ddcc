Profile:        SVC_Patient
Parent: 	Patient
//Parent: 	Patient-uv-ips //this forces gender.  not good.
Id:		svc-patient
Title:		"SVC Patient"
Description:	"""
Corresponds to the demographic information on the front page of the a paper Smart Vaccination Certificate (SVC)

An SVC_Patient should:
* set the [identifier.assigner](StructureDefinition-svc-patient-definitions.html#Patient.identifier.assigner) to reference the [SVC Organization](StructureDefinition-svc-organization.html) resource associated to the PHA via the WHO Public Key Directory

"""
* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains SVC_Identifier 0.. MS
* identifier[SVC_Identifier].system 1.. MS
* identifier[SVC_Identifier].value 1.. MS
* identifier[SVC_Identifier].assigner 1.. MS
* identifier[SVC_Identifier].assigner only Reference(SVC_Organization)


Instance:     SVC-Patient-Example
InstanceOf:   SVC_Patient
Usage:        #example

* name[+].text = "Felix Cat"
* birthDate = "2000-01-02"

