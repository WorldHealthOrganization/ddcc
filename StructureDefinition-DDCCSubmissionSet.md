# DDCC Submission Set - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Submission Set**

## Resource Profile: DDCC Submission Set 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCSubmissionSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCSubmissionSet |

 
DDCC Submission Set for ITI-65 

**Usages:**

* Use this Profile: [DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCSubmissionSet.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCSubmissionSet.csv), [Excel](StructureDefinition-DDCCSubmissionSet.xlsx), [Schematron](StructureDefinition-DDCCSubmissionSet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCSubmissionSet",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmissionSet",
  "version" : "1.0.0",
  "name" : "DDCCSubmissionSet",
  "title" : "DDCC Submission Set",
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
  "description" : "DDCC Submission Set for ITI-65",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "SubmissionSet-Mapping",
    "uri" : "XDS",
    "name" : "XDS and MHD Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List.subject",
      "path" : "List.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    },
    {
      "id" : "List.subject.reference",
      "path" : "List.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReference",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCFolder"]
      }]
    }]
  }
}

```
