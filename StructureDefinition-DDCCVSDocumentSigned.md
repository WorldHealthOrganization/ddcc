# DDCC:VS DocumentSigned - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:VS DocumentSigned**

## Resource Profile: DDCC:VS DocumentSigned 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocumentSigned | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCVSDocumentSigned |

 
A [DDCC:VS Document Signed](StructureDefinition-DDCCVSDocumentSigned.md) is a document bundle containing the DDCC:VS that has a digital signature. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCVSDocumentSigned.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCVSDocumentSigned.csv), [Excel](StructureDefinition-DDCCVSDocumentSigned.xlsx), [Schematron](StructureDefinition-DDCCVSDocumentSigned.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCVSDocumentSigned",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocumentSigned",
  "version" : "1.0.0",
  "name" : "DDCCVSDocumentSigned",
  "title" : "DDCC:VS DocumentSigned",
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
  "description" : "A [DDCC:VS Document Signed](StructureDefinition-DDCCVSDocumentSigned.html) is a document bundle containing the DDCC:VS\nthat has a digital signature.",
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
  "baseDefinition" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.signature",
      "path" : "Bundle.signature",
      "min" : 1
    }]
  }
}

```
