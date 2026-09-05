# CoreDataSetVSToAddBundle - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CoreDataSetVSToAddBundle**

## StructureMap: CoreDataSetVSToAddBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CoreDataSetVSToAddBundle | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CoreDataSetVSToAddBundle |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CoreDataSetVSToAddBundle",
  "url" : "http://smart.who.int/ddcc/StructureMap/CoreDataSetVSToAddBundle",
  "version" : "1.0.0",
  "name" : "CoreDataSetVSToAddBundle",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS",
    "mode" : "source",
    "alias" : "DDCCVS"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "AddBundle"
  }],
  "import" : ["http://smart.who.int/ddcc/StructureMap/CoreDataSetVSLibrary"],
  "group" : [{
    "name" : "CoreDataSetVSToAddBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "ddcc",
      "type" : "DDCCVS",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "AddBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "setup add bundle",
      "source" : [{
        "context" : "ddcc"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "VSToAddBundle",
        "variable" : ["ddcc", "bundle"]
      }]
    }]
  }]
}

```
