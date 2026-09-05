# ConceptMap from ICHI to LOINC for Type of Test - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICHI to LOINC for Type of Test**

## ConceptMap: ConceptMap from ICHI to LOINC for Type of Test (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-ichi-loinc-type-of-test | *Version*:1.0.0 |
| Draft as of 2022-03-22 | *Computable Name*:ICHI_LOINC_COVID19_Type_of_Test |

 
Rule-based mappings between ICHI and LOINC for COVID-19 Type of Test 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-ichi-loinc-type-of-test",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-ichi-loinc-type-of-test",
  "version" : "1.0.0",
  "name" : "ICHI_LOINC_COVID19_Type_of_Test",
  "title" : "ConceptMap from ICHI to LOINC for Type of Test",
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
  "description" : "Rule-based mappings between ICHI and LOINC for COVID-19 Type of Test",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://id.who.int/icd11/mms",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "1334426561",
      "target" : [{
        "code" : "LP6464-4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2056159157",
      "target" : [{
        "code" : "LP217198-3",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
