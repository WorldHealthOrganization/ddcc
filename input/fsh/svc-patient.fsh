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


* ^abstract = true


Profile:        SVC_Patient_New
Parent: 	SVC_Patient
Id:		svc-patient-new
Title:		"New SVC Patient"
Description:	"""
Correponds to the demographic information on the front page of a new Paper SVC.

When a new Paper SVC is issued, the following rules apply:
  * a [Person.identifier](StructureDefinition-svc-patient-definitions.html#Patient.identifier)  entry is generated with system set to 'urn:uuid' and value set to a v4 UUID.
"""
* ^abstract = false

Profile:        SVC_Patient_Updated
Parent: 	SVC_Patient
Id:		svc-patient-updated
Title:		"Updated SVC Patient"
Description:	"""
Correponds to the demographic information on the front page of a Paper SVC which is reissued by a PHA.  Written demographic content from the Paper SVC should be used to populate the Updated SVC Patient.
"""
* name 1..
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.ordered = true
* name contains Name_Official 1..1 MS
* name[Name_Official].use = #official
* name[Name_Official].text 1..
* birthDate 1..1
* ^abstract = false

