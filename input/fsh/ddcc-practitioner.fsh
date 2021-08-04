Profile:        DDCCPractitioner
Parent:         Practitioner
Id:             DDCCPractitioner
Title:          "DDCC Practitioner"
Description:    """ 
Container for an DDCC Practitioner, which is a Practitioner authorized by the PHA to 
vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).

"""
* identifier 1.. MS
* identifier ^slicing.discriminator[+].type = #value
* identifier ^slicing.discriminator[=].path = "use"
* identifier ^slicing.discriminator[+].type = #profile
* identifier ^slicing.discriminator[=].path = "assigner.resolve()"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains ddccIdentifier 1..
* identifier[ddccIdentifier].use 1..1 MS
* identifier[ddccIdentifier].use = #official
* identifier[ddccIdentifier].system 1.. MS
* identifier[ddccIdentifier].value 1.. MS 
* identifier[ddccIdentifier].assigner 1.. MS 
* identifier[ddccIdentifier].assigner only Reference(DDCCOrganization)




Profile:        DDCCPractitionerRole
Parent:         PractitionerRole
Id:             DDCCPractitionerRole
Title:          "DDCC Practitioner Role"
Description:    """ 
Association of an [DDCC Practitioner](StructureDefinition-DDCCPractitioner.html) to a 
managing [DDCC Organization](StructureDefinition-DDCCOrganization.html), indicating 
that an DDCC Practitioner is authorized by the public health authority (PHA) to 
vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).

"""
* practitioner only Reference(DDCCPractitioner)
* organization only Reference(DDCCOrganization)
