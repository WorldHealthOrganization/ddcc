# SHCToCoreDataSetVS - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SHCToCoreDataSetVS**

## StructureMap: SHCToCoreDataSetVS 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/SHCToCoreDataSetVS | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:SHCToCoreDataSetVS |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SHCToCoreDataSetVS",
  "url" : "http://smart.who.int/ddcc/StructureMap/SHCToCoreDataSetVS",
  "version" : "1.0.0",
  "name" : "SHCToCoreDataSetVS",
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
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-vaccination-bundle-dm",
    "mode" : "source",
    "alias" : "SHCVaccinationBundleDM"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-patient-general-dm",
    "mode" : "source",
    "alias" : "SHCPatientDM"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-vaccination-dm",
    "mode" : "source",
    "alias" : "SHCImmunizationDM"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "DDCCBundle"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS",
    "mode" : "target",
    "alias" : "DDCCVS"
  }],
  "group" : [{
    "name" : "SHCToVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "shc",
      "type" : "SHCVaccinationBundleDM",
      "mode" : "source"
    },
    {
      "name" : "ddccBundle",
      "type" : "DDCCBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "find patient",
      "source" : [{
        "context" : "shc",
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
            "context" : "shc",
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
            }],
            "documentation" : "entry.resource : Immunization as immunization where vaccineCode.memberOf('http://smart.who.int/ddcc/ValueSet/who-ddcc-allowed-vaccines-covid-19') ->  ddccBundle.entry as outentry,  create('http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS') as ddcc then {"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "PatientToDDCCVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "patient",
      "type" : "SHCPatientDM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "DDCCVS",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set name",
      "source" : [{
        "context" : "patient",
        "element" : "name",
        "variable" : "name"
      }],
      "dependent" : [{
        "name" : "NameToText",
        "variable" : ["name", "tgt"]
      }]
    },
    {
      "name" : "set birthDate",
      "source" : [{
        "context" : "patient",
        "element" : "birthDate",
        "variable" : "birthDate"
      }],
      "target" : [{
        "context" : "tgt",
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
        "context" : "patient",
        "element" : "identifier",
        "listMode" : "first",
        "variable" : "identifier"
      }],
      "target" : [{
        "context" : "tgt",
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
    "name" : "NameToText",
    "typeMode" : "none",
    "input" : [{
      "name" : "name",
      "type" : "HumanName",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set first name",
      "source" : [{
        "context" : "name",
        "element" : "given",
        "listMode" : "first",
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
      }],
      "documentation" : "append doesn't work until ddcc.name is set"
    },
    {
      "name" : "set other names",
      "source" : [{
        "context" : "name",
        "element" : "given",
        "listMode" : "not_first",
        "variable" : "other"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "tName"
      },
      {
        "contextType" : "variable",
        "variable" : "spaced",
        "transform" : "evaluate",
        "parameter" : [{
          "valueString" : "other.replaceMatches('$', ' ')"
        }]
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
          "valueId" : "spaced"
        }]
      }],
      "documentation" : "name.given not_first as other -> ddcc.name as tName, ddcc.name = append( tName, other ) \"set other names\";"
    },
    {
      "name" : "add family name",
      "source" : [{
        "context" : "name",
        "element" : "family",
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
    },
    {
      "name" : "set full name",
      "source" : [{
        "context" : "name",
        "element" : "text",
        "variable" : "text"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "text"
        }]
      }]
    }]
  },
  {
    "name" : "ImmunizationToDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "immunization",
      "type" : "SHCImmunizationDM",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "vaccineCode",
      "source" : [{
        "context" : "immunization",
        "element" : "vaccineCode",
        "variable" : "vaccine"
      }],
      "rule" : [{
        "name" : "coding",
        "source" : [{
          "context" : "vaccine",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "set default vaccine",
          "source" : [{
            "context" : "coding"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "vaccine",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "coding"
            }]
          }]
        },
        {
          "name" : "set default brand",
          "source" : [{
            "context" : "coding"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "brand",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "coding"
            }]
          }]
        },
        {
          "name" : "translate COVID CVX vaccine",
          "source" : [{
            "context" : "coding",
            "condition" : "coding.memberOf('http://smart.who.int/ddcc/ValueSet/vaccine-covid19-cvx')"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "vaccine",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coding"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-cvx-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        },
        {
          "name" : "translate COVID SNOMED vaccine",
          "source" : [{
            "context" : "coding",
            "condition" : "coding.memberOf('http://smart.who.int/ddcc/ValueSet/vaccine-covid19-snomed')"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "vaccine",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coding"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-snomed-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "manufacturer",
      "source" : [{
        "context" : "immunization",
        "element" : "manufacturer",
        "variable" : "tman"
      }],
      "rule" : [{
        "name" : "set manufacturer id",
        "source" : [{
          "context" : "tman",
          "element" : "identifier",
          "variable" : "identifier"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "manufacturer",
          "variable" : "manufacturer"
        }],
        "rule" : [{
          "name" : "set manufacturer system",
          "source" : [{
            "context" : "identifier",
            "element" : "system",
            "variable" : "system"
          }],
          "target" : [{
            "context" : "manufacturer",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "system"
            }]
          }]
        },
        {
          "name" : "set manufacturer value",
          "source" : [{
            "context" : "identifier",
            "element" : "value",
            "variable" : "value"
          }],
          "target" : [{
            "context" : "manufacturer",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "value"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set lot",
      "source" : [{
        "context" : "immunization",
        "element" : "lotNumber",
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
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "immunization",
        "element" : "occurrence",
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
      "name" : "performer",
      "source" : [{
        "context" : "immunization",
        "element" : "performer",
        "variable" : "performer"
      }],
      "rule" : [{
        "name" : "actor",
        "source" : [{
          "context" : "performer",
          "element" : "actor",
          "variable" : "actor"
        }],
        "rule" : [{
          "name" : "set centre",
          "source" : [{
            "context" : "actor",
            "element" : "display",
            "variable" : "centre"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "centre",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "centre"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
