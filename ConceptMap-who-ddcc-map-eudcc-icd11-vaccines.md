# ConceptMap from EU DCC to ICD-11 for Vaccines - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from EU DCC to ICD-11 for Vaccines**

## ConceptMap: ConceptMap from EU DCC to ICD-11 for Vaccines (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-eudcc-icd11-vaccines | *Version*:1.0.0 |
| Draft as of 2022-11-22 | *Computable Name*:EU_DCC_ICD11_COVID19_vaccines |

 
Rule-based mappings between EU DCC and ICD11 for COVID-19 Vaccines 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-eudcc-icd11-vaccines",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-eudcc-icd11-vaccines",
  "version" : "1.0.0",
  "name" : "EU_DCC_ICD11_COVID19_vaccines",
  "title" : "ConceptMap from EU DCC to ICD-11 for Vaccines",
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
  "description" : "Rule-based mappings between EU DCC and ICD11 for COVID-19 Vaccines",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "https://ec.europa.eu/health/documents/community-register/html/",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "Covaxin",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Covishield",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Sputnik-V",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "EU/1/20/1528",
      "target" : [{
        "code" : "XM0GQ8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "EU/1/20/1525",
      "target" : [{
        "code" : "XM0CX4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EU/1/20/1507",
      "target" : [{
        "code" : "XM0GQ8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "EU/1/21/1529",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "CoronaVac",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "BBIBP-CorV",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Convidecia",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "NVX-CoV2373",
      "target" : [{
        "code" : "XM5JC5",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
