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
* attester 1..1 MS
* attester.mode = #official
* attester.party 1..1 MS
* attester.party only Reference(DDCCOrganization)
* attester.party ^label = "Certificate issuer"
* event 0..1 
* event.period 0..1
* event.period.start ^label = "Certificate valid from"
* event.period.end ^label = "Certificate valid until"

* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "focus"
* section ^slicing.rules = #closed
* section contains
    vaccination 1..1 MS 

* section[vaccination] ^short = "Vaccination Status Section"
* section[vaccination] ^definition = "Vaccination Status Section lists the relvant vaccinations received by the patient"
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus 1..1 MS
* section[vaccination].focus only Reference(DDCCImmunization)
* section[vaccination].entry only Reference(DDCCImmunization or DDCCDocumentReferenceQR or DDCCImmunizationRecommendation)

Profile:        DDCCDocument
Parent:         Bundle
Id:             DDCCDocument
Title:          "DDCC Document"
Description:    """ 
A [DDCC Document](StructureDefinition-DDCCDocument.html) is a document bundle containing the DDCC.

"""
* ^publisher = "World Health Organization (WHO)"
* . MS
* . ^short = "DDCC Document"
* identifier 1.. MS
* type MS
* type = #document
* timestamp MS
* link ^slicing.discriminator.type = #value 
* link ^slicing.discriminator.path = "relation"
* link ^slicing.rules = #open
* link contains hcid 1..1
* link[hcid].relation = "publication"
* link[hcid].url 1..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains ddccComposition 1..1
    and ddccPatient 1..1
    and ddccOrganization 1..1
    and ddccImmunization 1..1
    and ddccImmunizationRecommendation 0..1
    and ddccQR 0..*
* entry[ddccComposition].resource only DDCCComposition
* entry[ddccPatient].resource only DDCCPatient
* entry[ddccOrganization].resource only DDCCOrganization
* entry[ddccImmunization].resource only DDCCImmunization
* entry[ddccImmunizationRecommendation].resource only DDCCImmunizationRecommendation
* entry[ddccQR].resource only DDCCDocumentReferenceQR
* signature 0..1 MS

Profile:        DDCCDocumentReference
Parent:         http://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference
Id:             DDCCDocumentReference
Title:          "DDCC Document Reference"
Description:    """ 
A [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.html) is a 
document reference to a [DDCC Document](StructureDefinition-DDCCDocument.html) 
containing the DDCC.
The content attachment url will point to a DDCC Document.
"""
* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(DDCCPatient)
* date 1..1 MS
* content 1..1 MS
* content.attachment.url 1..1 MS
* content.attachment.hash 0..1 MS

/*

CodeSystem:     DDCC_SectionCode_CodeSystem
Id:             DDCC-SectionCode-CodeSystem
Title:          "DDCC QR SectionCode Usage Codes"
Description:    "Section Codes for DDCC"
* #vaccination  "DDCC: Vaccination Status"
* #test         "DDCC: SARS-CoV-2 Test"
* #recovery     "DDCC: Recovery Status"

ValueSet:       DDCC_SectionCode_ValueSet
Id:             DDCC-SectionCode-ValueSet
Description:   "Content section codes for DDCC."
* include codes from system DDCC_SectionCode_CodeSystem

*/



