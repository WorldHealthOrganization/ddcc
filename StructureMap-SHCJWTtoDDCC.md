# SHCJWTtoDDCC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SHCJWTtoDDCC**

## StructureMap: SHCJWTtoDDCC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertSHCtoDDCC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:SHCJWTtoDDCC |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SHCJWTtoDDCC",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertSHCtoDDCC",
  "version" : "1.0.0",
  "name" : "SHCJWTtoDDCC",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertSHC",
    "mode" : "source",
    "alias" : "JWTPayload"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc/StructureDefinition/vc",
    "mode" : "source",
    "alias" : "VC"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc/StructureDefinition/creadential-subject",
    "mode" : "source",
    "alias" : "CredentialSubject"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "SHCtoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "JWTPayload",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set bundle type",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "transaction"
        }]
      }]
    },
    {
      "name" : "Patient and Composition Create",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "comp",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Composition"
        }]
      }],
      "rule" : [{
        "name" : "Certificate",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "ExtractCert",
          "variable" : ["src", "bundle", "comp"]
        }]
      },
      {
        "name" : "Composition",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "ExtractComposition",
          "variable" : ["src", "comp"]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractCert",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "JWTPayload",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    },
    {
      "name" : "comp",
      "type" : "Composition",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Org Create",
      "source" : [{
        "context" : "src",
        "element" : "vc",
        "variable" : "vc"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entryOrg"
      },
      {
        "context" : "entryOrg",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "org",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Organization"
        }]
      },
      {
        "contextType" : "variable",
        "variable" : "oid",
        "transform" : "uuid"
      }],
      "rule" : [{
        "name" : "Organization ID",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "org",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "oid"
          }]
        }]
      },
      {
        "name" : "Composition.Set org",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "author",
          "variable" : "author"
        },
        {
          "context" : "author",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "Organization/"
          },
          {
            "valueId" : "oid"
          }]
        }]
      },
      {
        "name" : "Set Organization name",
        "source" : [{
          "context" : "src",
          "element" : "iss",
          "variable" : "iss"
        }],
        "target" : [{
          "context" : "org",
          "contextType" : "variable",
          "element" : "identifier",
          "variable" : "identif"
        },
        {
          "context" : "identif",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "iss"
          }]
        }]
      },
      {
        "name" : "SHC Credential Subject",
        "source" : [{
          "context" : "vc",
          "element" : "credentialSubject",
          "variable" : "credentialSubject"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable"
        }],
        "rule" : [{
          "name" : "SHC FhirBundle",
          "source" : [{
            "context" : "credentialSubject",
            "element" : "fhirBundle",
            "variable" : "fhirBundle"
          }],
          "target" : [{
            "context" : "bundle",
            "contextType" : "variable"
          }],
          "rule" : [{
            "name" : "for each entry",
            "source" : [{
              "context" : "fhirBundle",
              "element" : "entry",
              "variable" : "bundleEntrySHC"
            }],
            "rule" : [{
              "name" : "patient filter",
              "source" : [{
                "context" : "bundleEntrySHC",
                "type" : "Patient",
                "element" : "resource",
                "listMode" : "first",
                "variable" : "patientSHC"
              }],
              "rule" : [{
                "name" : "Composition.Set patient",
                "source" : [{
                  "context" : "bundleEntrySHC",
                  "element" : "fullUrl",
                  "variable" : "ref"
                }],
                "target" : [{
                  "context" : "comp",
                  "contextType" : "variable",
                  "element" : "subject",
                  "variable" : "subj"
                },
                {
                  "context" : "subj",
                  "contextType" : "variable",
                  "element" : "reference",
                  "transform" : "append",
                  "parameter" : [{
                    "valueString" : "Patient/"
                  },
                  {
                    "valueId" : "ref"
                  }]
                }]
              }]
            },
            {
              "name" : "adding resource to bundle",
              "source" : [{
                "context" : "bundleEntrySHC",
                "element" : "resource",
                "variable" : "anyRes"
              }],
              "target" : [{
                "context" : "bundle",
                "contextType" : "variable",
                "element" : "entry",
                "variable" : "entry"
              },
              {
                "context" : "entry",
                "contextType" : "variable",
                "element" : "resource",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "anyRes"
                }]
              }]
            }]
          },
          {
            "name" : "SHC Immunization Section",
            "source" : [{
              "context" : "src",
              "condition" : "fhirBundle.entry.resource.ofType(Immunization).exists()"
            }],
            "target" : [{
              "context" : "comp",
              "contextType" : "variable",
              "element" : "section",
              "variable" : "section"
            }],
            "rule" : [{
              "name" : "Adding code to imm section",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "section",
                "contextType" : "variable",
                "element" : "code",
                "variable" : "code"
              },
              {
                "context" : "code",
                "contextType" : "variable",
                "element" : "coding",
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
                  "valueString" : "11369-6"
                }]
              },
              {
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "History of Immunization Narrative"
                }]
              }]
            },
            {
              "name" : "assing org entry to section",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "section",
                "contextType" : "variable",
                "element" : "author",
                "variable" : "author"
              },
              {
                "context" : "author",
                "contextType" : "variable",
                "element" : "reference",
                "transform" : "append",
                "parameter" : [{
                  "valueString" : "Organization/"
                },
                {
                  "valueId" : "oid"
                }]
              }]
            },
            {
              "name" : "Each entry",
              "source" : [{
                "context" : "fhirBundle",
                "element" : "entry",
                "variable" : "bundleEntrySHC"
              }],
              "rule" : [{
                "name" : "assign immunization to composition",
                "source" : [{
                  "context" : "bundleEntrySHC",
                  "type" : "Immunization",
                  "element" : "resource",
                  "variable" : "immunizationSHC"
                }],
                "rule" : [{
                  "name" : "add imm section",
                  "source" : [{
                    "context" : "bundleEntrySHC",
                    "element" : "fullUrl",
                    "variable" : "ref"
                  }],
                  "target" : [{
                    "context" : "section",
                    "contextType" : "variable",
                    "element" : "entry",
                    "variable" : "entry"
                  },
                  {
                    "context" : "entry",
                    "contextType" : "variable",
                    "element" : "reference",
                    "transform" : "append",
                    "parameter" : [{
                      "valueString" : "Immunization/"
                    },
                    {
                      "valueId" : "ref"
                    }]
                  }]
                }]
              }]
            }]
          },
          {
            "name" : "SHC Observation Section",
            "source" : [{
              "context" : "src",
              "condition" : "fhirBundle.entry.resource.ofType(Observation).exists()"
            }],
            "target" : [{
              "context" : "comp",
              "contextType" : "variable",
              "element" : "section",
              "variable" : "section"
            }],
            "rule" : [{
              "name" : "Adding code to obs section",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "section",
                "contextType" : "variable",
                "element" : "code",
                "variable" : "code"
              },
              {
                "context" : "code",
                "contextType" : "variable",
                "element" : "coding",
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
                  "valueString" : "30954-2"
                }]
              },
              {
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Results (Diagnostic findings)"
                }]
              }]
            },
            {
              "name" : "assing org entry to section",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "section",
                "contextType" : "variable",
                "element" : "author",
                "variable" : "author"
              },
              {
                "context" : "author",
                "contextType" : "variable",
                "element" : "reference",
                "transform" : "append",
                "parameter" : [{
                  "valueString" : "Organization/"
                },
                {
                  "valueId" : "oid"
                }]
              }]
            },
            {
              "name" : "Entry Obs",
              "source" : [{
                "context" : "fhirBundle",
                "element" : "entry",
                "variable" : "bundleEntrySHC"
              }],
              "rule" : [{
                "name" : "assign immunization to composition",
                "source" : [{
                  "context" : "bundleEntrySHC",
                  "type" : "Observation",
                  "element" : "resource",
                  "variable" : "observationSHC"
                }],
                "rule" : [{
                  "name" : "add obs section",
                  "source" : [{
                    "context" : "bundleEntrySHC",
                    "element" : "fullUrl",
                    "variable" : "ref"
                  }],
                  "target" : [{
                    "context" : "section",
                    "contextType" : "variable",
                    "element" : "entry",
                    "variable" : "entry"
                  },
                  {
                    "context" : "entry",
                    "contextType" : "variable",
                    "element" : "reference",
                    "transform" : "append",
                    "parameter" : [{
                      "valueString" : "Observation/"
                    },
                    {
                      "valueId" : "ref"
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
    "name" : "ExtractComposition",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Data",
      "mode" : "source"
    },
    {
      "name" : "composition",
      "type" : "Composition",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Title",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "composition",
        "contextType" : "variable",
        "element" : "title",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "International Certificate of Vaccination or Prophylaxis"
        }]
      }]
    },
    {
      "name" : "set category",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "composition",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "category"
      },
      {
        "context" : "category",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "coding"
      }],
      "rule" : [{
        "name" : "Category",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "ddcc-vs"
          }]
        }]
      }]
    },
    {
      "name" : "set type",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "composition",
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
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Immunization summary report"
          }]
        }]
      }]
    },
    {
      "name" : "Extract Period",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "composition",
        "contextType" : "variable",
        "element" : "event",
        "variable" : "event"
      },
      {
        "context" : "event",
        "contextType" : "variable",
        "element" : "period",
        "variable" : "period",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Period"
        }]
      }],
      "dependent" : [{
        "name" : "ExtractPeriod",
        "variable" : ["src", "period"]
      }]
    }]
  },
  {
    "name" : "ExtractPeriod",
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
      "name" : "Start notBefore",
      "source" : [{
        "context" : "src",
        "element" : "nbf",
        "variable" : "nbf"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "start",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "nbf"
        }]
      }]
    },
    {
      "name" : "Start issuedAt",
      "source" : [{
        "context" : "src",
        "element" : "iat",
        "variable" : "iat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "start",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "iat"
        }]
      }]
    },
    {
      "name" : "End expiration",
      "source" : [{
        "context" : "src",
        "element" : "exp",
        "variable" : "exp"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "end",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "exp"
        }]
      }]
    }]
  }]
}

```
