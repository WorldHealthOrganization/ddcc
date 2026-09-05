# Lab Test - Sample Origin - Mapping ICAO to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Sample Origin - Mapping ICAO to ICD-11**

## ConceptMap: Lab Test - Sample Origin - Mapping ICAO to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-sample-origin-icao-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-20 | *Computable Name*:LabTestSampleOriginIcaoToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-sample-origin-icao-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-sample-origin-icao-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestSampleOriginIcaoToIcd11ConceptMap",
  "title" : "Lab Test - Sample Origin - Mapping ICAO to ICD-11",
  "status" : "draft",
  "date" : "2023-02-20",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "[Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-icao",
    "target" : "http://id.who.int/icd/release/11/mms",
    "element" : [{
      "code" : "nasopharyngeal",
      "display" : "Sampling method: nasopharyngeal",
      "target" : [{
        "code" : "JAM.AH.XF",
        "display" : "Specimen collection from nasopharynx",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "oropharyngeal",
      "display" : "Sampling method: oropharyngeal",
      "target" : [{
        "code" : "KAR.AH.XF",
        "display" : "Specimen collection from oropharynx",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "saliva",
      "display" : "Sampling method: saliva",
      "target" : [{
        "code" : "KAZ.AH.XD",
        "display" : "Specimen collection of saliva",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "blood",
      "display" : "Sampling method: blood",
      "target" : [{
        "code" : "DIA.AH.XA",
        "display" : "Specimen collection of blood",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
