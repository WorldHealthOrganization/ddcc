# Lab Test - Pathogen - COVID-19 - SNOMED CT - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Pathogen - COVID-19 - SNOMED CT**

## ValueSet: Lab Test - Pathogen - COVID-19 - SNOMED CT (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/LabTestPathogenCovid19SnomedValueSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:LabTestPathogenCovid19SnomedValueSet |

 
This is a one-time snapshot of the allowed values for pathogens in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation. 

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
  "id" : "LabTestPathogenCovid19SnomedValueSet",
  "url" : "http://smart.who.int/ddcc/ValueSet/LabTestPathogenCovid19SnomedValueSet",
  "version" : "1.0.0",
  "name" : "LabTestPathogenCovid19SnomedValueSet",
  "title" : "Lab Test - Pathogen - COVID-19 - SNOMED CT",
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
  "description" : "This is a one-time snapshot of the allowed values for pathogens in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "407479009",
        "display" : "Influenza A virus (organism)"
      },
      {
        "code" : "407480007",
        "display" : "Influenza B virus (organism)"
      },
      {
        "code" : "840533007",
        "display" : "Severe acute respiratory syndrome coronavirus 2 (organism)"
      }]
    }]
  }
}

```
