# DDCC QR Format Codes - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC QR Format Codes**

## CodeSystem: DDCC QR Format Codes 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCQRFormatCodeSystem |

 
Possible formats available for QR data. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DDCC QR Format Codes](ValueSet-DDCCQRFormatValueSet.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DDCCQRFormatCodeSystem",
  "url" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem",
  "version" : "1.0.0",
  "name" : "DDCCQRFormatCodeSystem",
  "title" : "DDCC QR Format Codes",
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
  "description" : "Possible formats available for QR data.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "image",
    "display" : "Image"
  },
  {
    "code" : "serialized",
    "display" : "Serialized QR Content"
  },
  {
    "code" : "pdf",
    "display" : "PDF version of the QR image"
  }]
}

```
