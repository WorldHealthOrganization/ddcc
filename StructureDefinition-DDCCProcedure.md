# DDCC Procedure - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Procedure**

## Resource Profile: DDCC Procedure 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCProcedure | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCProcedure |

 
A DDCC Procedure contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Procedure resouce, this is intended to map into an IPS Procedure resource. 

**Usages:**

* Use this Profile: [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md)
* Refer to this Profile: [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCProcedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCProcedure.csv), [Excel](StructureDefinition-DDCCProcedure.xlsx), [Schematron](StructureDefinition-DDCCProcedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCProcedure",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCProcedure",
  "version" : "1.0.0",
  "name" : "DDCCProcedure",
  "title" : "DDCC Procedure",
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
  "description" : "A DDCC Procedure contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Procedure resouce, this is intended to map into an IPS \nProcedure resource.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Procedure.extension:country",
      "path" : "Procedure.extension",
      "sliceName" : "country",
      "label" : "Country of vaccination",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "fixedCode" : "completed"
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDiagnosticReport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCTest"]
      }],
      "mustSupport" : true
    }]
  }
}

```
