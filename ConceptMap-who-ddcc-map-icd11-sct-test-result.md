# ConceptMap from ICD-11 to SNOMED CT for Test Result - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICD-11 to SNOMED CT for Test Result**

## ConceptMap: ConceptMap from ICD-11 to SNOMED CT for Test Result (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-test-result | *Version*:1.0.0 |
| Draft as of 2021-12-16 | *Computable Name*:ICD11_SNOMED_CT_COVID19_Test_Result |

 
Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Test Result 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-icd11-sct-test-result",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-sct-test-result",
  "version" : "1.0.0",
  "name" : "ICD11_SNOMED_CT_COVID19_Test_Result",
  "title" : "ConceptMap from ICD-11 to SNOMED CT for Test Result",
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
  "description" : "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Test Result",
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
      "code" : "RA01.0",
      "target" : [{
        "code" : "1240581000000104",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "QA02",
      "target" : [{
        "code" : "1240591000000102",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
