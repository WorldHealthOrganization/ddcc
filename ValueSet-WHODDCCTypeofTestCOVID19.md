# WHO Type of Covid-19 Test - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO Type of Covid-19 Test**

## ValueSet: WHO Type of Covid-19 Test 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/WHODDCCTypeofTestCOVID19 | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:WHODDCCTypeofTestCOVID19 |

 
WHO Type of COVID-19 Test 

 **References** 

* [DDCC Core Data Set Logical Model for Test Result](StructureDefinition-DDCCCoreDataSetTR.md)
* [DDCC Diagnostic Report](StructureDefinition-DDCCDiagnosticReport.md)
* [DDCC Test](StructureDefinition-DDCCTest.md)
* [DDCC:TR Core Data Set Questionnaire](Questionnaire-DDCCTRCoreDataSetQuestionnaire.md)

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
  "id" : "WHODDCCTypeofTestCOVID19",
  "url" : "http://smart.who.int/ddcc/ValueSet/WHODDCCTypeofTestCOVID19",
  "version" : "1.0.0",
  "name" : "WHODDCCTypeofTestCOVID19",
  "title" : "WHO Type of Covid-19 Test",
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
  "description" : "WHO Type of COVID-19 Test",
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
        "code" : "1334426561",
        "display" : "Viral nucleic acid amplification test or NAAT"
      },
      {
        "code" : "2056159157",
        "display" : "Rapid immunoassay detecting viral proteins or Ag-RDT"
      }]
    }]
  }
}

```
