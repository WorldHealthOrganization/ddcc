# ConceptMap from CVX to ICD-11 for Vaccines - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from CVX to ICD-11 for Vaccines**

## ConceptMap: ConceptMap from CVX to ICD-11 for Vaccines (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-cvx-icd11-vaccines | *Version*:1.0.0 |
| Draft as of 2022-05-23 | *Computable Name*:ICD11_SNOMED_CT_COVID19_vaccines |

 
Rule-based mappings between CVX and ICD-11 and for COVID-19 Vaccines 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-cvx-icd11-vaccines",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-cvx-icd11-vaccines",
  "version" : "1.0.0",
  "name" : "ICD11_SNOMED_CT_COVID19_vaccines",
  "title" : "ConceptMap from CVX to ICD-11 for Vaccines",
  "status" : "draft",
  "experimental" : true,
  "date" : "2022-05-23",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Rule-based mappings between CVX and ICD-11 and for COVID-19 Vaccines",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://hl7.org/fhir/sid/cvx",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "208",
      "target" : [{
        "code" : "XM0GQ8",
        "equivalence" : "equivalent"
      }]
    }],
    "unmapped" : {
      "mode" : "provided"
    }
  }]
}

```
