# ConceptMap from SNOMED CT to ICHI for Specimen Origin - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from SNOMED CT to ICHI for Specimen Origin**

## ConceptMap: ConceptMap from SNOMED CT to ICHI for Specimen Origin (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-sct-ichi-specimen-origin | *Version*:1.0.0 |
| Draft as of 2022-03-22 | *Computable Name*:SNOMED_CT_ICHI_COVID19_Specimen_Origin |

 
Rule-based mappings between SNOMED CT and ICHI for COVID-19 Specimen Origin 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-sct-ichi-specimen-origin",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-sct-ichi-specimen-origin",
  "version" : "1.0.0",
  "name" : "SNOMED_CT_ICHI_COVID19_Specimen_Origin",
  "title" : "ConceptMap from SNOMED CT to ICHI for Specimen Origin",
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
  "description" : "Rule-based mappings between SNOMED CT and ICHI for COVID-19 Specimen Origin",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://snomed.info/sct",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "258500001",
      "target" : [{
        "code" : "JAM.AH.XF",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "461911000124106",
      "target" : [{
        "code" : "KAR.AH.XF",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "472881004",
      "target" : [{
        "code" : "KAR.AH.XF",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "472901003",
      "target" : [{
        "code" : "JAE.AH.XF",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "119342007",
      "target" : [{
        "code" : "KAZ.AH.XD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "119297000",
      "target" : [{
        "code" : "DIA.AH.XA",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "119361006",
      "target" : [{
        "code" : "DIA.AH.XA",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "119364003",
      "target" : [{
        "code" : "DIA.AH.XA",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "122592007",
      "target" : [{
        "code" : "DIA.AH.XA",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
