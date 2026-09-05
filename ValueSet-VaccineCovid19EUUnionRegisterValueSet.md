# Vaccine - COVID-19 - EU Union Register of Medicinial Products - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccine - COVID-19 - EU Union Register of Medicinial Products**

## ValueSet: Vaccine - COVID-19 - EU Union Register of Medicinial Products (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/VaccineCovid19EUUnionRegisterValueSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:VaccineCovid19EUUnionRegisterValueSet |

 
Union Register of medicinal products for vaccines with EU-wide authorisation. The Union Register is found at [https://ec.europa.eu/health/documents/community-register/html/index_en.htm](https://ec.europa.eu/health/documents/community-register/html/index_en.htm). However, the contents of this ValueSet are based on v1.14 (2023-01-25) of the [EU DCC value set guidelines](https://health.ec.europa.eu/system/files/2023-01/eu-dcc-value-sets_en.pdf). 

 **References** 

* [Payload for Certificate - EU DCC CBOR Web Token Logical Model](StructureDefinition-HCertDCC.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "VaccineCovid19EUUnionRegisterValueSet",
  "url" : "http://smart.who.int/ddcc/ValueSet/VaccineCovid19EUUnionRegisterValueSet",
  "version" : "1.0.0",
  "name" : "VaccineCovid19EUUnionRegisterValueSet",
  "title" : "Vaccine - COVID-19 - EU Union Register of Medicinial Products",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Union Register of medicinal products for vaccines with EU-wide authorisation. The Union Register is found at <https://ec.europa.eu/health/documents/community-register/html/index_en.htm>. However, the contents of this ValueSet are based on v1.14 (2023-01-25) of the [EU DCC value set guidelines](https://health.ec.europa.eu/system/files/2023-01/eu-dcc-value-sets_en.pdf).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://ec.europa.eu/health/documents/community-register/html/",
      "concept" : [{
        "code" : "EU/1/20/1528",
        "display" : "Comirnaty"
      },
      {
        "code" : "EU/1/20/1507",
        "display" : "Spikevax"
      },
      {
        "code" : "EU/1/21/1529",
        "display" : "Vaxzevria"
      },
      {
        "code" : "EU/1/20/1525",
        "display" : "Jcovden"
      },
      {
        "code" : "CVnCoV",
        "display" : "CVnCoV"
      },
      {
        "code" : "NVX-CoV2373",
        "display" : "NVX-CoV2373"
      },
      {
        "code" : "Sputnik-V",
        "display" : "Sputnik V"
      },
      {
        "code" : "Convidecia",
        "display" : "Convidecia"
      },
      {
        "code" : "EpiVacCorona",
        "display" : "EpiVacCorona"
      },
      {
        "code" : "BBIBP-CorV",
        "display" : "BBIBP-CorV"
      },
      {
        "code" : "Inactivated-SARS-CoV-2-Vero-Cell",
        "display" : "Inactivated SARS-CoV-2 (Vero Cell)"
      },
      {
        "code" : "CoronaVac",
        "display" : "CoronaVac"
      },
      {
        "code" : "Covaxin",
        "display" : "Covaxin"
      },
      {
        "code" : "Covishield",
        "display" : "Covishield"
      },
      {
        "code" : "Covid-19-recombinant",
        "display" : "Covid-19 (recombinant)"
      },
      {
        "code" : "R-COVI",
        "display" : "R-COVI"
      },
      {
        "code" : "CoviVac",
        "display" : "CoviVac"
      },
      {
        "code" : "Sputnik-Light",
        "display" : "Sputnik Light"
      },
      {
        "code" : "Hayat-Vax",
        "display" : "Hayat-Vax"
      },
      {
        "code" : "Abdala",
        "display" : "Abdala"
      },
      {
        "code" : "WIBP-CorV",
        "display" : "WIBP-CorV"
      },
      {
        "code" : "MVC-COV1901",
        "display" : "MVC COVID-19 vaccine"
      },
      {
        "code" : "EU/1/21/1618",
        "display" : "Nuvaxovid"
      },
      {
        "code" : "Covovax",
        "display" : "Covovax"
      },
      {
        "code" : "Vidprevtyn",
        "display" : "Vidprevtyn"
      },
      {
        "code" : "VLA2001",
        "display" : "VLA2001"
      },
      {
        "code" : "EpiVacCorona-N",
        "display" : "EpiVacCorona- N"
      },
      {
        "code" : "Sputnik-M",
        "display" : "Sputnik M"
      },
      {
        "code" : "Covid-19-adsorvida-inativada",
        "display" : "Vacina adsorvida covid-19 (inativada)"
      },
      {
        "code" : "NVSI-06-08",
        "display" : "NVSI-06-08"
      },
      {
        "code" : "YS-SC2-010",
        "display" : "YS-SC2-010"
      },
      {
        "code" : "SCTV01C",
        "display" : "SCTV01C"
      },
      {
        "code" : "Covifenz",
        "display" : "Covifenz"
      },
      {
        "code" : "AZD2816",
        "display" : "AZD2816"
      },
      {
        "code" : "Soberana-02",
        "display" : "Soberana 02"
      },
      {
        "code" : "Soberana-Plus",
        "display" : "Soberana Plus"
      },
      {
        "code" : "EU/1/21/1624",
        "display" : "COVID-19 Vaccine Valneva"
      },
      {
        "code" : "EU/1/21/1580",
        "display" : "VidPrevtyn Beta"
      }]
    }]
  }
}

```
