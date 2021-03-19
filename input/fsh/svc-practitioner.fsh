Profile:        SVC_Practitioner
Parent:         Practitioner
Id:             svc-practitioner
Title:          "SVC Practitioner"
Description:    """ 
Container for an SVC Practitioner, which is a Practitioner authorized by the PHA to vaccinate an [SVC Patient](StructureDefinition-svc-patient.html).

"""
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains SVC_Identifier 1..
* identifier[SVC_Identifier].system 1.. MS
* identifier[SVC_Identifier].value 1.. MS
* identifier[SVC_Identifier].assigner 1.. MS



Profile:        SVC_PractitionerRole
Parent:         PractitionerRole
Id:             svc-practitioner-role
Title:          "SVC Practitioner Role"
Description:    """ 
Association of an [SVC Practitioner](StructureDefinition-svc-practitioner-role.html) to a managing [SVC Organization](StructureDefinition-svc-orgaznization.html), indicating that an SVC Practitioner is authorized by the public health authority (PHA) to vaccinate an [SVC Patient](StructureDefinition-svc-patient.html).

"""
* practitioner only Reference(SVC_Practitioner)
* organization only Reference(SVC_Organization)
