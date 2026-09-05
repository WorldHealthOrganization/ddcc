# WHO Vaccine List (COVID-19) - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO Vaccine List (COVID-19)**

## ValueSet: WHO Vaccine List (COVID-19) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19 | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:WHODDCCVaccinesCOVID19 |

 
WHO Vaccine List (COVID-19) from [ICD 11](https://icd.who.int/browse11) 

 **References** 

* [Certificate - DIVOC Verifiable Credential Logical Model](StructureDefinition-CertDIVOC.md)
* [Certificate - ICAO Visible Digital Seal Logical Model](StructureDefinition-CertICAO.md)
* [DDCC Core Data Set Logical Model for Vaccination Status](StructureDefinition-DDCCCoreDataSetVS.md)
* [DDCC Immunization](StructureDefinition-DDCCImmunization.md)
* [DDCC Immunization Recommendation](StructureDefinition-DDCCImmunizationRecommendation.md)
* [DDCC:VS Core Data Set Questionnaire](Questionnaire-DDCCVSCoreDataSetQuestionnaire.md)

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
  "id" : "WHODDCCVaccinesCOVID19",
  "url" : "http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19",
  "version" : "1.0.0",
  "name" : "WHODDCCVaccinesCOVID19",
  "title" : "WHO Vaccine List (COVID-19)",
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
  "description" : "WHO Vaccine List (COVID-19) from [ICD 11](https://icd.who.int/browse11)",
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
        "code" : "XM68M6",
        "display" : "COVID-19 vaccine"
      },
      {
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus"
      },
      {
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
        "code" : "XM3U61",
        "display" : "Inactivated SARS-CoV-2 vaccine"
      },
      {
        "code" : "XM5DF6",
        "display" : "COVID-19 vaccine, live attenuated virus"
      },
      {
        "code" : "XM9QW8",
        "display" : "COVID-19 vaccine, non-replicating viral vector"
      },
      {
        "code" : "XM4YL8",
        "display" : "COVID-19 Vaccine AstraZeneca"
      },
      {
        "code" : "XM97T2",
        "display" : "Covishield®"
      },
      {
        "code" : "XM6QV1",
        "display" : "COVID-19 Vaccine Janssen"
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
        "code" : "XM0CX4",
        "display" : "COVID-19 vaccine, replicating viral vector"
      },
      {
        "code" : "XM5JC5",
        "display" : "COVID-19 vaccine, virus protein subunit"
      },
      {
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine"
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
        "code" : "XM1J92",
        "display" : "COVID-19 vaccine, virus like particle (VLP)"
      },
      {
        "code" : "XM6AT1",
        "display" : "COVID-19 vaccine, DNA based"
      },
      {
        "code" : "XM52P3",
        "display" : "ZyCov-D"
      },
      {
        "code" : "XM0GQ8",
        "display" : "COVID-19 vaccine, RNA based"
      },
      {
        "code" : "XM8NQ0",
        "display" : "Comirnaty®"
      },
      {
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna"
      }]
    }]
  }
}

```
