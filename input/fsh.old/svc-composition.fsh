Profile:        SVC_Composition
Parent:         SHC_Composition
Id:             svc-composition
Title:          "SVC Composition"
Description:    """ 
Describes the logical structure for the health content contained in a Smart Vaccination Certificate (SVC).
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SVC Composition"
* title = "International Certificate of Vaccination or Prophylaxis"
* type = $LOINC#82593-5
* type ^short = "Kind of composition (\"Smart Vaccination Certificate\")"
* type ^definition = "Specifies that this composition refers to a Smart Vaccination Certificate"
* title MS
* title ^short = "Smart Vaccination Certificate"
* category = #svc-covid19
* section 1..
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[0].valueString = "Section"
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section ^short = "Sections composing the SVC"
* section ^definition = "The root of the sections that make up the SVC Composition."

* section contains sectionVaccinations  1..1 MS
* section[sectionVaccinations] ^short = "Vaccinations Section"
* section[sectionVaccinations] ^definition = "Vaccination Section lists the relvant vaccinations received by the patient"
* section[sectionVaccinations].code 1.. MS
* section[sectionVaccinations].code  = $LOINC#11369-6
* section[sectionVaccinations].entry 1.. MS
* section[sectionVaccinations].entry ^slicing.discriminator[0].type = #type
* section[sectionVaccinations].entry ^slicing.discriminator[0].path = "$this"
* section[sectionVaccinations].entry ^slicing.rules = #open
* section[sectionVaccinations].entry ^short = "Patient's vaccination history."
* section[sectionVaccinations].entry ^definition = "It contains the patient's current vaccination  history.\r\nThe primary use case for the Vaccination Section is to enable communication of a patient's vaccination status.\r\nIt may contain the entire vaccination history that is relevant to the period of time being summarized. This entry shall be used to document that no information about vaccination is available, or that no vaccinations are known."
* section[sectionVaccinations].entry contains sectionVaccinationsEntry 0.. MS
* section[sectionVaccinations].entry[sectionVaccinationsEntry] only Reference(SVC_Immunization)
