# BundleVSToAddBundle - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BundleVSToAddBundle**

## StructureMap: BundleVSToAddBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/BundleVSToAddBundle | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:BundleVSToAddBundle |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "BundleVSToAddBundle",
  "url" : "http://smart.who.int/ddcc/StructureMap/BundleVSToAddBundle",
  "version" : "1.0.0",
  "name" : "BundleVSToAddBundle",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "source",
    "alias" : "DDCCBundle"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "AddBundle"
  }],
  "import" : ["http://smart.who.int/ddcc/StructureMap/CoreDataSetVSToAddBundle"],
  "group" : [{
    "name" : "BundleVSToAddBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "ddccbundle",
      "type" : "DDCCBundle",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "AddBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "get first entry from bundle",
      "source" : [{
        "context" : "ddccbundle",
        "element" : "entry",
        "listMode" : "first",
        "variable" : "ddcc"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "CoreDataSetVSToAddBundle",
        "variable" : ["ddcc", "bundle"]
      }]
    }]
  }]
}

```
