Profile:        SVC-Patient
Parent: 	Patient
Id:		svc-patient
Title:		"SVC Patient"
Description:	"""
Correponds to the demographic information on the front page of the Paper SVC. This profile is not intended to be instantiated directly, rather a New SVC Patient or an Updated SVC Patient should be used.
"""
* identifier 1..
* identifier[0].system 1..1
* identifier[0].value 1..1
* identifier[0].system = "urn:uuid"



Profile:        SVC-Patient-New
Parent: 	SVC-Patient
Id:		svc-patient-new
Title:		"New SVC Patient"
Description:	"""
Correponds to the demographic information on the front page of a new Paper SVC.

When a new Paper SVC is issued, the following rules apply:
  * a Person.identifier entry is generated with system set to 'urn:uuid' and value set to a v4 UUID.
"""


Profile:        SVC-Patient-Updated
Parent: 	SVC-Patient
Id:		svc-patient-updated
Title:		"Updated SVC Patient"
Description:	"""
Correponds to the demographic information on the front page of a Paper SVC which is reissued by a PHA.  Written demographic content from the Paper SVC should be used to populate the Updated SVC Patient.
"""
* name 1..
* name[0].use = #official
* name[0].text 1..
* birthDate 1..1


Profile:        SVC-Patient-Ingested
Parent: 	SVC-Patient
Id:		svc-patient-ingested
Title:		"Ingested SVC Patient"
Description:	"""
Correponds to the demographic information on the front page a of Paper SVC which is ingested by a PHA from an external PHA.  

The following rules apply to an Ingested SVC Patient:
 * the identifier in the SVC Patient from the external SVC should be preserved in the Ingested SVC Patient
 * demographic content from the extenal SVC may be used to populate the Ingested SVC Patient.  

"""
* name 1..
* name[0].use = #official
* name[0].text 1..
* birthDate 1..1
