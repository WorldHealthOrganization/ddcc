# Lab Test - Type - Mapping ICAO to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Type - Mapping ICAO to ICD-11**

## ConceptMap: Lab Test - Type - Mapping ICAO to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/lab-test-type-icao-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-20 | *Computable Name*:LabTestTypeIcaoToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Lab Test - Type - ICAO](ValueSet-lab-test-type-icao.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "lab-test-type-icao-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-icao-to-icd11",
  "version" : "1.0.0",
  "name" : "LabTestTypeIcaoToIcd11ConceptMap",
  "title" : "Lab Test - Type - Mapping ICAO to ICD-11",
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
  "description" : "[Lab Test - Type - ICAO](ValueSet-lab-test-type-icao.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://smart.who.int/ddcc/CodeSystem/lab-test-type-icao",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "molecular(PCR)",
      "display" : "Molecular (PCR)",
      "target" : [{
        "code" : "1334426561",
        "display" : "Viral nucleic acid amplification test or NAAT",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "molecular(other)",
      "display" : "Molecular (Other)",
      "target" : [{
        "code" : "2056159157",
        "display" : "Rapid immunoassay detecting viral proteins or Ag-RDT",
        "equivalence" : "narrower"
      }]
    }]
  }]
}

```
