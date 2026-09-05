# Lab Test - Qualitative Result - Mapping ICAO to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Qualitative Result - Mapping ICAO to ICD-11**

## ConceptMap: Lab Test - Qualitative Result - Mapping ICAO to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-qual-result-icao-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-15 | *Computable Name*:LabTestQualResultIcaoToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Qualitative Result - ICAO](ValueSet-lab-test-qual-result-icao.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-qual-result-icao-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-qual-result-icao-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestQualResultIcaoToIcd11ConceptMap",
  "title" : "Lab Test - Qualitative Result - Mapping ICAO to ICD-11",
  "status" : "draft",
  "date" : "2023-02-15",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "[Lab Test - Qualitative Result - ICAO](ValueSet-lab-test-qual-result-icao.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://smart.who.int/ddcc/CodeSystem/lab-test-qual-result-icao",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "positive",
      "display" : "Positive",
      "target" : [{
        "code" : "RA01.0",
        "display" : "COVID-19, virus identified",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "negative",
      "display" : "Negative",
      "target" : [{
        "code" : "RA01.1",
        "display" : "COVID-19, virus not identified",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
