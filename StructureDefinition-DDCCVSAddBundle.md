# DDCC:VS Add Bundle - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:VS Add Bundle**

## Resource Profile: DDCC:VS Add Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCVSAddBundle | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCVSAddBundle |

 
Bundle to be transformed to from the DDCC:VS QuestionnaireResponse to add on the DDCC generator. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCVSAddBundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCVSAddBundle.csv), [Excel](StructureDefinition-DDCCVSAddBundle.xlsx), [Schematron](StructureDefinition-DDCCVSAddBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCVSAddBundle",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSAddBundle",
  "version" : "1.0.0",
  "name" : "DDCCVSAddBundle",
  "title" : "DDCC:VS Add Bundle",
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
  "description" : "Bundle to be transformed to from the DDCC:VS QuestionnaireResponse\nto add on the DDCC generator.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 4
    },
    {
      "id" : "Bundle.entry:ddccQR",
      "path" : "Bundle.entry",
      "sliceName" : "ddccQR",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccQR.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccQR.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:ddccPatient",
      "path" : "Bundle.entry",
      "sliceName" : "ddccPatient",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccPatient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccPatient.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:ddccImmunization",
      "path" : "Bundle.entry",
      "sliceName" : "ddccImmunization",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccImmunization.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Immunization",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccImmunization.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:ddccImmunizationRecommendation",
      "path" : "Bundle.entry",
      "sliceName" : "ddccImmunizationRecommendation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccImmunizationRecommendation.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "ImmunizationRecommendation",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccImmunizationRecommendation.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:ddccDocumentReference",
      "path" : "Bundle.entry",
      "sliceName" : "ddccDocumentReference",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:ddccDocumentReference.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReference"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccDocumentReference.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:ddccComposition",
      "path" : "Bundle.entry",
      "sliceName" : "ddccComposition",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccComposition.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Composition",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCComposition"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccComposition.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    }]
  }
}

```
