# CertSHCtoCoreDataSet - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CertSHCtoCoreDataSet**

## StructureMap: CertSHCtoCoreDataSet 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertSHCtoCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CertSHCtoCoreDataSet |

 
Structure map transforming CertSHC logical model to bundle of Core Data Set logical model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CertSHCtoCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertSHCtoCoreDataSet",
  "version" : "1.0.0",
  "name" : "CertSHCtoCoreDataSet",
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
  "description" : "Structure map transforming CertSHC logical model to bundle of Core Data Set logical model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertSHC",
    "mode" : "source",
    "alias" : "JWTPayload"
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
  }],
  "import" : ["http://smart.who.int/ddcc/StructureMap/SHCToCoreDataSetVS",
  "http://smart.who.int/ddcc/StructureMap/SHCToCoreDataSetTR"],
  "group" : [{
    "name" : "CertSHCtoCoreDataSetBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "JWTPayload",
      "mode" : "source"
    },
    {
      "name" : "ddccBundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "vc",
      "source" : [{
        "context" : "src",
        "element" : "vc",
        "variable" : "vc"
      }],
      "rule" : [{
        "name" : "credentialSubject",
        "source" : [{
          "context" : "vc",
          "element" : "credentialSubject",
          "variable" : "credentialSubject"
        }],
        "rule" : [{
          "name" : "fhirBundle",
          "source" : [{
            "context" : "credentialSubject",
            "element" : "fhirBundle",
            "variable" : "fhirBundle"
          }],
          "rule" : [{
            "name" : "find patient",
            "source" : [{
              "context" : "fhirBundle",
              "element" : "entry",
              "variable" : "patientEntrySHC"
            }],
            "rule" : [{
              "name" : "get patient",
              "source" : [{
                "context" : "patientEntrySHC",
                "type" : "Patient",
                "element" : "resource",
                "listMode" : "first",
                "variable" : "patient"
              }],
              "rule" : [{
                "name" : "entries",
                "source" : [{
                  "context" : "fhirBundle",
                  "element" : "entry",
                  "variable" : "entry"
                }],
                "rule" : [{
                  "name" : "immunizations",
                  "source" : [{
                    "context" : "entry",
                    "type" : "Immunization",
                    "element" : "resource",
                    "variable" : "immunization"
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
                    "name" : "set patient",
                    "source" : [{
                      "context" : "immunization"
                    }],
                    "dependent" : [{
                      "name" : "PatientToDDCCVS",
                      "variable" : ["patient", "ddcc"]
                    }]
                  },
                  {
                    "name" : "set vaccination",
                    "source" : [{
                      "context" : "immunization"
                    }],
                    "target" : [{
                      "context" : "ddcc",
                      "contextType" : "variable",
                      "element" : "vaccination",
                      "variable" : "vaccination"
                    }],
                    "dependent" : [{
                      "name" : "ImmunizationToDDCC",
                      "variable" : ["immunization", "vaccination"]
                    }]
                  },
                  {
                    "name" : "set ddcc",
                    "source" : [{
                      "context" : "immunization"
                    }],
                    "dependent" : [{
                      "name" : "CertSHCtoCoreDataSet",
                      "variable" : ["src", "ddcc"]
                    }]
                  },
                  {
                    "name" : "set outentry",
                    "source" : [{
                      "context" : "immunization"
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
                  "name" : "labs",
                  "source" : [{
                    "context" : "entry",
                    "type" : "Observation",
                    "element" : "resource",
                    "variable" : "lab"
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
                    "name" : "set patient",
                    "source" : [{
                      "context" : "lab"
                    }],
                    "dependent" : [{
                      "name" : "PatientToDDCCTR",
                      "variable" : ["patient", "ddcc"]
                    }]
                  },
                  {
                    "name" : "set test",
                    "source" : [{
                      "context" : "lab"
                    }],
                    "target" : [{
                      "context" : "ddcc",
                      "contextType" : "variable",
                      "element" : "test",
                      "variable" : "test"
                    }],
                    "dependent" : [{
                      "name" : "LabToDDCC",
                      "variable" : ["lab", "test"]
                    }]
                  },
                  {
                    "name" : "set ddcc",
                    "source" : [{
                      "context" : "lab"
                    }],
                    "dependent" : [{
                      "name" : "CertSHCtoCoreDataSet",
                      "variable" : ["src", "ddcc"]
                    }]
                  },
                  {
                    "name" : "set outentry",
                    "source" : [{
                      "context" : "lab"
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
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CertSHCtoCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "JWTPayload",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "certificate",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "certificate",
        "variable" : "cert"
      }],
      "rule" : [{
        "name" : "issuer",
        "source" : [{
          "context" : "src",
          "element" : "iss"
        }],
        "target" : [{
          "context" : "cert",
          "contextType" : "variable",
          "element" : "issuer",
          "variable" : "issuer",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        }],
        "rule" : [{
          "name" : "set issuer",
          "source" : [{
            "context" : "src",
            "element" : "iss",
            "variable" : "iss"
          }],
          "target" : [{
            "context" : "issuer",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "iss"
            }]
          }]
        }]
      },
      {
        "name" : "period",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cert",
          "contextType" : "variable",
          "element" : "period",
          "variable" : "period",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Period"
          }]
        }],
        "rule" : [{
          "name" : "set period",
          "source" : [{
            "context" : "src"
          }],
          "dependent" : [{
            "name" : "JwtToPeriod",
            "variable" : ["src", "period"]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "JwtToPeriod",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "JWTPayload",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Period",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set period start to notBefore",
      "source" : [{
        "context" : "src",
        "element" : "nbf",
        "variable" : "nbf"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "epoch",
        "transform" : "append",
        "parameter" : [{
          "valueId" : "nbf"
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
      "name" : "set period start to  issuedAt",
      "source" : [{
        "context" : "src",
        "element" : "iat",
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
        "element" : "exp",
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
  }]
}

```
