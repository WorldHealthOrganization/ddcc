# ConceptMap from ICD-11 to SNOMED CT for Vaccines - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICD-11 to SNOMED CT for Vaccines**

## ConceptMap: ConceptMap from ICD-11 to SNOMED CT for Vaccines (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-vaccines | *Version*:1.0.0 |
| Draft as of 2021-04-23 | *Computable Name*:ICD11_SNOMED_CT_COVID19_vaccines |

 
Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Vaccines 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-icd11-sct-vaccines",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-vaccines",
  "version" : "1.0.0",
  "name" : "ICD11_SNOMED_CT_COVID19_vaccines",
  "title" : "ConceptMap from ICD-11 to SNOMED CT for Vaccines",
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
  "description" : "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Vaccines",
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
      "code" : "XM68M6",
      "target" : [{
        "code" : "28531000087107",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM0GQ8",
      "target" : [{
        "code" : "1119349007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1NL1",
      "target" : [{
        "code" : "1157024006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM9QW8",
      "target" : [{
        "code" : "29061000087103",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
