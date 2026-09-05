# DDCC Practitioner - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Practitioner**

## Resource Profile: DDCC Practitioner 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCPractitioner | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCPractitioner |

 
Container for an DDCC Practitioner, which is a Practitioner authorized by the PHA to vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.md). 

**Usages:**

* Refer to this Profile: [DDCC Immunization](StructureDefinition-DDCCImmunization.md) and [DDCC Practitioner Role](StructureDefinition-DDCCPractitionerRole.md)
* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCPractitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCPractitioner.csv), [Excel](StructureDefinition-DDCCPractitioner.xlsx), [Schematron](StructureDefinition-DDCCPractitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCPractitioner",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPractitioner",
  "version" : "1.0.0",
  "name" : "DDCCPractitioner",
  "title" : "DDCC Practitioner",
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
  "description" : "Container for an DDCC Practitioner, which is a Practitioner authorized by the PHA to \nvaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        },
        {
          "type" : "profile",
          "path" : "assigner.resolve()"
        }],
        "ordered" : true,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:ddccIdentifier",
      "path" : "Practitioner.identifier",
      "sliceName" : "ddccIdentifier",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Practitioner.identifier:ddccIdentifier.use",
      "path" : "Practitioner.identifier.use",
      "min" : 1,
      "patternCode" : "official",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:ddccIdentifier.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:ddccIdentifier.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:ddccIdentifier.assigner",
      "path" : "Practitioner.identifier.assigner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
