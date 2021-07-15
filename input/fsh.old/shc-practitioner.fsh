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
* identifier contains shcIdentifier 1..
* identifier[shcIdentifier].system 1.. MS
* identifier[shcIdentifier].value 1.. MS
* identifier[shcIdentifier].assigner 1.. MS 
* identifier[shcIdentifier].assigner only Reference(SHC_Organization)



Profile:        SHC_PractitionerRole
Parent:         PractitionerRole
Id:             shc-practitioner-role
Title:          "SHC Practitioner Role"
Description:    """ 
Association of an [SHC Practitioner](StructureDefinition-shc-practitioner-role.html) to a managing [SHC Organization](StructureDefinition-shc-orgaznization.html), indicating that an SHC Practitioner is authorized by the public health authority (PHA) to vaccinate an [SHC Patient](StructureDefinition-shc-patient.html).

"""
* practitioner only Reference(SHC_Practitioner)
* organization only Reference(SHC_Organization)
