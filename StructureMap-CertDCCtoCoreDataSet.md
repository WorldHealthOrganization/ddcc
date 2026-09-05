# CertDCCtoCoreDataSet - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CertDCCtoCoreDataSet**

## StructureMap: CertDCCtoCoreDataSet 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertDCCtoCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CertDCCtoCoreDataSet |

 
Structure map transforming CertDCC logical model to bundle of Core Data Set logical model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CertDCCtoCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertDCCtoCoreDataSet",
  "version" : "1.0.0",
  "name" : "CertDCCtoCoreDataSet",
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
  "description" : "Structure map transforming CertDCC logical model to bundle of Core Data Set logical model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertDCC",
    "mode" : "source",
    "alias" : "CWTPayload"
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
    "name" : "CertDCCtoCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CWTPayload",
      "mode" : "source"
    },
    {
      "name" : "ddccBundle",
      "type" : "DDCCBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "hcert",
      "source" : [{
        "context" : "src",
        "element" : "-260",
        "variable" : "hcert"
      }],
      "rule" : [{
        "name" : "eu_DCC_v1",
        "source" : [{
          "context" : "hcert",
          "element" : "1",
          "variable" : "dcc"
        }],
        "rule" : [{
          "name" : "v",
          "source" : [{
            "context" : "dcc",
            "element" : "v",
            "variable" : "v"
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
            "name" : "set DDCC",
            "source" : [{
              "context" : "v"
            }],
            "dependent" : [{
              "name" : "DCCtoCoreDataSet",
              "variable" : ["dcc", "ddcc"]
            }]
          },
          {
            "name" : "set certificate",
            "source" : [{
              "context" : "v"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "certificate",
              "variable" : "certificate"
            }],
            "dependent" : [{
              "name" : "CertDCCtoCoreDataSetCertificate",
              "variable" : ["src", "dcc", "v", "certificate"]
            }]
          },
          {
            "name" : "set vaccination",
            "source" : [{
              "context" : "v"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "vaccination",
              "variable" : "vaccination"
            }],
            "dependent" : [{
              "name" : "VtoCoreDataSetVS",
              "variable" : ["v", "vaccination"]
            }]
          },
          {
            "name" : "set outentry",
            "source" : [{
              "context" : "v"
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
        },
        {
          "name" : "t",
          "source" : [{
            "context" : "dcc",
            "element" : "t",
            "variable" : "t"
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
            "name" : "set DDCC",
            "source" : [{
              "context" : "t"
            }],
            "dependent" : [{
              "name" : "DCCtoCoreDataSet",
              "variable" : ["dcc", "ddcc"]
            }]
          },
          {
            "name" : "set certificate",
            "source" : [{
              "context" : "t"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "certificate",
              "variable" : "certificate"
            }],
            "dependent" : [{
              "name" : "CertDCCtoCoreDataSetCertificate",
              "variable" : ["src", "dcc", "t", "certificate"]
            }]
          },
          {
            "name" : "set test",
            "source" : [{
              "context" : "t"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "test",
              "variable" : "test"
            }],
            "dependent" : [{
              "name" : "TtoCoreDataSetTR",
              "variable" : ["t", "test"]
            }]
          },
          {
            "name" : "set outentry",
            "source" : [{
              "context" : "t"
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
    "name" : "DCCtoCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "dcc",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set birthDate",
      "source" : [{
        "context" : "dcc",
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
      "name" : "nam",
      "source" : [{
        "context" : "dcc",
        "element" : "nam",
        "variable" : "nam"
      }],
      "rule" : [{
        "name" : "set given name",
        "source" : [{
          "context" : "nam",
          "element" : "gn",
          "variable" : "given"
        }],
        "target" : [{
          "context" : "ddcc",
          "contextType" : "variable",
          "element" : "name",
          "transform" : "evaluate",
          "parameter" : [{
            "valueString" : "given.replaceMatches('$', ' ')"
          }]
        }]
      },
      {
        "name" : "add family name",
        "source" : [{
          "context" : "nam",
          "element" : "fn",
          "variable" : "family"
        }],
        "target" : [{
          "context" : "ddcc",
          "contextType" : "variable",
          "element" : "name",
          "variable" : "tName"
        },
        {
          "context" : "ddcc",
          "contextType" : "variable",
          "element" : "name",
          "transform" : "append",
          "parameter" : [{
            "valueId" : "tName"
          },
          {
            "valueId" : "family"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CertDCCtoCoreDataSetCertificate",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CWTPayload",
      "mode" : "source"
    },
    {
      "name" : "dcc",
      "mode" : "source"
    },
    {
      "name" : "g",
      "mode" : "source"
    },
    {
      "name" : "certificate",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set period",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "period",
        "variable" : "period",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Period"
        }]
      }],
      "dependent" : [{
        "name" : "CwtToPeriod",
        "variable" : ["src", "period"]
      }]
    },
    {
      "name" : "set version",
      "source" : [{
        "context" : "dcc",
        "element" : "ver",
        "variable" : "ver"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "version",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ver"
        }]
      }]
    },
    {
      "name" : "set hcid",
      "source" : [{
        "context" : "g",
        "element" : "ci",
        "variable" : "ci"
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
          "valueId" : "ci"
        }]
      }]
    },
    {
      "name" : "set issuer",
      "source" : [{
        "context" : "g",
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
    "name" : "CwtToPeriod",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CWTPayload",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Period",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set period start",
      "source" : [{
        "context" : "src",
        "element" : "6",
        "variable" : "iat"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "epoch",
        "transform" : "append",
        "parameter" : [{
          "valueId" : "iat"
        },
        {
          "valueString" : " seconds"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "start",
        "transform" : "evaluate",
        "parameter" : [{
          "valueString" : "@1970-01-01T00:00:00.000+00:00 + epoch.toQuantity()"
        }]
      }]
    },
    {
      "name" : "set period end",
      "source" : [{
        "context" : "src",
        "element" : "4",
        "variable" : "exp"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "epoch",
        "transform" : "append",
        "parameter" : [{
          "valueId" : "exp"
        },
        {
          "valueString" : " seconds"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "end",
        "transform" : "evaluate",
        "parameter" : [{
          "valueString" : "@1970-01-01T00:00:00.000+00:00 + epoch.toQuantity()"
        }]
      }]
    }]
  },
  {
    "name" : "VtoCoreDataSetVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "v",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set target disease",
      "source" : [{
        "context" : "v",
        "element" : "tg",
        "variable" : "tg"
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
          "valueString" : "http://snomed.info/sct"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "tg"
        }]
      }]
    },
    {
      "name" : "set vaccine",
      "source" : [{
        "context" : "v",
        "element" : "vp",
        "variable" : "vp"
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
          "valueString" : "https://ec.europa.eu/health/documents/community-register/html/"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "vp"
        }]
      }]
    },
    {
      "name" : "mp",
      "source" : [{
        "context" : "v",
        "element" : "mp",
        "variable" : "mp"
      }],
      "rule" : [{
        "name" : "set default brand",
        "source" : [{
          "context" : "mp"
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
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://id.uvci.eu/valuesets/vaccine-medicinal-product.json"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "mp"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "mp"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "https://ec.europa.eu/health/documents/community-register/html/"
          },
          {
            "valueId" : "mp"
          }]
        }],
        "rule" : [{
          "name" : "translate COVID19 brand",
          "source" : [{
            "context" : "mp",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/vaccine-covid19-euur')"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "brand",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-euur-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set maholder",
      "source" : [{
        "context" : "v",
        "element" : "ma",
        "variable" : "ma"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "maholder",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://id.uvci.eu/valuesets/vaccine-mah-manf.json"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ma"
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "v",
        "element" : "dt",
        "variable" : "date"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "date",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "date"
        }]
      }]
    },
    {
      "name" : "set dose",
      "source" : [{
        "context" : "v",
        "element" : "dn",
        "variable" : "dose"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "dose",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dose"
        }]
      }]
    },
    {
      "name" : "set totalDoses",
      "source" : [{
        "context" : "v",
        "element" : "sd",
        "variable" : "totalDoses"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "totalDoses",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "totalDoses"
        }]
      }]
    },
    {
      "name" : "set country",
      "source" : [{
        "context" : "v",
        "element" : "co",
        "variable" : "co"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "country",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "co"
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
  },
  {
    "name" : "TtoCoreDataSetTR",
    "typeMode" : "none",
    "input" : [{
      "name" : "t",
      "mode" : "source"
    },
    {
      "name" : "test",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "tg",
      "source" : [{
        "context" : "t",
        "element" : "tg",
        "variable" : "tg"
      }],
      "rule" : [{
        "name" : "set default pathogen",
        "source" : [{
          "context" : "tg"
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
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tg"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "tg"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          },
          {
            "valueId" : "tg"
          }]
        }],
        "rule" : [{
          "name" : "translate COVID19 pathogen",
          "source" : [{
            "context" : "tg",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-pathogen-covid19-snomed')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "pathogen",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-pathogen-snomed-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "tt",
      "source" : [{
        "context" : "t",
        "element" : "tt",
        "variable" : "tt"
      }],
      "rule" : [{
        "name" : "set default type",
        "source" : [{
          "context" : "tt"
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
            "valueId" : "tt"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "tt"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://loinc.org"
          },
          {
            "valueId" : "tt"
          }]
        }],
        "rule" : [{
          "name" : "translate COVID19 type",
          "source" : [{
            "context" : "tt",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-type-covid19-loinc')"
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
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-covid19-loinc-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set brand",
      "source" : [{
        "context" : "t",
        "element" : "nm",
        "variable" : "nm"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "brand",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://id.uvci.eu/valuesets/test-manf.json"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "nm"
        }]
      }]
    },
    {
      "name" : "set manufacturer",
      "source" : [{
        "context" : "t",
        "element" : "ma",
        "variable" : "ma"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "manufacturer",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://covid-19-diagnostics.jrc.ec.europa.eu/devices"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ma"
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "t",
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
      "name" : "tr",
      "source" : [{
        "context" : "t",
        "element" : "tr",
        "variable" : "tr"
      }],
      "rule" : [{
        "name" : "set default result",
        "source" : [{
          "context" : "tr"
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
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tr"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "tr"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://snomed.info/sct"
          },
          {
            "valueId" : "tr"
          }]
        }],
        "rule" : [{
          "name" : "translate COVID19 result",
          "source" : [{
            "context" : "tr",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-qual-result-snomed')"
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
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-qual-result-snomed-to-icd11"
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
        "context" : "t",
        "element" : "tc",
        "variable" : "tc"
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
          "valueId" : "tc"
        }]
      }]
    },
    {
      "name" : "set country",
      "source" : [{
        "context" : "t",
        "element" : "co",
        "variable" : "co"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "country",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "co"
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
}

```
