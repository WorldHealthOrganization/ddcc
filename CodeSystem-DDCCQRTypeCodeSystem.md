# DDCC QR Category Usage Codes - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC QR Category Usage Codes**

## CodeSystem: DDCC QR Category Usage Codes 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/DDCCQRTypeCodeSystem | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCQRTypeCodeSystem |

 
Possible formats available for QR usage. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DDCC QR Type Codes](ValueSet-DDCCQRTypeValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DDCCQRTypeCodeSystem",
  "url" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRTypeCodeSystem",
  "version" : "1.0.0",
  "name" : "DDCCQRTypeCodeSystem",
  "title" : "DDCC QR Category Usage Codes",
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
  "description" : "Possible formats available for QR usage.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "who",
    "display" : "WHO DDCC"
  },
  {
    "code" : "dcc",
    "display" : "EU DCC"
  },
  {
    "code" : "icao",
    "display" : "ICAO"
  },
  {
    "code" : "au",
    "display" : "AU"
  },
  {
    "code" : "shc",
    "display" : "SMART Health Card"
  },
  {
    "code" : "divoc",
    "display" : "DIVOC"
  }]
}

```
