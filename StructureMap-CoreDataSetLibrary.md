# CoreDataSetLibrary - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CoreDataSetLibrary**

## StructureMap: CoreDataSetLibrary 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CoreDataSetLibrary | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CoreDataSetLibrary |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CoreDataSetLibrary",
  "url" : "http://smart.who.int/ddcc/StructureMap/CoreDataSetLibrary",
  "version" : "1.0.0",
  "name" : "CoreDataSetLibrary",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Patient",
    "mode" : "target",
    "alias" : "Patient"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "mode" : "target",
    "alias" : "DDCCPatient"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocumentReferenceQR",
    "mode" : "target",
    "alias" : "DDCCDocRefQR"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
    "mode" : "target",
    "alias" : "DDCCComposition"
  }],
  "group" : [{
    "name" : "DDCCToPatient",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "DDCCVS",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "DDCCPatient",
      "mode" : "target"
    },
    {
      "name" : "pid",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "set id",
      "source" : [{
        "context" : "pid"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "pid"
        }]
      }]
    },
    {
      "name" : "set full name",
      "source" : [{
        "context" : "src",
        "element" : "name",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "tName"
      }],
      "rule" : [{
        "name" : "set name",
        "source" : [{
          "context" : "name"
        }],
        "target" : [{
          "context" : "tName",
          "contextType" : "variable",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "name"
          }]
        }]
      }]
    },
    {
      "name" : "set birthDate",
      "source" : [{
        "context" : "src",
        "element" : "birthDate",
        "variable" : "birthDate"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "birthDate",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "birthDate"
        }]
      }]
    },
    {
      "name" : "set identifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "identifier",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "identifier"
        }]
      }]
    }]
  },
  {
    "name" : "DDCCToDocumentReference",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "DDCCVS",
      "mode" : "source"
    },
    {
      "name" : "ref",
      "type" : "DDCCDocRefQR",
      "mode" : "target"
    },
    {
      "name" : "id",
      "mode" : "source"
    },
    {
      "name" : "pid",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "set id",
      "source" : [{
        "context" : "id"
      }],
      "target" : [{
        "context" : "ref",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }]
    },
    {
      "name" : "set status",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "ref",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "current"
        }]
      }]
    },
    {
      "name" : "set patient",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "ref",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "patient"
      },
      {
        "context" : "patient",
        "contextType" : "variable",
        "element" : "reference",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Patient/"
        },
        {
          "valueId" : "pid"
        }]
      }]
    },
    {
      "name" : "set serialized content",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "ref",
        "contextType" : "variable",
        "element" : "content",
        "variable" : "content"
      }],
      "rule" : [{
        "name" : "set contentType",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "content",
          "contextType" : "variable",
          "element" : "attachment",
          "variable" : "attachment"
        },
        {
          "context" : "attachment",
          "contextType" : "variable",
          "element" : "contentType",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "application/json"
          }]
        }]
      },
      {
        "name" : "set format code",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "content",
          "contextType" : "variable",
          "element" : "format",
          "variable" : "format"
        },
        {
          "context" : "format",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem"
          }]
        },
        {
          "context" : "format",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "serialized"
          }]
        }]
      }]
    },
    {
      "name" : "set image content",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "ref",
        "contextType" : "variable",
        "element" : "content",
        "variable" : "content"
      }],
      "rule" : [{
        "name" : "set contentType",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "content",
          "contextType" : "variable",
          "element" : "attachment",
          "variable" : "attachment"
        },
        {
          "context" : "attachment",
          "contextType" : "variable",
          "element" : "contentType",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "image/png"
          }]
        }]
      },
      {
        "name" : "set format code",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "content",
          "contextType" : "variable",
          "element" : "format",
          "variable" : "format"
        },
        {
          "context" : "format",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem"
          }]
        },
        {
          "context" : "format",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "image"
          }]
        }]
      }]
    },
    {
      "name" : "set pdf content",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "ref",
        "contextType" : "variable",
        "element" : "content",
        "variable" : "content"
      }],
      "rule" : [{
        "name" : "set contentType",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "content",
          "contextType" : "variable",
          "element" : "attachment",
          "variable" : "attachment"
        },
        {
          "context" : "attachment",
          "contextType" : "variable",
          "element" : "contentType",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "application/pdf"
          }]
        }]
      },
      {
        "name" : "set format code",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "content",
          "contextType" : "variable",
          "element" : "format",
          "variable" : "format"
        },
        {
          "context" : "format",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/DDCCQRFormatCodeSystem"
          }]
        },
        {
          "context" : "format",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "pdf"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "DDCCToComposition",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "DDCCVS",
      "mode" : "source"
    },
    {
      "name" : "comp",
      "type" : "DDCCComposition",
      "mode" : "target"
    },
    {
      "name" : "id",
      "mode" : "source"
    },
    {
      "name" : "pid",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "set id",
      "source" : [{
        "context" : "id"
      }],
      "target" : [{
        "context" : "comp",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }]
    },
    {
      "name" : "set patient",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "comp",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "patient"
      },
      {
        "context" : "patient",
        "contextType" : "variable",
        "element" : "reference",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Patient/"
        },
        {
          "valueId" : "pid"
        }]
      }]
    },
    {
      "name" : "set type",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "comp",
        "contextType" : "variable",
        "element" : "type",
        "variable" : "type"
      },
      {
        "context" : "type",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "coding"
      }],
      "rule" : [{
        "name" : "set type coding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://loinc.org"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "82593-5"
          }]
        }]
      }]
    },
    {
      "name" : "set certificate",
      "source" : [{
        "context" : "src",
        "element" : "certificate",
        "variable" : "certificate"
      }],
      "target" : [{
        "context" : "comp",
        "contextType" : "variable",
        "element" : "author",
        "variable" : "author"
      },
      {
        "context" : "comp",
        "contextType" : "variable",
        "element" : "event",
        "variable" : "event"
      }],
      "rule" : [{
        "name" : "set event period",
        "source" : [{
          "context" : "certificate",
          "element" : "period",
          "variable" : "period"
        }],
        "target" : [{
          "context" : "event",
          "contextType" : "variable",
          "element" : "period",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "period"
          }]
        }]
      },
      {
        "name" : "set author ref",
        "source" : [{
          "context" : "certificate",
          "element" : "issuer",
          "variable" : "issuer"
        }],
        "target" : [{
          "context" : "author",
          "contextType" : "variable",
          "element" : "type",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Organization"
          }]
        }],
        "rule" : [{
          "name" : "set author identifier",
          "source" : [{
            "context" : "issuer",
            "element" : "identifier",
            "variable" : "pha"
          }],
          "target" : [{
            "context" : "author",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "identifier"
          }],
          "rule" : [{
            "name" : "set pha",
            "source" : [{
              "context" : "pha",
              "element" : "value",
              "variable" : "value"
            }],
            "target" : [{
              "context" : "identifier",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "value"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
