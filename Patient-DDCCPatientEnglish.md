# DDCCPatientEnglish - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCPatientEnglish**

## Example Patient: DDCCPatientEnglish

Profile: [DDCC Patient](StructureDefinition-DDCCPatient.md)

Aulus Agerius(official) (no stated gender), DoB: 2003-03-03

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DDCCPatientEnglish",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
  },
  "name" : [{
    "use" : "official",
    "text" : "Aulus Agerius"
  }],
  "birthDate" : "2003-03-03"
}

```
