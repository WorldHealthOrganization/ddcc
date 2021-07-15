Profile:        SHC_Patient
Parent: 	Patient
//Parent: 	Patient-uv-ips //this forces gender.  not good.
Id:		shc-patient
Title:		"SHC Patient"
Description:	"""
An SHC_Patient should:
* if the [identifier.assigner](StructureDefinition-shc-patient-definitions.html#Patient.identifier] is set then the value of [identifier.assigner](StructureDefinition-shc-patient-definitions.html#Patient.identifier.assigner) should be set to reference the [SHC Organization](StructureDefinition-shc-organization.html) resource associated to the PHA via the [WHO Public Key Directory](actors.html#who-pkd)
* obeys who-shc-patient-1

"""
* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains shcIdentifier 0.. MS
* identifier[shcIdentifier].system 1.. MS
* identifier[shcIdentifier].value 1.. MS
* identifier[shcIdentifier].assigner 1.. MS
* identifier[shcIdentifier].assigner only Reference(SHC_Organization)


Invariant:      who-shc-patient-1
Description:    "Patient.identifier OR (Patient.name AND Patient.birthDate) SHALL be present"
Expression:     "identifier.exists() or ( name.exists() and birthDate.exists() )"
Severity:       #error