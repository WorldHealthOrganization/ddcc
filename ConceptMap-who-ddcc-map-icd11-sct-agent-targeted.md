# ConceptMap from ICD-11 to SNOMED CT for Agent Targeted - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICD-11 to SNOMED CT for Agent Targeted**

## ConceptMap: ConceptMap from ICD-11 to SNOMED CT for Agent Targeted (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-agent-targeted | *Version*:1.0.0 |
| Draft as of 2021-12-16 | *Computable Name*:ICD11_SNOMED_CT_COVID19_Agent_Targeted |

 
Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Agent Targeted 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-icd11-sct-agent-targeted",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-agent-targeted",
  "version" : "1.0.0",
  "name" : "ICD11_SNOMED_CT_COVID19_Agent_Targeted",
  "title" : "ConceptMap from ICD-11 to SNOMED CT for Agent Targeted",
  "status" : "draft",
  "experimental" : true,
  "date" : "2021-12-16",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Agent Targeted",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://id.who.int/icd11/mms",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "XN109",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XN0HL",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN4Q7",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN5BQ",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN8V6",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN1GK",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN3ZE",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN2V4",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN4Q1",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN3UD",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN9L8",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XN6AM",
      "target" : [{
        "code" : "840533007",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
