Profile:        DDCCFolder
Parent:         http://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder
Title:          "DDCC Folder"
Description:    """
DDCC Folder of the Paper Certificate
"""

* extension[designationType] ^slicing.discriminator[+].type = #value
* extension[designationType] ^slicing.discriminator[=].path = "valueCodeableConcept.coding.system"
* extension[designationType] ^slicing.discriminator[+].type = #value
* extension[designationType] ^slicing.discriminator[=].path = "valueCodeableConcept.coding.code"
* extension[designationType] ^slicing.rules = #open
* extension[designationType] contains ddccDesignation 1..1
* extension[designationType][ddccDesignation].valueCodeableConcept 1..1
* extension[designationType][ddccDesignation].valueCodeableConcept.coding 1..1
* extension[designationType][ddccDesignation].valueCodeableConcept.coding = DDCC_Folder_DesignationType_Codesystem#ddcc

* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(DDCCPatient)
* entry.item only Reference(DDCCDocumentReference)



CodeSystem:     DDCC_Folder_DesignationType_Codesystem
Id:             DDCC-Folder-DesignationType
Title:          "DDCC Designation Types for Folder"
Description:    "DDCC Designation Types to use for DDCC Folders."
* #ddcc         "DDCC"

ValueSet:       DDCC_Folder_DesignationType_ValueSet
Id:             DDCC-Folder-DesignationType
Title:          "DDCC DesignationTypes for Folder"
Description: 	"DDCC Designation Types ValueSet for DDCC Folders."
* include codes from system DDCC_Folder_DesignationType_Codesystem