Profile:        DDCCComposition
Parent:         Composition
Id:             DDCCComposition
Title:          "DDCC Composition"
Description:    """ 
Describes the logical structure for a Digital Documentation of COVID-19 Certificates 
(DDCC).  
"""
* ^publisher = "World Health Organization (WHO)"
* ^version = "DDCC-0.1" 
* identifier 1.. MS
* identifier ^label = "Certificate Identifier"
* identifier.system 1.. MS
* identifier.value 1.. MS
* status MS
* type = $LOINC#82593-5
* type ^short = "Kind of composition (\"DDCC\")"
* type ^definition = "Specifies that this composition refers to a DDCC"
* title 1.. MS
* title = "Digital Documentation of COVID-19 Certificate (DDCC)"
* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(DDCCPatient)
* author MS
* author only Reference(DDCCOrganization)
* author ^label = "Certificate issuer"
* event 0..1 
* event.period 0..1
* event.period.start ^label = "Certificate valid from"
* event.period.end ^label = "Certificate valid until"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "focus"
* section contains
    vaccination 1..* MS 
    and test 0..*
    and recovery 0..*

* section[vaccination] ^short = "Vaccination Status Section"
* section[vaccination] ^definition = "Vaccination Status Section lists the relvant vaccinations received by the patient"
* section[vaccination].code = DDCC_SectionCode_CodeSystem#vaccination
* section[vaccination].focus 1..1 MS
* section[vaccination].focus only Reference(DDCCImmunization)
* section[vaccination].entry only Reference(DDCCDocumentReferenceQR)

* section[test] ^short = "SARS-CoV-2 Test Section"
* section[test] ^definition = "SARS-CoV-2 Test Section lists the relvant tests done on the patient"
* section[test].code = DDCC_SectionCode_CodeSystem#test

* section[recovery] ^short = "Recovery Status Section"
* section[recovery] ^definition = "Recovery Status Section lists the relvant recovery status details of the patient"
* section[recovery].code = DDCC_SectionCode_CodeSystem#test

CodeSystem:     DDCC_SectionCode_CodeSystem
Id:             DDCC-SectionCode-CodeSystem
Title:          "SHC QR SectionCode Usage Codes"
Description:    "Section Codes for DDCC"
* #vaccination  "DDCC: Vaccination Status"
* #test         "DDCC: SARS-CoV-2 Test"
* #recovery     "DDCC: Recovery Status"

ValueSet:       DDCC_SectionCode_ValueSet
Id:             DDCC-SectionCode-ValueSet
Description:   "Content section codes for DDCC."
* include codes from system DDCC_SectionCode_CodeSystem

