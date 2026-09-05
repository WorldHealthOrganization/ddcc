# Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11**

## ConceptMap: Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-type-divoc-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-21 | *Computable Name*:LabTestTypeDivocToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Type - DIVOC](ValueSet-lab-test-type-divoc.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-type-divoc-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-divoc-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestTypeDivocToIcd11ConceptMap",
  "title" : "Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11",
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
  "description" : "[Lab Test - Type - DIVOC](ValueSet-lab-test-type-divoc.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://smart.who.int/ddcc/CodeSystem/lab-test-type-divoc",
    "target" : "http://id.who.int/icd/release/11/mms",
    "element" : [{
      "code" : "RT-PCR",
      "display" : "RT-PCR",
      "target" : [{
        "code" : "1334426561",
        "display" : "Viral nucleic acid amplification test or NAAT",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Rapid Antigen Test (RAT)",
      "display" : "Rapid Antigen Test (RAT)",
      "target" : [{
        "code" : "2056159157",
        "display" : "Rapid immunoassay detecting viral proteins or Ag-RDT",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "rt-pcr",
      "display" : "RT-PCR",
      "target" : [{
        "code" : "1334426561",
        "display" : "Viral nucleic acid amplification test or NAAT",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "rapid antigen test (rat)",
      "display" : "Rapid Antigen Test (RAT)",
      "target" : [{
        "code" : "2056159157",
        "display" : "Rapid immunoassay detecting viral proteins or Ag-RDT",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
