# DDCC Document Reference - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Document Reference**

## Resource Profile: DDCC Document Reference 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReference | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCDocumentReference |

 
A [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.md) is a document reference to a [DDCC Document](StructureDefinition-DDCCDocument.md) containing the DDCC. The content attachment url will point to a DDCC Document. 

**Usages:**

* Use this Profile: [DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md) and [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md)
* Refer to this Profile: [DDCC Folder](StructureDefinition-DDCCFolder.md) and [DDCC Submission Set](StructureDefinition-DDCCSubmissionSet.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCDocumentReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCDocumentReference.csv), [Excel](StructureDefinition-DDCCDocumentReference.xlsx), [Schematron](StructureDefinition-DDCCDocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCDocumentReference",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReference",
  "version" : "1.0.0",
  "name" : "DDCCDocumentReference",
  "title" : "DDCC Document Reference",
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
  "description" : "A [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.html) is a \ndocument reference to a [DDCC Document](StructureDefinition-DDCCDocument.html) \ncontaining the DDCC.\nThe content attachment url will point to a DDCC Document.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "DocumentEntry-Mapping",
    "uri" : "XDS",
    "name" : "XDS and MHD Mapping"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    },
    {
      "id" : "DocumentReference.subject.reference",
      "path" : "DocumentReference.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.hash",
      "path" : "DocumentReference.content.attachment.hash",
      "mustSupport" : true
    }]
  }
}

```
