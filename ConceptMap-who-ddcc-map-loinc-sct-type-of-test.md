# ConceptMap from LOINC to SNOMED CT for Type of Test - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from LOINC to SNOMED CT for Type of Test**

## ConceptMap: ConceptMap from LOINC to SNOMED CT for Type of Test (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-loinc-sct-type-of-test | *Version*:1.0.0 |
| Draft as of 2021-12-16 | *Computable Name*:LOINC_SNOMED_CT_COVID19_Type_of_Test |

 
Rule-based mappings between LOINC and SNOMED CT for COVID-19 Type of Test 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-loinc-sct-type-of-test",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-loinc-sct-type-of-test",
  "version" : "1.0.0",
  "name" : "LOINC_SNOMED_CT_COVID19_Type_of_Test",
  "title" : "ConceptMap from LOINC to SNOMED CT for Type of Test",
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
  "description" : "Rule-based mappings between LOINC and SNOMED CT for COVID-19 Type of Test",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://loinc.org",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "LP6464-4",
      "target" : [{
        "code" : "117244003",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "LP217198-3",
      "target" : [{
        "code" : "414464004",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
