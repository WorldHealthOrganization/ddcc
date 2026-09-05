# DDCCPatientArabic - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCPatientArabic**

## Example Patient: DDCCPatientArabic

Profile: [DDCC Patient](StructureDefinition-DDCCPatient.md)

أولوس أجيريوس(official) (no stated gender), DoB: 2003-03-03

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DDCCPatientArabic",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
  },
  "name" : [{
    "use" : "official",
    "text" : "أولوس أجيريوس"
  }],
  "birthDate" : "2003-03-03"
}

```
