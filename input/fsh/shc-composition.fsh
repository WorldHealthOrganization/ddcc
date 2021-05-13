Profile:        SHC_Composition
Parent:         Composition
Id:             shc-composition
Title:          "SHC Composition"
Description:    """ 
Describes the logical structure for a Smart Health Certificate.  
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SHC Composition"
* title 1.. MS
* ^abstract = true
* author MS
* author only Reference(SHC_Organization)
* subject 1..1 MS
* subject.reference 1.. MS
* subject only Reference(SHC_Patient)
* status MS
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* category 1..1 MS
* category from SHC_Category_ValueSet (extensible)



CodeSystem:     SHC_Category_CodeSystem
Id:             SHC-Category-CodeSystem
Title:          "SHC QR Category Usage Codes"
Description:    "Categorization of Smart Health Certificates"
* #svc-covid19          "Smart Vaccination Certificate - COVID19"

ValueSet:       SHC_Category_ValueSet
Id:             SHC-Category-ValueSet
* include codes from system SHC_Category_CodeSystem
* Description:   """
Content categorization of Smart Health Certificates (SHC)
 
""" 
