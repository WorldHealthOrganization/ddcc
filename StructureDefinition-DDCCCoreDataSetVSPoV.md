# DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination**

## Logical Model: DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVSPoV | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCCoreDataSetVSPoV |

 
Data elements for the DDCC Core Data Set - Vaccination Status - Proof of Vaccination. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCCoreDataSetVSPoV.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCCoreDataSetVSPoV.csv), [Excel](StructureDefinition-DDCCCoreDataSetVSPoV.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCCoreDataSetVSPoV",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVSPoV",
  "version" : "1.0.0",
  "name" : "DDCCCoreDataSetVSPoV",
  "title" : "DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination",
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
  "description" : "Data elements for the DDCC Core Data Set - Vaccination Status - Proof of Vaccination.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  },
  {
    "identity" : "ddcc-patient",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
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
      "short" : "DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination",
      "definition" : "Data elements for the DDCC Core Data Set - Vaccination Status - Proof of Vaccination."
    }]
  }
}

```
