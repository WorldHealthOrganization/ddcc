Alias: $LOINC = http://loinc.org


Profile:        SHF_Composition
Parent:         Composition
Id:             shf-composition
Title:          "SHF Composition"
Description:    """ 
Describes the logical structure for the Smart Health Folder which contains the Smart Health Certificates (SHCs).  An [SHF Composition](StructureDefinition-shf-composition.html) should:
 * be accessible from a [SHC Registry Service](StructureDefintion-shc-registry.html)  as located via the [WHO Public Key Directory](actors.html#who-pkd) for the PHA referenced in the [author](StructureDefinition-shf-composition-definitions.html#Composition.agent).
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SHF Composition"
* title = "International Certificate of Vaccination or Prophylaxis"
* author MS
* author only Reference(SHC_Organization)
* subject 1..1 MS
* subject.reference 1.. MS
* subject only Reference(SHC_Patient)
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

* section contains sectionHealthCertificates  1..1 MS
* section[sectionHealthCertificates] ^short = "Certificates Section"
* section[sectionHealthCertificates] ^definition = "Certiciates Section  lists the relvant Smart Health Certificates received by the patient"
* section[sectionHealthCertificates].code 1.. MS
* section[sectionHealthCertificates].code  = $LOINC#80571-3
* section[sectionHealthCertificates].entry 1.. MS
* section[sectionHealthCertificates].entry ^slicing.discriminator[0].type = #type
* section[sectionHealthCertificates].entry ^slicing.discriminator[0].path = "$this"
* section[sectionHealthCertificates].entry ^slicing.rules = #open
* section[sectionHealthCertificates].entry ^short = "Patient's Smarth Health Certificates"
* section[sectionHealthCertificates].entry ^definition = "It contains the patient's current Smart Health Certifactes."
* section[sectionHealthCertificates].entry contains shcEntry 0.. MS
* section[sectionHealthCertificates].entry[shcEntry] only Reference(SHC_Composition)


