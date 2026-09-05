# DDCCPatientChinese - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCPatientChinese**

## Example Patient: DDCCPatientChinese

Profile: [DDCC Patient](StructureDefinition-DDCCPatient.md)

奥卢斯·阿杰里乌斯(official) (no stated gender), DoB: 2003-03-03

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DDCCPatientChinese",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
  },
  "name" : [{
    "use" : "official",
    "text" : "奥卢斯·阿杰里乌斯"
  }],
  "birthDate" : "2003-03-03"
}

```
