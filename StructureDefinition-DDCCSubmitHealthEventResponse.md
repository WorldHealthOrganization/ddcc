# DDCC Submit Health Event Response - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Submit Health Event Response**

## Resource Profile: DDCC Submit Health Event Response 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventResponse | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCSubmitHealthEventResponse |

 
A DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventRespose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.md#submit-health-event) transaction. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCSubmitHealthEventResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCSubmitHealthEventResponse.csv), [Excel](StructureDefinition-DDCCSubmitHealthEventResponse.xlsx), [Schematron](StructureDefinition-DDCCSubmitHealthEventResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCSubmitHealthEventResponse",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventResponse",
  "version" : "1.0.0",
  "name" : "DDCCSubmitHealthEventResponse",
  "title" : "DDCC Submit Health Event Response",
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
  "description" : "A DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventRespose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.html#submit-health-event) transaction.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "DDCC Submit Health Event Response",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "batch-response",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry:ddccBundle",
      "path" : "Bundle.entry",
      "sliceName" : "ddccBundle",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:ddccBundle.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Bundle",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDocument"]
      }]
    }]
  }
}

```
