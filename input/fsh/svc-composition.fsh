Alias: $LOINC = http://loinc.org


Profile:        SHF_Composition
Parent:         Composition
Id:             shf-composition
Title:          "SHF Composition"
Description:    """ 
Describes the logical structure for the Smart Health Folder which contains the SVC.  An [SHF Composition](StructureDefinition-shf-composition.html) should:
 * be accessible from a SVC Registry as located via the WHO Public Key Directory for the PHA referenced in the [author](StructureDefinition-shf-composition-definitions.html#Composition.agent).
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SHF Composition"
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
* type = $LOINC#80563-0
* type ^short = "Kind of composition (\"Smart Health Folder\")"
* type ^definition = "Specifies that this composition refers to a Smart Health Folder"
* title MS
* title ^short = "Smart Health Folder"
* section 1..
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[0].valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section ^short = "Sections composing the SHF"
* section ^definition = "The root of the sections that make up the SHF Composition."



* section contains Section_Health_Certificates  1..1 MS
* section[Section_Health_Certificates] ^short = "Certificates Section"
* section[Section_Health_Certificates] ^definition = "Certiciates Section  lists the relvant Smart Health Certificates received by the patient"
* section[Section_Health_Certificates].code 1.. MS
* section[Section_Health_Certificates].code  = $LOINC#80571-3
* section[Section_Health_Certificates].entry 1.. MS
* section[Section_Health_Certificates].entry ^slicing.discriminator[0].type = #type
* section[Section_Health_Certificates].entry ^slicing.discriminator[0].path = "$this"
* section[Section_Health_Certificates].entry ^slicing.rules = #open
* section[Section_Health_Certificates].entry ^short = "Patient's Smarth Health Certificates"
* section[Section_Health_Certificates].entry ^definition = "It contains the patient's current Smart Health Certifactes."
* section[Section_Health_Certificates].entry contains Section_Health_Certificates_Entry 0.. MS
* section[Section_Health_Certificates].entry[Section_Health_Certificates_Entry] only Reference(SVC_Composition)



Profile:        SHC_Composition
Parent:         Composition
Id:             shc-composition
Title:          "SHC Composition"
Description:    """ 
Describes the logical structure for a smart health certificate.  
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SHC Composition"
* title 1.. MS
* ^abstract = true
* author MS
* author only Reference(SVC_Organization)
* subject 1..1 MS
* subject.reference 1.. MS
* subject only Reference(SVC_Patient)
* status MS
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS


Profile:        SVC_Composition
Parent:         SHC_Composition
Id:             svc-composition
Title:          "SVC Composition"
Description:    """ 
Describes the logical structure for the health content contained in a SVC.  .
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SVC Composition"
* title = "International Certificate of Vaccination or Prophylaxis"
* type = $LOINC#82593-5
* type ^short = "Kind of composition (\"Smart Vaccination Certificate\")"
* type ^definition = "Specifies that this composition refers to a Smart Vaccination Certificate"
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
* section ^definition = "The root of the sections that make up the SVC Composition."

* section contains Section_Vaccinations  1..1 MS
* section[Section_Vaccinations] ^short = "Vaccinations Section"
* section[Section_Vaccinations] ^definition = "Vaccination Section lists the relvant vaccinations received by the patient"
* section[Section_Vaccinations].code 1.. MS
* section[Section_Vaccinations].code  = $LOINC#11369-6
* section[Section_Vaccinations].entry 1.. MS
* section[Section_Vaccinations].entry ^slicing.discriminator[0].type = #type
* section[Section_Vaccinations].entry ^slicing.discriminator[0].path = "$this"
* section[Section_Vaccinations].entry ^slicing.rules = #open
* section[Section_Vaccinations].entry ^short = "Patient's vaccination history."
* section[Section_Vaccinations].entry ^definition = "It contains the patient's current vaccination  history.\r\nThe primary use case for the Vaccination Section is to enable communication of a patient's vaccination status.\r\nIt may contain the entire vaccination history that is relevant to the period of time being summarized. This entry shall be used to document that no information about vaccination is available, or that no vaccinations are known."
* section[Section_Vaccinations].entry contains Section_Vaccinations_Entry 0.. MS
* section[Section_Vaccinations].entry[Section_Vaccinations_Entry] only Reference(SVC_Immunization)