# DDCC:VS Document - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:VS Document**

## Resource Profile: DDCC:VS Document 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCVSDocument |

 
A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md) is a document bundle containing the DDCC:VS. 

**Usages:**

* Derived from this Profile: [DDCC:VS DocumentSigned](StructureDefinition-DDCCVSDocumentSigned.md)
* Examples for this Profile: [Bundle/Example-Russian](Bundle-Example-Russian.md), [Bundle/ExampleArabic](Bundle-ExampleArabic.md), [Bundle/ExampleChinese](Bundle-ExampleChinese.md), [Bundle/ExampleEnglish](Bundle-ExampleEnglish.md)... Show 2 more, [Bundle/ExampleFrench](Bundle-ExampleFrench.md) and [Bundle/ExampleSpanish](Bundle-ExampleSpanish.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCVSDocument.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCVSDocument.csv), [Excel](StructureDefinition-DDCCVSDocument.xlsx), [Schematron](StructureDefinition-DDCCVSDocument.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCVSDocument",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument",
  "version" : "1.0.0",
  "name" : "DDCCVSDocument",
  "title" : "DDCC:VS Document",
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
  "description" : "A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.html) is a document bundle containing the DDCC:VS.",
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
  "baseDefinition" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocument",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 4
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
    }]
  }
}

```
