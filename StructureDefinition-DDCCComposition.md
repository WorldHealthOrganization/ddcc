# DDCC Composition - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Composition**

## Resource Profile: DDCC Composition 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCComposition | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCComposition |

 
Describes the logical structure for a Digital Documentation of COVID-19 Certificates (DDCC). 

**Usages:**

* Derived from this Profile: [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md) and [DDCC:VS Composition](StructureDefinition-DDCCVSComposition.md)
* Use this Profile: [DDCC Document](StructureDefinition-DDCCDocument.md) and [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md)
* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCComposition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCComposition.csv), [Excel](StructureDefinition-DDCCComposition.xlsx), [Schematron](StructureDefinition-DDCCComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCComposition",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
  "version" : "1.0.0",
  "name" : "DDCCComposition",
  "title" : "DDCC Composition",
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
  "description" : "Describes the logical structure for a Digital Documentation of COVID-19 \nCertificates (DDCC).",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "label" : "Certificate Identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.system",
      "path" : "Composition.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.value",
      "path" : "Composition.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "mustSupport" : true
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "Kind of composition (\"DDCC\")",
      "definition" : "Specifies that this composition refers to a DDCC",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "82593-5"
        }]
      }
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.subject.reference",
      "path" : "Composition.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "patternString" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester",
      "path" : "Composition.attester",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester.mode",
      "path" : "Composition.attester.mode",
      "patternCode" : "official"
    },
    {
      "id" : "Composition.attester.party",
      "path" : "Composition.attester.party",
      "label" : "Certificate issuer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.event",
      "path" : "Composition.event",
      "max" : "1"
    },
    {
      "id" : "Composition.event.period.start",
      "path" : "Composition.event.period.start",
      "label" : "Certificate valid from"
    },
    {
      "id" : "Composition.event.period.end",
      "path" : "Composition.event.period.end",
      "label" : "Certificate valid until"
    }]
  }
}

```
