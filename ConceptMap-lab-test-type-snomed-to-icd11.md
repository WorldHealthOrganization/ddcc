# Lab Test - Pathogen - Mapping SNOMED CT to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Pathogen - Mapping SNOMED CT to ICD-11**

## ConceptMap: Lab Test - Pathogen - Mapping SNOMED CT to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-type-snomed-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-20 | *Computable Name*:LabTestTypeSnomedToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Type - Generic - LOINC](ValueSet-lab-test-type-loinc.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-type-snomed-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-snomed-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestTypeSnomedToIcd11ConceptMap",
  "title" : "Lab Test - Pathogen - Mapping SNOMED CT to ICD-11",
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
  "description" : "[Lab Test - Type - Generic - LOINC](ValueSet-lab-test-type-loinc.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://loinc.org",
    "target" : "http://id.who.int/icd/release/11/mms",
    "element" : [{
      "code" : "LP6464-4",
      "display" : "Nucliec acid amplification with probe detection",
      "target" : [{
        "code" : "1334426561",
        "display" : "Viral nucleic acid amplification test or NAAT",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "LP217198-3",
      "display" : "Rapid immunoassay",
      "target" : [{
        "code" : "2056159157",
        "display" : "Rapid immunoassay detecting viral proteins or Ag-RDT",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
