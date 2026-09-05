# DDCC Composition Category Codes - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Composition Category Codes**

## CodeSystem: DDCC Composition Category Codes 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/DDCCCompositionCategoryCodeSystem | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCCompositionCategoryCodeSystem |

 
Possible categories available for composition. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DDCC Composition Category Codes](ValueSet-DDCCCompositionCategoryValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DDCCCompositionCategoryCodeSystem",
  "url" : "http://smart.who.int/ddcc/CodeSystem/DDCCCompositionCategoryCodeSystem",
  "version" : "1.0.0",
  "name" : "DDCCCompositionCategoryCodeSystem",
  "title" : "DDCC Composition Category Codes",
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
  "description" : "Possible categories available for composition.",
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
    "code" : "ddcc-vs",
    "display" : "DDCC:VS"
  },
  {
    "code" : "ddcc-tr",
    "display" : "DDCC:TR"
  }]
}

```
