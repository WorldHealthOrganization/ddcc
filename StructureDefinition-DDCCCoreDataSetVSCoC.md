# DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care**

## Logical Model: DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVSCoC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCCoreDataSetVSCoC |

 
Data elements for the DDCC Core Data Set - Vaccination Status - Continuity of Care. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCCoreDataSetVSCoC.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCCoreDataSetVSCoC.csv), [Excel](StructureDefinition-DDCCCoreDataSetVSCoC.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCCoreDataSetVSCoC",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVSCoC",
  "version" : "1.0.0",
  "name" : "DDCCCoreDataSetVSCoC",
  "title" : "DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care",
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
  "description" : "Data elements for the DDCC Core Data Set - Vaccination Status - Continuity of Care.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ddcc-vs-coc-immunization-recommendation",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-immunization",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-immunization-recommendation",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-composition",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
    "name" : "WHO Digital Documentation of COVID Certificates"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
  "baseDefinition" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DDCCCoreDataSet",
      "path" : "DDCCCoreDataSet",
      "short" : "DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care",
      "definition" : "Data elements for the DDCC Core Data Set - Vaccination Status - Continuity of Care."
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.centre",
      "path" : "DDCCCoreDataSet.vaccination.centre",
      "min" : 1
    },
    {
      "id" : "DDCCCoreDataSet.sex",
      "path" : "DDCCCoreDataSet.sex",
      "short" : "Sex",
      "definition" : "Documentation of a specific instance of sex information for the vaccinated person.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "isSummary" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
      },
      "mapping" : [{
        "identity" : "ddcc-vs-coc-immunization-recommendation",
        "map" : "Patient.gender"
      }]
    }]
  }
}

```
