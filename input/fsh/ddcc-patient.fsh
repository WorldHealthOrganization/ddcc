Profile:      DDCCPatient
Parent:       Patient
//Parent:       Patient-uv-ips //this forces gender.  not good.
Id:           DDCCPatient
Title:        "DDCC Patient"
Description:	"""
A DDCCPatient should:
* if the [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier] is set then the value of [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier.assigner) should be set to reference the [DDCC Organization](StructureDefinition-DDCCOrganization.html) resource associated to the PHA.
* obeys who-ddcc-patient-1

"""
* identifier 0.. MS
* identifier.system MS
* identifier.value MS
* name 1..* MS
* name ^slicing.discriminator[+].type = #value
* name ^slicing.discriminator[=].path = "use"
* name ^slicing.discriminator[+].type = #exists
* name ^slicing.discriminator[=].path = "text"
* name ^slicing.rules = #open
* name contains ddccName 1..* MS
* name[ddccName] ^label = "Name"
* name[ddccName].text 1.. MS
* name[ddccName].use  1..1 MS
* name[ddccName].use = #official
* gender 0..1 
* gender ^label = "Sex"
* birthDate 0..1 MS
* birthDate ^label = "Date of birth"
