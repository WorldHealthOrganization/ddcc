# DDCC Document - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Document**

## Resource Profile: DDCC Document 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCDocument | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCDocument |

 
A [DDCC Document](StructureDefinition-DDCCDocument.md) is a document bundle containing the DDCC. 

**Usages:**

* Derived from this Profile: [DDCC DocumentSigned](StructureDefinition-DDCCDocumentSigned.md), [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md) and [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md)
* Use this Profile: [DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCDocument.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCDocument.csv), [Excel](StructureDefinition-DDCCDocument.xlsx), [Schematron](StructureDefinition-DDCCDocument.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCDocument",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocument",
  "version" : "1.0.0",
  "name" : "DDCCDocument",
  "title" : "DDCC Document",
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
  "description" : "A [DDCC Document](StructureDefinition-DDCCDocument.html) is a document bundle containing the DDCC.",
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
      "path" : "Bundle",
      "short" : "DDCC Document",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "document",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "relation"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.link:hcid",
      "path" : "Bundle.link",
      "sliceName" : "hcid",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.link:hcid.relation",
      "path" : "Bundle.link.relation",
      "patternString" : "publication"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 3
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
      "id" : "Bundle.entry:ddccOrganization",
      "path" : "Bundle.entry",
      "sliceName" : "ddccOrganization",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccOrganization.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccQR",
      "path" : "Bundle.entry",
      "sliceName" : "ddccQR",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:ddccQR.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReferenceQR"]
      }]
    },
    {
      "id" : "Bundle.signature",
      "path" : "Bundle.signature",
      "mustSupport" : true
    }]
  }
}

```
