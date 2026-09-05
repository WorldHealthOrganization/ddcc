# Lab Test - Sample Origin - Mapping DIVOC to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Sample Origin - Mapping DIVOC to ICD-11**

## ConceptMap: Lab Test - Sample Origin - Mapping DIVOC to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-sample-origin-divoc-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-21 | *Computable Name*:LabTestSampleOriginDivocToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-sample-origin-divoc-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-sample-origin-divoc-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestSampleOriginDivocToIcd11ConceptMap",
  "title" : "Lab Test - Sample Origin - Mapping DIVOC to ICD-11",
  "status" : "draft",
  "date" : "2023-02-21",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "[Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-divoc",
    "target" : "http://id.who.int/icd/release/11/mms",
    "element" : [{
      "code" : "Nasopharyngeal Swab",
      "display" : "Nasopharyngeal Swab",
      "target" : [{
        "code" : "JAM.AH.XF",
        "display" : "Nasopharyngeal swab",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Throat swab",
      "display" : "Throat swab",
      "target" : [{
        "code" : "KAR.AH.XF",
        "display" : "Oropharyngeal swab",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Nasal Swab",
      "display" : "Nasal Swab",
      "target" : [{
        "code" : "JAM.AH.XF",
        "display" : "Nasopharyngeal swab",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "nasopharyngeal swab",
      "display" : "Nasopharyngeal Swab",
      "target" : [{
        "code" : "JAM.AH.XF",
        "display" : "Nasopharyngeal swab",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "throat swab",
      "display" : "Throat swab",
      "target" : [{
        "code" : "KAR.AH.XF",
        "display" : "Oropharyngeal swab",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "nasal swab",
      "display" : "Nasal Swab",
      "target" : [{
        "code" : "JAM.AH.XF",
        "display" : "Nasopharyngeal swab",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
