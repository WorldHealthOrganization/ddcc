Profile:        DDCCProcedure
Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Id:             DDCCProcedure
Title:          "DDCC Procedure"
Description:    """ 
A DDCC Procedure contains the content corresponding to a row in the Test 
Events section of a Paper DDCC. While this is not a further profile of the International
Patient Summary (IPS) Procedure resouce, this is intended to map into an IPS 
Procedure resource.
"""

* extension contains DDCCCountryOfEvent named country 1..1 MS
* extension[country] ^label = "Country of vaccination"
* status = #completed (exactly)
* subject 1..1 MS
//* subject only Reference(DDCCPatient)
* performed[x] 1..1 MS
* performed[x] only dateTime
* location 0..1 MS
* report 1..1 MS
* report only Reference(DDCCDiagnosticReport)
* usedReference 1..1 MS
* usedReference only Reference(DDCCTest)