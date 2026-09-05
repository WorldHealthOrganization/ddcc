# Lab Test - Qualitative Result - SNOMED CT - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Qualitative Result - SNOMED CT**

## ValueSet: Lab Test - Qualitative Result - SNOMED CT (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/LabTestQualitativeResultSnomedValueSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:LabTestQualitativeResultSnomedValueSet |

 
This is a one-time snapshot of the allowed values for lab test results in EUDCC and SMART Health Cards, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG and [http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/ValueSet-vaccine-snomed.html](http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/ValueSet-vaccine-snomed.html) respectively. Contents may need to be updated and readers should consult the original documentation. 

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
  "id" : "LabTestQualitativeResultSnomedValueSet",
  "url" : "http://smart.who.int/ddcc/ValueSet/LabTestQualitativeResultSnomedValueSet",
  "version" : "1.0.0",
  "name" : "LabTestQualitativeResultSnomedValueSet",
  "title" : "Lab Test - Qualitative Result - SNOMED CT",
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
  "description" : "This is a one-time snapshot of the allowed values for lab test results in EUDCC and SMART Health Cards, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG and <http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/ValueSet-vaccine-snomed.html> respectively. Contents may need to be updated and readers should consult the original documentation.",
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
        "code" : "10828004",
        "display" : "Positive (qualifier value)"
      },
      {
        "code" : "11214006",
        "display" : "Reactive (qualifier value)"
      },
      {
        "code" : "125154007",
        "display" : "Specimen unsatisfactory for evaluation (finding)"
      },
      {
        "code" : "131194007",
        "display" : "Non-reactive (qualifier value)"
      },
      {
        "code" : "260373001",
        "display" : "Detected (qualifier value)"
      },
      {
        "code" : "260385009",
        "display" : "Negative (qualifier value)"
      },
      {
        "code" : "260415000",
        "display" : "Not detected (qualifier value)"
      },
      {
        "code" : "415684004",
        "display" : "Suspected (qualifier value)"
      },
      {
        "code" : "419984006",
        "display" : "Inconclusive (qualifier value)"
      },
      {
        "code" : "42425007",
        "display" : "Equivocal (qualifier value)"
      },
      {
        "code" : "455371000124106",
        "display" : "Invalid result (qualifier value)"
      },
      {
        "code" : "720735008",
        "display" : "Presumptive positive (qualifier value)"
      },
      {
        "code" : "82334004",
        "display" : "Indeterminate (qualifier value)"
      }]
    }]
  }
}

```
