# ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted**

## ConceptMap: ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-disease-targeted | *Version*:1.0.0 |
| Draft as of 2021-04-23 | *Computable Name*:ICD_11_SNOMED_CT_COVID19_Disease |

 
Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Disease or Agent Targeted 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-icd11-sct-disease-targeted",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-disease-targeted",
  "version" : "1.0.0",
  "name" : "ICD_11_SNOMED_CT_COVID19_Disease",
  "title" : "ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted",
  "status" : "draft",
  "experimental" : true,
  "date" : "2021-04-23",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Disease or Agent Targeted",
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
      "code" : "RA01",
      "target" : [{
        "code" : "840539006",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
