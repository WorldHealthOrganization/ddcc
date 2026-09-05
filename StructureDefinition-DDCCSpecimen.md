# DDCC Specimen - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Specimen**

## Resource Profile: DDCC Specimen 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCSpecimen | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCSpecimen |

 
A DDCC Specimen contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Specimen resouce, this is intended to map into an IPS Specimen resource. 

**Usages:**

* Use this Profile: [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md)
* Refer to this Profile: [DDCC Diagnostic Report](StructureDefinition-DDCCDiagnosticReport.md) and [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCSpecimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCSpecimen.csv), [Excel](StructureDefinition-DDCCSpecimen.xlsx), [Schematron](StructureDefinition-DDCCSpecimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCSpecimen",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSpecimen",
  "version" : "1.0.0",
  "name" : "DDCCSpecimen",
  "title" : "DDCC Specimen",
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
  "description" : "A DDCC Specimen contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Specimen resouce, this is intended to map into an IPS \nSpecimen resource.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCSampleOriginCOVID19"
      }
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Specimen.collection.collected[x]:collectedDateTime",
      "path" : "Specimen.collection.collected[x]",
      "sliceName" : "collectedDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    }]
  }
}

```
