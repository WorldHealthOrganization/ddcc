# DDCCPatientSpanish - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCPatientSpanish**

## Example Patient: DDCCPatientSpanish

Profile: [DDCC Patient](StructureDefinition-DDCCPatient.md)

Aulo Agerio(official) (no stated gender), DoB: 2003-03-03

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DDCCPatientSpanish",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
  },
  "name" : [{
    "use" : "official",
    "text" : "Aulo Agerio"
  }],
  "birthDate" : "2003-03-03"
}

```
