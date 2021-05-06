Profile:        SHC_Practitioner
Parent:         Practitioner
Id:             shc-practitioner
Title:          "SHC Practitioner"
Description:    """ 
Container for an SHC Practitioner, which is a Practitioner authorized by the PHA to vaccinate an [SHC Patient](StructureDefinition-shc-patient.html).

"""
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains SHC_Identifier 1..
* identifier[SHC_Identifier].system 1.. MS
* identifier[SHC_Identifier].value 1.. MS
* identifier[SHC_Identifier].assigner 1.. MS 
* identifier[SHC_Identifier].assigner only Reference(SHC_Organization)



Profile:        SVC_PractitionerRole
Parent:         PractitionerRole
Id:             svc-practitioner-role
Title:          "SVC Practitioner Role"
Description:    """ 
Association of an [SVC Practitioner](StructureDefinition-svc-practitioner-role.html) to a managing [SVC Organization](StructureDefinition-svc-orgaznization.html), indicating that an SVC Practitioner is authorized by the public health authority (PHA) to vaccinate an [SVC Patient](StructureDefinition-svc-patient.html).

"""
* practitioner only Reference(SHC_Practitioner)
* organization only Reference(SHC_Organization)
