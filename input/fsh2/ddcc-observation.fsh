Profile:        DDCCObservation
Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
//Parent:         Observation
Id:             DDCCObservation
Title:          "DDCC Observation"
Description:    """ 
A DDCC Observation contains the content corresponding to a row in the Test 
Events section of a Paper DDCC. While this is not a further profile of the International
Patient Summary (IPS) Observation resouce, this is intended to map into an IPS 
Observation resource.
"""

* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code 1..1 MS 
* code ^label = "Type of test"
* subject 1..1 MS
//* subject only Reference(DDCCPatient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^label = "Date and time of sample collection"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] ^label = "Test result"
* method 0..1 MS
* method from  WHO_DDCC_Sample_Origin_COVID_19
