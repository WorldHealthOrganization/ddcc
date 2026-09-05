# DDCC:VS Document - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:VS Document**

## Resource Profile: DDCC:VS Document 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCTRDocument | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCTRDocument |

 
A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md) is a document bundle containing the DDCC:VS. 

**Usages:**

* Derived from this Profile: [DDCC:TR DocumentSigned](StructureDefinition-DDCCTRDocumentSigned.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCTRDocument.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCTRDocument.csv), [Excel](StructureDefinition-DDCCTRDocument.xlsx), [Schematron](StructureDefinition-DDCCTRDocument.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCTRDocument",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCTRDocument",
  "version" : "1.0.0",
  "name" : "DDCCTRDocument",
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
      "min" : 7
    },
    {
      "id" : "Bundle.entry:ddccObservation",
      "path" : "Bundle.entry",
      "sliceName" : "ddccObservation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccObservation.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCObservation"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccTest",
      "path" : "Bundle.entry",
      "sliceName" : "ddccTest",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccTest.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Device",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCTest"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccDiagnosticReport",
      "path" : "Bundle.entry",
      "sliceName" : "ddccDiagnosticReport",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccDiagnosticReport.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "DiagnosticReport",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDiagnosticReport"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccSpecimen",
      "path" : "Bundle.entry",
      "sliceName" : "ddccSpecimen",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccSpecimen.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Specimen",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCSpecimen"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccProcedure",
      "path" : "Bundle.entry",
      "sliceName" : "ddccProcedure",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:ddccProcedure.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Procedure",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCProcedure"]
      }]
    }]
  }
}

```
