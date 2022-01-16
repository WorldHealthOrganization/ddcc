Profile:        DDCCDiagnosticReport
Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips
Id:             DDCCDiagnosticReport
Title:          "DDCC Diagnostic Report"
Description:    """ 
A DDCC Diagnostic Report contains the content corresponding to a row in the Test 
Events section of a Paper DDCC. While this is not a further profile of the International
Patient Summary (IPS) DiagnosticReport resouce, this is intended to map into an IPS 
DiagnosticReport resource.
"""

* status = #final (exactly)
* code 1..1 MS
* code from WHO_DDCC_Type_of_Test_COVID_19
* subject 1..1 MS
//* subject only Reference(DDCCPatient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* specimen 1..1 MS
* specimen only Reference(DDCCSpecimen)
* result 1..1 MS
* result only Reference(DDCCObservation)