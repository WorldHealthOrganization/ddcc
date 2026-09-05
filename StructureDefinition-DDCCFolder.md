# DDCC Folder - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Folder**

## Resource Profile: DDCC Folder 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCFolder | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCFolder |

 
DDCC Folder of the Paper Certificate 

**Usages:**

* Use this Profile: [DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md)
* Refer to this Profile: [DDCC Submission Set](StructureDefinition-DDCCSubmissionSet.md)
* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCFolder.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCFolder.csv), [Excel](StructureDefinition-DDCCFolder.xlsx), [Schematron](StructureDefinition-DDCCFolder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCFolder",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCFolder",
  "version" : "1.0.0",
  "name" : "DDCCFolder",
  "title" : "DDCC Folder",
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
  "description" : "DDCC Folder of the Paper Certificate",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "Folder-Mapping",
    "uri" : "XDS",
    "name" : "XDS and MHD Mapping"
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
  "type" : "List",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List"
    },
    {
      "id" : "List.extension",
      "path" : "List.extension",
      "min" : 1
    },
    {
      "id" : "List.extension:designationType",
      "path" : "List.extension",
      "sliceName" : "designationType",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "valueCodeableConcept.coding.system"
        },
        {
          "type" : "value",
          "path" : "valueCodeableConcept.coding.code"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "List.extension:designationType/ddccDesignation",
      "path" : "List.extension",
      "sliceName" : "designationType/ddccDesignation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "List.extension:designationType/ddccDesignation.value[x].coding",
      "path" : "List.extension.value[x].coding",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCFolderDesignationTypeCodesystem",
        "code" : "ddcc"
      }
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    },
    {
      "id" : "List.subject.reference",
      "path" : "List.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReference"]
      }]
    }]
  }
}

```
