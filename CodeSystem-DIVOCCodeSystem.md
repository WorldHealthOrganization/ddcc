# COVID-19 Vaccine Codes for DIVOC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **COVID-19 Vaccine Codes for DIVOC**

## CodeSystem: COVID-19 Vaccine Codes for DIVOC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/DIVOCCodeSystem | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DIVOCCodeSystem |

 
COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [COVID-19 Vaccine Codes for DIVOC](ValueSet-DIVOCValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DIVOCCodeSystem",
  "url" : "http://smart.who.int/ddcc/CodeSystem/DIVOCCodeSystem",
  "version" : "1.0.0",
  "name" : "DIVOCCodeSystem",
  "title" : "COVID-19 Vaccine Codes for DIVOC",
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
  "description" : "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [{
    "code" : "DIVOC001",
    "display" : "Zycov-D"
  },
  {
    "code" : "DIVOC002",
    "display" : "Covaxin"
  },
  {
    "code" : "DIVOC003",
    "display" : "Covishield"
  },
  {
    "code" : "DIVOC004",
    "display" : "Sputnik V"
  },
  {
    "code" : "DIVOC005",
    "display" : "Pfizer-BioNTech or Comirnaty"
  },
  {
    "code" : "DIVOC006",
    "display" : "Janssen"
  },
  {
    "code" : "DIVOC007",
    "display" : "Moderna or Modema or Spikevax"
  },
  {
    "code" : "DIVOC008",
    "display" : "AstraZeneca or Vaxzevria"
  },
  {
    "code" : "DIVOC009",
    "display" : "Sinovac or Coronavac"
  },
  {
    "code" : "DIVOC010",
    "display" : "BBIBP- CorV or Sinopharm"
  },
  {
    "code" : "DIVOC011",
    "display" : "Convidecia"
  },
  {
    "code" : "DIVOC012",
    "display" : "Corbevax"
  },
  {
    "code" : "DIVOC013",
    "display" : "Novavax/Covovax NVX - CoV2373"
  }]
}

```
