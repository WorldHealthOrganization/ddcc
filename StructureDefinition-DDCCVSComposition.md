# DDCC:VS Composition - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:VS Composition**

## Resource Profile: DDCC:VS Composition 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCVSComposition |

 
Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Vaccination Status (DDCC:VS). 

**Usages:**

* Examples for this Profile: [Composition/DDCCCompositionExampleArabic](Composition-DDCCCompositionExampleArabic.md), [Composition/DDCCCompositionExampleChinese](Composition-DDCCCompositionExampleChinese.md), [Composition/DDCCCompositionExampleEnglish](Composition-DDCCCompositionExampleEnglish.md), [Composition/DDCCCompositionExampleFrench](Composition-DDCCCompositionExampleFrench.md)... Show 2 more, [Composition/DDCCCompositionExampleRussian](Composition-DDCCCompositionExampleRussian.md) and [Composition/DDCCCompositionExampleSpanish](Composition-DDCCCompositionExampleSpanish.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCVSComposition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCVSComposition.csv), [Excel](StructureDefinition-DDCCVSComposition.xlsx), [Schematron](StructureDefinition-DDCCVSComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCVSComposition",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition",
  "version" : "1.0.0",
  "name" : "DDCCVSComposition",
  "title" : "DDCC:VS Composition",
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
  "description" : "Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Vaccination Status (DDCC:VS).",
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
          "code" : "ddcc-vs"
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
      "id" : "Composition.section:vaccination",
      "path" : "Composition.section",
      "sliceName" : "vaccination",
      "short" : "Vaccination Status Section",
      "definition" : "Vaccination Status Section lists the relvant vaccinations received by the patient",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:vaccination.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11369-6"
        }]
      }
    },
    {
      "id" : "Composition.section:vaccination.focus",
      "path" : "Composition.section.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:vaccination.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReferenceQR",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"]
      }]
    }]
  }
}

```
