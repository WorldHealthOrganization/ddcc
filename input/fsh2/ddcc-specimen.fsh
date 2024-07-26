Profile:        DDCCSpecimen
Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips
Id:             DDCCSpecimen
Title:          "DDCC Specimen"
Description:    """ 
A DDCC Specimen contains the content corresponding to a row in the Test 
Events section of a Paper DDCC. While this is not a further profile of the International
Patient Summary (IPS) Specimen resouce, this is intended to map into an IPS 
Specimen resource.
"""

* subject 1..1 MS
//* subject only Reference(DDCCPatient)
* collection 1..1 MS
* collection.collectedDateTime 1..1 MS
* type 1..1 MS
* type from  WHO_DDCC_Sample_Origin_COVID_19
