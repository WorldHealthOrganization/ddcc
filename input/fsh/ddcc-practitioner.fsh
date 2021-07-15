Profile:        DDCCPractitioner
Parent:         Practitioner
Id:             DDCCPractitioner
Title:          "DDCC Practitioner"
Description:    """ 
Container for an DDCC Practitioner, which is a Practitioner authorized by the PHA to 
vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).

"""
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains shcIdentifier 1..
* identifier[shcIdentifier].system 1.. 
* identifier[shcIdentifier].value 1.. 
* identifier[shcIdentifier].assigner 1.. 
* identifier[shcIdentifier].assigner only Reference(DDCCOrganization)



Profile:        DDCCPractitionerRole
Parent:         PractitionerRole
Id:             DDCCPractitionerRole
Title:          "DDCC Practitioner Role"
Description:    """ 
Association of an [DDCC Practitioner](StructureDefinition-DDCCPractitioner.html) to a 
managing [DDCC Organization](StructureDefinition-DDCCOrgaznization.html), indicating 
that an DDCC Practitioner is authorized by the public health authority (PHA) to 
vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).

"""
* practitioner only Reference(DDCCPractitioner)
* organization only Reference(DDCCOrganization)
