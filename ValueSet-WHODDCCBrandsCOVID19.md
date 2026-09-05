# WHO DDCC Brand List (COVID-19) - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO DDCC Brand List (COVID-19)**

## ValueSet: WHO DDCC Brand List (COVID-19) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/WHODDCCBrandsCOVID19 | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:WHODDCCBrandsCOVID19 |

 
WHO DDCC Brand List (COVID-19) from [ICD 11](https://icd.who.int/browse11) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "WHODDCCBrandsCOVID19",
  "url" : "http://smart.who.int/ddcc/ValueSet/WHODDCCBrandsCOVID19",
  "version" : "1.0.0",
  "name" : "WHODDCCBrandsCOVID19",
  "title" : "WHO DDCC Brand List (COVID-19)",
  "status" : "draft",
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "WHO DDCC Brand List (COVID-19) from [ICD 11](https://icd.who.int/browse11)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://id.who.int/icd11/mms",
      "concept" : [{
        "code" : "XM7HT3",
        "display" : "CoronaVac®"
      },
      {
        "code" : "XM8866",
        "display" : "BBIBP-CorV"
      },
      {
        "code" : "XM9TQ1",
        "display" : "KCONVAC"
      },
      {
        "code" : "XM1G90",
        "display" : "Covaxin"
      },
      {
        "code" : "XM85P5",
        "display" : "Covi-Vac"
      },
      {
        "code" : "XM9FQ7",
        "display" : "Hayat-Vax"
      },
      {
        "code" : "XM97N6",
        "display" : "QazVac"
      },
      {
        "code" : "XM2YG8",
        "display" : "COVIran Barakat"
      },
      {
        "code" : "XM4YL8",
        "display" : "AstraZeneca"
      },
      {
        "code" : "XM97T2",
        "display" : "Covishield®"
      },
      {
        "code" : "XM6QV1",
        "display" : "Janssen"
      },
      {
        "code" : "XM1AG7",
        "display" : "Convidecia"
      },
      {
        "code" : "XM5ZJ4",
        "display" : "Gam-Covid-Vac"
      },
      {
        "code" : "XM5QM6",
        "display" : "Sputnik-Light"
      },
      {
        "code" : "XM3PG0",
        "display" : "Soberana-02"
      },
      {
        "code" : "XM4EC8",
        "display" : "MVC-COV1901"
      },
      {
        "code" : "XM6SZ8",
        "display" : "EpiVacCorona"
      },
      {
        "code" : "XM52P3",
        "display" : "ZyCov-D"
      },
      {
        "code" : "XM8NQ0",
        "display" : "Comirnaty®"
      },
      {
        "code" : "XM3DT5",
        "display" : "Moderna"
      }]
    }]
  }
}

```
