# ConceptMap from ICHI to SNOMED CT for Specimen Origin - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICHI to SNOMED CT for Specimen Origin**

## ConceptMap: ConceptMap from ICHI to SNOMED CT for Specimen Origin (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-ichi-sct-specimen-origin | *Version*:1.0.0 |
| Draft as of 2022-03-22 | *Computable Name*:ICHI_SNOMED_CT_COVID19_Specimen_Origin |

 
Rule-based mappings between ICHI and SNOMED CT for COVID-19 Specimen Origin 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-ichi-sct-specimen-origin",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-ichi-sct-specimen-origin",
  "version" : "1.0.0",
  "name" : "ICHI_SNOMED_CT_COVID19_Specimen_Origin",
  "title" : "ConceptMap from ICHI to SNOMED CT for Specimen Origin",
  "status" : "draft",
  "experimental" : true,
  "date" : "2022-03-22",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Rule-based mappings between ICHI and SNOMED CT for COVID-19 Specimen Origin",
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
      "code" : "JAM.AH.XF",
      "target" : [{
        "code" : "258500001",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "KAR.AH.XF",
      "target" : [{
        "code" : "461911000124106",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "KAR.AH.XF",
      "target" : [{
        "code" : "472881004",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "JAE.AH.XF",
      "target" : [{
        "code" : "472901003",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "KAZ.AH.XD",
      "target" : [{
        "code" : "119342007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DIA.AH.XA",
      "target" : [{
        "code" : "119297000",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIA.AH.XA",
      "target" : [{
        "code" : "119361006",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIA.AH.XA",
      "target" : [{
        "code" : "119364003",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DIA.AH.XA",
      "target" : [{
        "code" : "122592007",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
