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

/*
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "focus"
* section ^slicing.rules = #open
*/


Profile:        DDCCVSComposition
Parent:         DDCCComposition
Id:             DDCCVSComposition
Title:          "DDCC:VS Composition"
Description:    """ 
Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Vaccination Status
(DDCC:VS).  
"""
* category = DDCC_Composition_Category_CodeSystem#ddcc-vs
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "focus"
* section ^slicing.rules = #closed
* section contains vaccination 1..1 MS

* section[vaccination] ^short = "Vaccination Status Section"
* section[vaccination] ^definition = "Vaccination Status Section lists the relvant vaccinations received by the patient"
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus 1..1 MS
* section[vaccination].focus only Reference(DDCCImmunization)
* section[vaccination].entry only Reference(DDCCImmunization or DDCCDocumentReferenceQR or DDCCImmunizationRecommendation)
	

Profile:        DDCCTRComposition
Parent:         DDCCComposition
Id:             DDCCTRComposition
Title:          "DDCC:TR Composition"
Description:    """ 
Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Test Result
(DDCC:TR).  
"""
* category = DDCC_Composition_Category_CodeSystem#ddcc-tr
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "focus"
* section ^slicing.rules = #closed
* section contains testresult 1..1 MS 

* section[testresult] ^short = "Vaccination Test Result Section"
* section[testresult] ^definition = "Vaccination Test Result Section lists the relvant test results received by the patient"
* section[testresult].code = $LOINC#30954-2
* section[testresult].focus 1..1 MS
* section[testresult].focus only Reference(DDCCObservation)
* section[testresult].entry only Reference(DDCCObservation or DDCCDocumentReferenceQR or DDCCTest or DDCCDiagnosticReport or DDCCSpecimen or DDCCProcedure)
	


CodeSystem:     DDCC_Composition_Category_CodeSystem
Id:             DDCC-Composition-Category-CodeSystem
Title:          "DDCC Composition Category Codes"
Description:    "Possible categories available for composition."
* #ddcc-vs      "DDCC:VS"
* #ddcc-tr      "DDCC:TR"

ValueSet:       DDCC_Composition_Category_ValueSet
Id:             DDCC-Composition-Category-ValueSet
Title:          "DDCC Composition Category Codes"
Description: 	"Categorization of DDCC Composition"
* include codes from system DDCC_Composition_Category_CodeSystem

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
* entry ^slicing.rules = #open
* entry contains ddccComposition 1..1
    and ddccPatient 1..1
    and ddccOrganization 1..1
    and ddccQR 0..*
* entry[ddccComposition].resource only DDCCComposition
* entry[ddccPatient].resource only DDCCPatient
* entry[ddccOrganization].resource only DDCCOrganization
* entry[ddccQR].resource only DDCCDocumentReferenceQR
* signature 0..1 MS


Profile:        DDCCVSDocument
Parent:         DDCCDocument
Id:             DDCCVSDocument
Title:          "DDCC:VS Document"
Description:    """ 
A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.html) is a document bundle containing the DDCC:VS.

"""
* entry contains ddccImmunization 1..1
    and ddccImmunizationRecommendation 0..1
* entry[ddccImmunization].resource only DDCCImmunization
* entry[ddccImmunizationRecommendation].resource only DDCCImmunizationRecommendation

Profile:        DDCCTRDocument
Parent:         DDCCDocument
Id:             DDCCTRDocument
Title:          "DDCC:VS Document"
Description:    """ 
A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.html) is a document bundle containing the DDCC:VS.

"""
* entry contains ddccObservation 1..1
    and ddccTest 1..1
    and ddccDiagnosticReport 1..1
    and ddccSpecimen 0..1
    and ddccProcedure 1..1
* entry[ddccObservation].resource only DDCCObservation
* entry[ddccTest].resource only DDCCTest
* entry[ddccDiagnosticReport].resource only DDCCDiagnosticReport
* entry[ddccSpecimen].resource only DDCCSpecimen
* entry[ddccProcedure].resource only DDCCProcedure


Profile:        DDCCDocumentSigned
Parent:         DDCCDocument
Id:             DDCCDocumentSigned
Title:          "DDCC DocumentSigned"
Description:    """ 
A [DDCC Document Signed](StructureDefinition-DDCCDocumentSigned.html) is a document bundle containing the DDCC
that has a digital signature.

"""
* signature 1..1 MS

Profile:        DDCCVSDocumentSigned
Parent:         DDCCVSDocument
Id:             DDCCVSDocumentSigned
Title:          "DDCC:VS DocumentSigned"
Description:    """ 
A [DDCC:VS Document Signed](StructureDefinition-DDCCVSDocumentSigned.html) is a document bundle containing the DDCC:VS
that has a digital signature.

"""
* signature 1..1 MS

Profile:        DDCCTRDocumentSigned
Parent:         DDCCTRDocument
Id:             DDCCTRDocumentSigned
Title:          "DDCC:TR DocumentSigned"
Description:    """ 
A [DDCC:TR Document Signed](StructureDefinition-DDCCTRDocumentSigned.html) is a document bundle containing the DDCC:TR
that has a digital signature.

"""
* signature 1..1 MS



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



