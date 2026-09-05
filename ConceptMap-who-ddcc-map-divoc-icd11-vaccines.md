# ConceptMap from DIVOC to ICD-11 for Vaccines - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from DIVOC to ICD-11 for Vaccines**

## ConceptMap: ConceptMap from DIVOC to ICD-11 for Vaccines (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-divoc-icd11-vaccines | *Version*:1.0.0 |
| Draft as of 2022-11-22 | *Computable Name*:DIVOC_ICD11_COVID19_vaccines |

 
Rule-based mappings between DIVOC and ICD-11 for COVID-19 Vaccines 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-divoc-icd11-vaccines",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-divoc-icd11-vaccines",
  "version" : "1.0.0",
  "name" : "DIVOC_ICD11_COVID19_vaccines",
  "title" : "ConceptMap from DIVOC to ICD-11 for Vaccines",
  "status" : "draft",
  "experimental" : true,
  "date" : "2022-11-22",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Rule-based mappings between DIVOC and ICD-11 for COVID-19 Vaccines",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://smart.who.int/ddcc/DIVOC",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "DIVOC001",
      "target" : [{
        "code" : "XM6AT1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DIVOC002",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC003",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC004",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DIVOC005",
      "target" : [{
        "code" : "XM0GQ8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC006",
      "target" : [{
        "code" : "XM0CX4",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC007",
      "target" : [{
        "code" : "XM0GQ8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC008",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC009",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC010",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC011",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC012",
      "target" : [{
        "code" : "XM5JC5",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIVOC013",
      "target" : [{
        "code" : "XM5JC5",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
