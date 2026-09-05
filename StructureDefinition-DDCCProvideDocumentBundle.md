# DDCC Provide Document Bundle - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Provide Document Bundle**

## Resource Profile: DDCC Provide Document Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCProvideDocumentBundle | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCProvideDocumentBundle |

 
DDCC Provide Document Bundle for ITI-65 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCProvideDocumentBundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCProvideDocumentBundle.csv), [Excel](StructureDefinition-DDCCProvideDocumentBundle.xlsx), [Schematron](StructureDefinition-DDCCProvideDocumentBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCProvideDocumentBundle",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCProvideDocumentBundle",
  "version" : "1.0.0",
  "name" : "DDCCProvideDocumentBundle",
  "title" : "DDCC Provide Document Bundle",
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
  "description" : "DDCC Provide Document Bundle for ITI-65",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry:SubmissionSet",
      "path" : "Bundle.entry",
      "sliceName" : "SubmissionSet"
    },
    {
      "id" : "Bundle.entry:SubmissionSet.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "List",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCSubmissionSet"]
      }]
    },
    {
      "id" : "Bundle.entry:DocumentRefs",
      "path" : "Bundle.entry",
      "sliceName" : "DocumentRefs"
    },
    {
      "id" : "Bundle.entry:DocumentRefs.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReference"]
      }]
    },
    {
      "id" : "Bundle.entry:Folders",
      "path" : "Bundle.entry",
      "sliceName" : "Folders"
    },
    {
      "id" : "Bundle.entry:Folders.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "List",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCFolder"]
      }]
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient"
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    }]
  }
}

```
