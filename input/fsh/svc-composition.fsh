Alias: $LOINC = http://loinc.org

Profile:        SVC_Composition
Parent:         Composition
Id:             svc-composition
Title:          "SVC Composition"
Description:    """ 
Describes the logical structure for the health content contained in a SVC.  An [SVC Composition](StructureDefinition-svc-composition.html) should:
 * be accessible from a SVC Registry as located via the WHO Public Key Directory for the PHA referenced in the [author](StructureDefinition-svc-composition-definitions.html#Composition.agent).
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SVC Composition"
* title = "International Certificate of Vaccination or Prophylaxis"
* author MS
* author only Reference(SVC_Organization)
* subject 1..1 MS
* subject.reference 1.. MS
* subject only Reference(SVC_Patient)
* status MS
* identifier 1.. MS
* identifier.system MS
* identifier.value MS
* type = $LOINC#82593-5
* type ^short = "Kind of composition (\"Smart Vaccination Certificate\")"
* type ^definition = "Specifies that this composition refers to a Smart vaccination Certificate (Loinc \"11369-6\")"
* title MS
* title ^short = "Smart Vaccination Certificate"
* section 1..
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[0].valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section ^short = "Sections composing the SVC"
* section ^definition = "The root of the sections that make up the SVC composition."
* section contains Section_Vaccinations  1..1 MS

* section[Section_Vaccinations] ^short = "Vaccinations Section"
* section[Section_Vaccinations] ^definition = "Vaccination Section lists the relvant vaccinations received by the patient"
* section[Section_Vaccinations].code 1.. MS
* section[Section_Vaccinations].code  = $LOINC#11369-6
* section[Section_Vaccinations].entry 1.. MS
* section[Section_Vaccinations].entry ^slicing.discriminator[0].type = #type
* section[Section_Vaccinations].entry ^slicing.discriminator[0].path = ""
* section[Section_Vaccinations].entry ^slicing.rules = #open
* section[Section_Vaccinations].entry ^short = "Patient's vaccination history."
* section[Section_Vaccinations].entry ^definition = "It defines the patient's current vaccination  history.\r\nThe primary use case for the Vaccination Section is to enable communication of a patient's vaccination status.\r\nIt may contain the entire vaccination history that is relevant to the period of time being summarized. This entry shall be used to document that no information about vaccination is available, or that no vaccinations are known."
* section[Section_Vaccinations].entry contains Section_Vaccinations_Entry 0.. MS
* section[Section_Vaccinations].entry[Section_Vaccinations_Entry] only Reference(SVC_Immunization)



