# DDCC:TR Composition - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:TR Composition**

## Resource Profile: DDCC:TR Composition 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCTRComposition | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCTRComposition |

 
Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Test Result (DDCC:TR). 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCTRComposition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCTRComposition.csv), [Excel](StructureDefinition-DDCCTRComposition.xlsx), [Schematron](StructureDefinition-DDCCTRComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCTRComposition",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCTRComposition",
  "version" : "1.0.0",
  "name" : "DDCCTRComposition",
  "title" : "DDCC:TR Composition",
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
  "description" : "Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Test Result (DDCC:TR).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.category",
      "path" : "Composition.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCCompositionCategoryCodeSystem",
          "code" : "ddcc-tr"
        }]
      }
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        },
        {
          "type" : "type",
          "path" : "focus"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Composition.section:testresult",
      "path" : "Composition.section",
      "sliceName" : "testresult",
      "short" : "Vaccination Test Result Section",
      "definition" : "Vaccination Test Result Section lists the relvant test results received by the patient",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:testresult.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "30954-2"
        }]
      }
    },
    {
      "id" : "Composition.section:testresult.focus",
      "path" : "Composition.section.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCObservation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:testresult.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCObservation",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReferenceQR",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCTest",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCDiagnosticReport",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCSpecimen",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCProcedure"]
      }]
    }]
  }
}

```
