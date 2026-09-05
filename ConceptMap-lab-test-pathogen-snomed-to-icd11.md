# Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11**

## ConceptMap: Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-pathogen-snomed-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-20 | *Computable Name*:LabTestPathogenSnomedToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Pathogen - COVID-19 - SNOMED CT](ValueSet-lab-test-pathogen-covid19-snomed.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-pathogen-snomed-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-pathogen-snomed-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestPathogenSnomedToIcd11ConceptMap",
  "title" : "Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11",
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
  "description" : "[Lab Test - Pathogen - COVID-19 - SNOMED CT](ValueSet-lab-test-pathogen-covid19-snomed.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://snomed.info/sct",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "840533007",
      "display" : "Severe acute respiratory syndrome coronavirus 2 (organism)",
      "target" : [{
        "code" : "XN109",
        "display" : "SARS-CoV-2",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
