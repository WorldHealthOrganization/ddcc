# QRespToVSCoreDataSet - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **QRespToVSCoreDataSet**

## StructureMap: QRespToVSCoreDataSet 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/QRespToVSCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:QRespToVSCoreDataSet |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "QRespToVSCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureMap/QRespToVSCoreDataSet",
  "version" : "1.0.0",
  "name" : "QRespToVSCoreDataSet",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVSCoC",
    "mode" : "target",
    "alias" : "DDCC"
  }],
  "group" : [{
    "name" : "QRespToCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set header content",
      "source" : [{
        "context" : "qr",
        "variable" : "src"
      }],
      "dependent" : [{
        "name" : "QRespToHeader",
        "variable" : ["src", "ddcc"]
      }]
    },
    {
      "name" : "set vaccination content",
      "source" : [{
        "context" : "qr",
        "variable" : "src"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "vaccination",
        "variable" : "vaccination"
      }],
      "dependent" : [{
        "name" : "QRespToVaccination",
        "variable" : ["src", "vaccination"]
      }]
    },
    {
      "name" : "set certificate content",
      "source" : [{
        "context" : "qr",
        "variable" : "src"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "certificate",
        "variable" : "certificate"
      }],
      "dependent" : [{
        "name" : "QRespToCertificate",
        "variable" : ["src", "certificate"]
      }]
    }]
  },
  {
    "name" : "QRespToHeader",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "header items",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item"
      }],
      "rule" : [{
        "name" : "first answser for name",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'name'"
        }],
        "rule" : [{
          "name" : "set name",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "ddcc",
            "contextType" : "variable",
            "element" : "name",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for birthDate",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'birthDate'"
        }],
        "rule" : [{
          "name" : "set birthDate",
          "source" : [{
            "context" : "answer",
            "element" : "valueDate",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "ddcc",
            "contextType" : "variable",
            "element" : "birthDate",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for identifier",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'identifier'"
        }],
        "target" : [{
          "context" : "ddcc",
          "contextType" : "variable",
          "element" : "identifier",
          "variable" : "identifier"
        }],
        "rule" : [{
          "name" : "set identifier",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "identifier",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for sex",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'sex'"
        }],
        "rule" : [{
          "name" : "process coding",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "set sex",
            "source" : [{
              "context" : "coding",
              "element" : "code",
              "variable" : "content"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "sex",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "content"
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "QRespToVaccination",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "vaccination items",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item"
      }],
      "rule" : [{
        "name" : "first answer for vaccine",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'vaccine'"
        }],
        "rule" : [{
          "name" : "set vaccine",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "vaccine",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for brand",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'brand'"
        }],
        "rule" : [{
          "name" : "set brand",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "brand",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for manufacturer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'manufacturer'"
        }],
        "rule" : [{
          "name" : "set manufacturer",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "manufacturer",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for maholder",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'ma_holder'"
        }],
        "rule" : [{
          "name" : "set maholder",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "maholder",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answser for lot",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'lot'"
        }],
        "rule" : [{
          "name" : "set lot",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "lot",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for date",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'date'"
        }],
        "rule" : [{
          "name" : "set date",
          "source" : [{
            "context" : "answer",
            "element" : "valueDate",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "date",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for validFrom",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'vaccine_valid'"
        }],
        "rule" : [{
          "name" : "set validFrom",
          "source" : [{
            "context" : "answer",
            "element" : "valueDate",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "validFrom",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for dose",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'dose'"
        }],
        "rule" : [{
          "name" : "set dose",
          "source" : [{
            "context" : "answer",
            "element" : "valueInteger",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "dose",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for totalDoses",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'total_doses'"
        }],
        "rule" : [{
          "name" : "set totalDoses",
          "source" : [{
            "context" : "answer",
            "element" : "valueInteger",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "totalDoses",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for country",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'country'"
        }],
        "rule" : [{
          "name" : "set country",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "country",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answser for centre",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'centre'"
        }],
        "rule" : [{
          "name" : "set centre",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "centre",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answser for practitioner",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'hw'"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "practitioner",
          "variable" : "identifier"
        }],
        "rule" : [{
          "name" : "set practitioner",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "identifier",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for disease",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'disease'"
        }],
        "rule" : [{
          "name" : "set disease",
          "source" : [{
            "context" : "answer",
            "element" : "valueCoding",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "disease",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for nextDose",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'due_date'"
        }],
        "rule" : [{
          "name" : "set nextDose",
          "source" : [{
            "context" : "answer",
            "element" : "valueDate",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "nextDose",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "QRespToPeriod",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "mode" : "source"
    },
    {
      "name" : "period",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "vaccination validity items",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item"
      }],
      "rule" : [{
        "name" : "first answer for valid_from",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'valid_from'"
        }],
        "rule" : [{
          "name" : "set valid_from",
          "source" : [{
            "context" : "answer",
            "element" : "valueDate",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "period",
            "contextType" : "variable",
            "element" : "start",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "first answer for valid_until",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'valid_until'"
        }],
        "rule" : [{
          "name" : "set valid_until",
          "source" : [{
            "context" : "answer",
            "element" : "valueDate",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "period",
            "contextType" : "variable",
            "element" : "end",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "QRespToCertificate",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "mode" : "source"
    },
    {
      "name" : "certificate",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "certificate items",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item"
      }],
      "rule" : [{
        "name" : "first answser for hcid",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'pha'"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "issuer",
          "variable" : "issuer"
        }],
        "rule" : [{
          "name" : "set issuer",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "issuer",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "identifier"
          }],
          "rule" : [{
            "name" : "set issuer identifier",
            "source" : [{
              "context" : "content",
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
      },
      {
        "name" : "first answser for hcid",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer",
          "condition" : "item.linkId = 'hcid'"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "hcid",
          "variable" : "hcid"
        }],
        "rule" : [{
          "name" : "set hcid and version",
          "source" : [{
            "context" : "answer",
            "element" : "valueString",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "hcid",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          },
          {
            "context" : "certificate",
            "contextType" : "variable",
            "element" : "version",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "RC2"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set vaccination period",
      "source" : [{
        "context" : "qr",
        "variable" : "src"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "period",
        "variable" : "period"
      }],
      "dependent" : [{
        "name" : "QRespToPeriod",
        "variable" : ["src", "period"]
      }]
    }]
  }]
}

```
