# Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11**

## ConceptMap: Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-pathogen-divoc-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-21 | *Computable Name*:LabTestPathogenDivocToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Pathogen - DIVOC](ValueSet-lab-test-pathogen-divoc.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-pathogen-divoc-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-pathogen-divoc-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestPathogenDivocToIcd11ConceptMap",
  "title" : "Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11",
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
  "description" : "[Lab Test - Pathogen - DIVOC](ValueSet-lab-test-pathogen-divoc.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://smart.who.int/ddcc/CodeSystem/lab-test-pathogen-divoc",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "COVID-19",
      "display" : "Concerns the detection of SARS-CoV-2 infection.",
      "target" : [{
        "code" : "XN109",
        "display" : "SARS-CoV-2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "covid-19",
      "display" : "Concerns the detection of SARS-CoV-2 infection.",
      "target" : [{
        "code" : "XN109",
        "display" : "SARS-CoV-2",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
