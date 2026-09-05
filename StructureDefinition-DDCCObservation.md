# DDCC Observation - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Observation**

## Resource Profile: DDCC Observation 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCObservation | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCObservation |

 
A DDCC Observation contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Observation resouce, this is intended to map into an IPS Observation resource. 

**Usages:**

* Use this Profile: [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md)
* Refer to this Profile: [DDCC Diagnostic Report](StructureDefinition-DDCCDiagnosticReport.md) and [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCObservation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCObservation.csv), [Excel](StructureDefinition-DDCCObservation.xlsx), [Schematron](StructureDefinition-DDCCObservation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCObservation",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCObservation",
  "version" : "1.0.0",
  "name" : "DDCCObservation",
  "title" : "DDCC Observation",
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
  "description" : "A DDCC Observation contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Observation resouce, this is intended to map into an IPS \nObservation resource.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "label" : "Type of test"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "label" : "Date and time of sample collection",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "label" : "Test result",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCSampleOriginCOVID19"
      }
    }]
  }
}

```
