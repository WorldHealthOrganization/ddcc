# DDCC Diagnostic Report - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Diagnostic Report**

## Resource Profile: DDCC Diagnostic Report 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCDiagnosticReport | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCDiagnosticReport |

 
A DDCC Diagnostic Report contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) DiagnosticReport resouce, this is intended to map into an IPS DiagnosticReport resource. 

**Usages:**

* Use this Profile: [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md)
* Refer to this Profile: [DDCC Procedure](StructureDefinition-DDCCProcedure.md) and [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCDiagnosticReport.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCDiagnosticReport.csv), [Excel](StructureDefinition-DDCCDiagnosticReport.xlsx), [Schematron](StructureDefinition-DDCCDiagnosticReport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCDiagnosticReport",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDiagnosticReport",
  "version" : "1.0.0",
  "name" : "DDCCDiagnosticReport",
  "title" : "DDCC Diagnostic Report",
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
  "description" : "A DDCC Diagnostic Report contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) DiagnosticReport resouce, this is intended to map into an IPS \nDiagnosticReport resource.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCTypeofTestCOVID19"
      }
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCSpecimen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCObservation"]
      }]
    },
    {
      "id" : "DiagnosticReport.result:observation-results",
      "path" : "DiagnosticReport.result",
      "sliceName" : "observation-results",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCObservation"]
      }]
    }]
  }
}

```
