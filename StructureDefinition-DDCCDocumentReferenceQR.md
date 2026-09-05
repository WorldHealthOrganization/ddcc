# DDCC DocumentReference return for QR - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC DocumentReference return for QR**

## Resource Profile: DDCC DocumentReference return for QR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReferenceQR | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCDocumentReferenceQR |

 
DDCC DocumentReference for QR codes including the QR image and the serialized content. 

**Usages:**

* Use this Profile: [DDCC Document](StructureDefinition-DDCCDocument.md)
* Refer to this Profile: [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md) and [DDCC:VS Composition](StructureDefinition-DDCCVSComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCDocumentReferenceQR.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCDocumentReferenceQR.csv), [Excel](StructureDefinition-DDCCDocumentReferenceQR.xlsx), [Schematron](StructureDefinition-DDCCDocumentReferenceQR.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCDocumentReferenceQR",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReferenceQR",
  "version" : "1.0.0",
  "name" : "DDCCDocumentReferenceQR",
  "title" : "DDCC DocumentReference return for QR",
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
  "description" : "DDCC DocumentReference for QR codes including the QR image and the serialized content.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/DDCCQRTypeValueSet"
      }
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "format"
        }],
        "rules" : "closed"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/DDCCQRFormatValueSet"
      }
    },
    {
      "id" : "DocumentReference.content:qrImage",
      "path" : "DocumentReference.content",
      "sliceName" : "qrImage",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrImage.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrImage.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrImage.format",
      "path" : "DocumentReference.content.format",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem",
        "code" : "image"
      }
    },
    {
      "id" : "DocumentReference.content:qrContent",
      "path" : "DocumentReference.content",
      "sliceName" : "qrContent",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrContent.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrContent.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrContent.format",
      "path" : "DocumentReference.content.format",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem",
        "code" : "serialized"
      }
    },
    {
      "id" : "DocumentReference.content:qrPDF",
      "path" : "DocumentReference.content",
      "sliceName" : "qrPDF",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrPDF.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrPDF.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:qrPDF.format",
      "path" : "DocumentReference.content.format",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem",
        "code" : "pdf"
      }
    }]
  }
}

```
