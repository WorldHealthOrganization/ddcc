# DDCC Practitioner Role - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Practitioner Role**

## Resource Profile: DDCC Practitioner Role 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCPractitionerRole | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCPractitionerRole |

 
Association of an [DDCC Practitioner](StructureDefinition-DDCCPractitioner.md) to a managing [DDCC Organization](StructureDefinition-DDCCOrganization.md), indicating that an DDCC Practitioner is authorized by the public health authority (PHA) to vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.md). 

**Usages:**

* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCPractitionerRole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCPractitionerRole.csv), [Excel](StructureDefinition-DDCCPractitionerRole.xlsx), [Schematron](StructureDefinition-DDCCPractitionerRole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCPractitionerRole",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPractitionerRole",
  "version" : "1.0.0",
  "name" : "DDCCPractitionerRole",
  "title" : "DDCC Practitioner Role",
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
  "description" : "Association of an [DDCC Practitioner](StructureDefinition-DDCCPractitioner.html) to a \nmanaging [DDCC Organization](StructureDefinition-DDCCOrganization.html), indicating \nthat an DDCC Practitioner is authorized by the public health authority (PHA) to \nvaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPractitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }]
    }]
  }
}

```
