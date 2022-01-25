Profile:        DDCCTest
Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips
Id:             DDCCTest
Title:          "DDCC Test"
Description:    """ 
A DDCC Test contains the content corresponding to a row in the Test 
Events section of a Paper DDCC. While this is not a further profile of the International
Patient Summary (IPS) Device resouce, this is intended to map into an IPS 
Device resource.
"""

* manufacturer 1..1 MS
* patient 1..1 MS
//* patient only Reference(DDCCPatient)
* type 1..1 MS
* type from WHO_DDCC_Type_of_Test_COVID_19
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains pathogen 1..1 and brand 0..1
* property[pathogen].type = DDCC_Device_Property_CodeSystem#pathogen
* property[pathogen].valueCode 1..1
* property[pathogen].valueCode from WHO_DDCC_Agent_Targeted_COVID_19
* property[pathogen].valueQuantity 0..0
* property[brand].type = DDCC_Device_Property_CodeSystem#brand
* property[brand].valueCode 1..1 
* property[brand].valueQuantity 0..0