# DDCCPatientRussian - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCPatientRussian**

## Example Patient: DDCCPatientRussian

Profile: [DDCC Patient](StructureDefinition-DDCCPatient.md)

Авл Агерий(official) (no stated gender), DoB: 2003-03-03

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DDCCPatientRussian",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
  },
  "name" : [{
    "use" : "official",
    "text" : "Авл Агерий"
  }],
  "birthDate" : "2003-03-03"
}

```
