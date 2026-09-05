# ConceptMap from ICD-11 to DIVOC for Vaccines - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICD-11 to DIVOC for Vaccines**

## ConceptMap: ConceptMap from ICD-11 to DIVOC for Vaccines (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-divoc-vaccines | *Version*:1.0.0 |
| Draft as of 2022-11-22 | *Computable Name*:ICD11_DIVOC_COVID19_vaccines |

 
Rule-based mappings between ICD-11 and DIVOC for COVID-19 Vaccines 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-icd11-divoc-vaccines",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-divoc-vaccines",
  "version" : "1.0.0",
  "name" : "ICD11_DIVOC_COVID19_vaccines",
  "title" : "ConceptMap from ICD-11 to DIVOC for Vaccines",
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
  "description" : "Rule-based mappings between ICD-11 and DIVOC for COVID-19 Vaccines",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://id.who.int/icd11/mms",
    "target" : "http://smart.who.int/ddcc/DIVOC",
    "element" : [{
      "code" : "XM6AT1",
      "target" : [{
        "code" : "DIVOC001",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1NL1",
      "target" : [{
        "code" : "DIVOC002",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC009",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC010",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      }]
    },
    {
      "code" : "XM9QW8",
      "target" : [{
        "code" : "DIVOC003",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC004",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC008",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC011",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      }]
    },
    {
      "code" : "XM0GQ8",
      "target" : [{
        "code" : "DIVOC005",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC007",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      }]
    },
    {
      "code" : "XM0CX4",
      "target" : [{
        "code" : "DIVOC006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM5JC5",
      "target" : [{
        "code" : "DIVOC012",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "DIVOC013",
        "equivalence" : "narrower",
        "comment" : "DIVOC codes are brands and ICD11 is the generic type."
      }]
    }]
  }]
}

```
