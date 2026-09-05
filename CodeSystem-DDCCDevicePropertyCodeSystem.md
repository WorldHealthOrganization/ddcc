# DDCC Device Property Codes - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Device Property Codes**

## CodeSystem: DDCC Device Property Codes 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/DDCCDevicePropertyCodeSystem | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCDevicePropertyCodeSystem |

 
Possible properties available for devices. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DDCC Device Property Codes](ValueSet-DDCCDevicePropertyValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DDCCDevicePropertyCodeSystem",
  "url" : "http://smart.who.int/ddcc/CodeSystem/DDCCDevicePropertyCodeSystem",
  "version" : "1.0.0",
  "name" : "DDCCDevicePropertyCodeSystem",
  "title" : "DDCC Device Property Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Possible properties available for devices.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "pathogen",
    "display" : "Pathogen Targeted"
  },
  {
    "code" : "brand",
    "display" : "Test Brand"
  }]
}

```
