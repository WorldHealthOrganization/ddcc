# ConceptMap from ICD-11 to EU DCC for Vaccines - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConceptMap from ICD-11 to EU DCC for Vaccines**

## ConceptMap: ConceptMap from ICD-11 to EU DCC for Vaccines (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-eudcc-vaccines | *Version*:1.0.0 |
| Draft as of 2022-11-22 | *Computable Name*:ICD11_EU_DCC_COVID19_vaccines |

 
Rule-based mappings between ICD-11 and EU DCC for COVID-19 Vaccines 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "who-ddcc-map-icd11-eudcc-vaccines",
  "url" : "http://smart.who.int/ddcc/ConceptMap/who-ddcc-map-icd11-eudcc-vaccines",
  "version" : "1.0.0",
  "name" : "ICD11_EU_DCC_COVID19_vaccines",
  "title" : "ConceptMap from ICD-11 to EU DCC for Vaccines",
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
  "description" : "Rule-based mappings between ICD-11 and EU DCC for COVID-19 Vaccines",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "group" : [{
    "source" : "http://id.who.int/icd11/mms",
    "target" : "https://ec.europa.eu/health/documents/community-register/html/",
    "element" : [{
      "code" : "XM0GQ8",
      "target" : [{
        "code" : "EU/1/20/1528",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "EU/1/20/1507",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      }]
    },
    {
      "code" : "XM9QW8",
      "target" : [{
        "code" : "EU/1/21/1529",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "Covishield",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "Sputnik-V",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "Convidecia",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      }]
    },
    {
      "code" : "XM0CX4",
      "target" : [{
        "code" : "EU/1/20/1525",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1NL1",
      "target" : [{
        "code" : "Covaxin",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "CoronaVac",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      },
      {
        "code" : "BBIBP-CorV",
        "equivalence" : "narrower",
        "comment" : "EU codes are brands and ICD11 is the generic type."
      }]
    },
    {
      "code" : "XM5JC5",
      "target" : [{
        "code" : "NVX-CoV2373",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
