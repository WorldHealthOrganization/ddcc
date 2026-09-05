# CertICAOtoCoreDataSet - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CertICAOtoCoreDataSet**

## StructureMap: CertICAOtoCoreDataSet 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertICAOtoCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CertICAOtoCoreDataSet |

 
Structure map transforming CertICAO logical model to bundle of Core Data Set logical model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CertICAOtoCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertICAOtoCoreDataSet",
  "version" : "1.0.0",
  "name" : "CertICAOtoCoreDataSet",
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
  "description" : "Structure map transforming CertICAO logical model to bundle of Core Data Set logical model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertICAOVDS",
    "mode" : "source",
    "alias" : "VDS"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "DDCCBundle"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
    "mode" : "target",
    "alias" : "DDCC"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS",
    "mode" : "target",
    "alias" : "DDCCVS"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetTR",
    "mode" : "target",
    "alias" : "DDCCTR"
  }],
  "group" : [{
    "name" : "CertICAOtoCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "VDS",
      "mode" : "source"
    },
    {
      "name" : "ddccBundle",
      "type" : "DDCCBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "data",
      "source" : [{
        "context" : "src",
        "element" : "data",
        "variable" : "data"
      }],
      "rule" : [{
        "name" : "msg",
        "source" : [{
          "context" : "data",
          "element" : "msg",
          "variable" : "msg"
        }],
        "rule" : [{
          "name" : "ve",
          "source" : [{
            "context" : "msg",
            "element" : "ve",
            "variable" : "ve"
          }],
          "rule" : [{
            "name" : "vd",
            "source" : [{
              "context" : "ve",
              "element" : "vd",
              "variable" : "vd"
            }],
            "target" : [{
              "context" : "ddccBundle",
              "contextType" : "variable",
              "element" : "entry",
              "variable" : "outentry"
            },
            {
              "contextType" : "variable",
              "variable" : "ddcc",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS"
              }]
            }],
            "rule" : [{
              "name" : "set certificate",
              "source" : [{
                "context" : "data",
                "element" : "hdr",
                "variable" : "hdr"
              }],
              "target" : [{
                "context" : "ddcc",
                "contextType" : "variable",
                "element" : "certificate",
                "variable" : "certificate"
              }],
              "dependent" : [{
                "name" : "VDStoCoreDataSetCertificate",
                "variable" : ["hdr", "msg", "certificate"]
              }]
            },
            {
              "name" : "set patient",
              "source" : [{
                "context" : "msg",
                "element" : "pid",
                "variable" : "pid"
              }],
              "dependent" : [{
                "name" : "ExtractPatient",
                "variable" : ["pid", "ddcc"]
              }]
            },
            {
              "name" : "set vaccination",
              "source" : [{
                "context" : "vd"
              }],
              "target" : [{
                "context" : "ddcc",
                "contextType" : "variable",
                "element" : "vaccination",
                "variable" : "vaccination"
              }],
              "dependent" : [{
                "name" : "ExtractVaccine",
                "variable" : ["ve", "vd", "vaccination"]
              }]
            },
            {
              "name" : "set outentry",
              "source" : [{
                "context" : "vd"
              }],
              "target" : [{
                "context" : "outentry",
                "contextType" : "variable",
                "element" : "resource",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "ddcc"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "tr",
          "source" : [{
            "context" : "msg",
            "element" : "tr",
            "variable" : "tr"
          }],
          "target" : [{
            "context" : "ddccBundle",
            "contextType" : "variable",
            "element" : "entry",
            "variable" : "outentry"
          },
          {
            "contextType" : "variable",
            "variable" : "ddcc",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetTR"
            }]
          }],
          "rule" : [{
            "name" : "set certificate",
            "source" : [{
              "context" : "data",
              "element" : "hdr",
              "variable" : "hdr"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "certificate",
              "variable" : "certificate"
            }],
            "dependent" : [{
              "name" : "VDStoCoreDataSetCertificate",
              "variable" : ["hdr", "msg", "certificate"]
            }]
          },
          {
            "name" : "set patient",
            "source" : [{
              "context" : "msg",
              "element" : "pid",
              "variable" : "pid"
            }],
            "dependent" : [{
              "name" : "ExtractPatient",
              "variable" : ["pid", "ddcc"]
            }]
          },
          {
            "name" : "sp",
            "source" : [{
              "context" : "msg",
              "element" : "sp",
              "variable" : "sp"
            }],
            "rule" : [{
              "name" : "set test",
              "source" : [{
                "context" : "msg",
                "element" : "dat",
                "variable" : "dat"
              }],
              "target" : [{
                "context" : "ddcc",
                "contextType" : "variable",
                "element" : "test",
                "variable" : "test"
              }],
              "dependent" : [{
                "name" : "ExtractTest",
                "variable" : ["sp", "dat", "tr", "test"]
              }]
            }]
          },
          {
            "name" : "set outentry",
            "source" : [{
              "context" : "tr"
            }],
            "target" : [{
              "context" : "outentry",
              "contextType" : "variable",
              "element" : "resource",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "ddcc"
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "VDStoCoreDataSetCertificate",
    "typeMode" : "none",
    "input" : [{
      "name" : "hdr",
      "mode" : "source"
    },
    {
      "name" : "msg",
      "mode" : "source"
    },
    {
      "name" : "certificate",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set version",
      "source" : [{
        "context" : "hdr",
        "element" : "v",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "version",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "v"
        }]
      }]
    },
    {
      "name" : "set hcid from uvci",
      "source" : [{
        "context" : "msg",
        "element" : "uvci",
        "variable" : "uvci"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "hcid",
        "variable" : "hcid"
      },
      {
        "context" : "hcid",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "uvci"
        }]
      }]
    },
    {
      "name" : "set hcid from utci",
      "source" : [{
        "context" : "msg",
        "element" : "utci",
        "variable" : "utci"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "hcid",
        "variable" : "hcid"
      },
      {
        "context" : "hcid",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "utci"
        }]
      }]
    },
    {
      "name" : "set issuer",
      "source" : [{
        "context" : "hdr",
        "element" : "is",
        "variable" : "is"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "issuer",
        "variable" : "issuer",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      },
      {
        "context" : "issuer",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "is"
        }]
      }]
    }]
  },
  {
    "name" : "ExtractPatient",
    "typeMode" : "none",
    "input" : [{
      "name" : "pid",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set name",
      "source" : [{
        "context" : "pid",
        "element" : "n",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "name"
        }]
      }]
    },
    {
      "name" : "set birthDate",
      "source" : [{
        "context" : "pid",
        "element" : "dob",
        "variable" : "birthDate"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "birthDate",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "birthDate"
        }]
      }]
    },
    {
      "name" : "set priorityIdentifier",
      "source" : [{
        "context" : "pid",
        "element" : "i",
        "variable" : "priorityIdentifier"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "identifier"
      },
      {
        "context" : "identifier",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "priorityIdentifier"
        }]
      }]
    },
    {
      "name" : "set Document Type Number",
      "source" : [{
        "context" : "pid",
        "element" : "dn"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "dependent" : [{
        "name" : "ExtractDocumentTypeNumber",
        "variable" : ["pid", "identifier"]
      }]
    }]
  },
  {
    "name" : "ExtractDocumentTypeNumber",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "identif",
      "type" : "Identifier",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set doc number",
      "source" : [{
        "context" : "src",
        "element" : "dn",
        "variable" : "docNumber"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "docNumber"
        }]
      }]
    },
    {
      "name" : "set doc number P",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'P'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "PPN"
        }]
      }]
    },
    {
      "name" : "set doc number A",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'A'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "DL"
        }]
      }]
    },
    {
      "name" : "set doc number C",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'C'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "DL"
        }]
      }]
    },
    {
      "name" : "set doc number I",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'I'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "DL"
        }]
      }]
    },
    {
      "name" : "set doc number AC",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'AC'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "EN"
        }]
      }]
    },
    {
      "name" : "set doc number V",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'V'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "ACSN"
        }]
      }]
    },
    {
      "name" : "set doc number D",
      "source" : [{
        "context" : "src",
        "element" : "dt",
        "variable" : "docType",
        "condition" : "docType = 'D'"
      }],
      "target" : [{
        "context" : "identif",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "DL"
        }]
      }]
    }]
  },
  {
    "name" : "ExtractVaccine",
    "typeMode" : "none",
    "input" : [{
      "name" : "ve",
      "mode" : "source"
    },
    {
      "name" : "vd",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set vaccine",
      "source" : [{
        "context" : "ve",
        "element" : "des",
        "variable" : "des"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "vaccine",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://id.who.int/icd11/mms"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "des"
        }]
      }]
    },
    {
      "name" : "set brand",
      "source" : [{
        "context" : "ve",
        "element" : "nam",
        "variable" : "nam"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "brand",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "nam"
        }]
      }]
    },
    {
      "name" : "set target disease",
      "source" : [{
        "context" : "ve",
        "element" : "dis",
        "variable" : "dis"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "disease",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://id.who.int/icd11/mms"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dis"
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "vd",
        "element" : "dvc",
        "variable" : "dvc"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "date",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dvc"
        }]
      }]
    },
    {
      "name" : "set dose",
      "source" : [{
        "context" : "vd",
        "element" : "seq",
        "variable" : "seq"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "dose",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "seq"
        }]
      }]
    },
    {
      "name" : "set nextDose",
      "source" : [{
        "context" : "vd",
        "element" : "dvn",
        "variable" : "dvn"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "nextDose",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dvn"
        }]
      }]
    },
    {
      "name" : "ctr",
      "source" : [{
        "context" : "vd",
        "element" : "ctr",
        "variable" : "ctr"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "country",
        "variable" : "coding"
      }],
      "rule" : [{
        "name" : "set country",
        "source" : [{
          "context" : "ctr"
        }],
        "dependent" : [{
          "name" : "ExtractCountry",
          "variable" : ["ctr", "coding"]
        }]
      }]
    },
    {
      "name" : "set centre",
      "source" : [{
        "context" : "vd",
        "element" : "adm",
        "variable" : "adm"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "centre",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "adm"
        }]
      }]
    },
    {
      "name" : "set lot",
      "source" : [{
        "context" : "vd",
        "element" : "lot",
        "variable" : "lot"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "lot",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "lot"
        }]
      }]
    }]
  },
  {
    "name" : "ExtractTest",
    "typeMode" : "none",
    "input" : [{
      "name" : "sp",
      "mode" : "source"
    },
    {
      "name" : "dat",
      "mode" : "source"
    },
    {
      "name" : "tr",
      "mode" : "source"
    },
    {
      "name" : "test",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set pathogen",
      "source" : [{
        "context" : "tr"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "pathogen",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://id.who.int/icd11/mms"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "XN109"
        }]
      }]
    },
    {
      "name" : "tc",
      "source" : [{
        "context" : "tr",
        "element" : "tc",
        "variable" : "tc"
      }],
      "rule" : [{
        "name" : "set default type",
        "source" : [{
          "context" : "tc"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "type",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tc"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "tc"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/lab-test-type-icao"
          },
          {
            "valueId" : "tc"
          }]
        }],
        "rule" : [{
          "name" : "translate ICAO type",
          "source" : [{
            "context" : "tc",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-type-icao')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "type",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-icao-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "m",
      "source" : [{
        "context" : "tr",
        "element" : "m",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "set default origin",
        "source" : [{
          "context" : "m"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "origin",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "m"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "m"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-icao"
          },
          {
            "valueId" : "m"
          }]
        }],
        "rule" : [{
          "name" : "translate ICAO origin",
          "source" : [{
            "context" : "m",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-sample-origin-icao')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "origin",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-sample-origin-icao-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "dat",
        "element" : "sc",
        "variable" : "date"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "date",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "date"
        }]
      }]
    },
    {
      "name" : "r",
      "source" : [{
        "context" : "tr",
        "element" : "r",
        "variable" : "r"
      }],
      "rule" : [{
        "name" : "set default result",
        "source" : [{
          "context" : "r"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "r"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "r"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/lab-test-qual-result-icao"
          },
          {
            "valueId" : "r"
          }]
        }],
        "rule" : [{
          "name" : "translate ICAO result",
          "source" : [{
            "context" : "r",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-qual-result-icao')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "result",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-qual-result-icao-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set centre",
      "source" : [{
        "context" : "sp",
        "element" : "spn",
        "variable" : "spn"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "centre",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "spn"
        }]
      }]
    },
    {
      "name" : "ctr",
      "source" : [{
        "context" : "sp",
        "element" : "ctr",
        "variable" : "ctr"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "country",
        "variable" : "coding"
      }],
      "rule" : [{
        "name" : "set country",
        "source" : [{
          "context" : "ctr"
        }],
        "dependent" : [{
          "name" : "ExtractCountry",
          "variable" : ["ctr", "coding"]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractCountry",
    "typeMode" : "none",
    "input" : [{
      "name" : "country",
      "mode" : "source"
    },
    {
      "name" : "coding",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set default country",
      "source" : [{
        "context" : "country"
      }],
      "target" : [{
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "country"
        }]
      }],
      "documentation" : "ICAO Doc 9303-1 country codes are a superset of ISO 3166 3 letter codes"
    },
    {
      "name" : "coded",
      "source" : [{
        "context" : "country"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "coded",
        "transform" : "c",
        "parameter" : [{
          "valueString" : "urn:iso:std:iso:3166"
        },
        {
          "valueId" : "country"
        }]
      }],
      "rule" : [{
        "name" : "set country with system",
        "source" : [{
          "context" : "country",
          "condition" : "coded.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3')"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "country"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "urn:iso:std:iso:3166"
          }]
        }]
      }]
    }]
  }]
}

```
