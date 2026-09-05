# SHCToCoreDataSetTR - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SHCToCoreDataSetTR**

## StructureMap: SHCToCoreDataSetTR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/SHCToCoreDataSetTR | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:SHCToCoreDataSetTR |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SHCToCoreDataSetTR",
  "url" : "http://smart.who.int/ddcc/StructureMap/SHCToCoreDataSetTR",
  "version" : "1.0.0",
  "name" : "SHCToCoreDataSetTR",
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
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-infectious-disease-laboratory-bundle-dm",
    "mode" : "source",
    "alias" : "SHCLabBundleDM"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-patient-general-dm",
    "mode" : "source",
    "alias" : "SHCPatientDM"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-infectious-disease-laboratory-result-observation-dm",
    "mode" : "source",
    "alias" : "SHCLabDM"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "DDCCBundle"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetTR",
    "mode" : "target",
    "alias" : "DDCCTR"
  }],
  "group" : [{
    "name" : "SHCToTR",
    "typeMode" : "none",
    "input" : [{
      "name" : "shc",
      "type" : "SHCLabBundleDM",
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
            }],
            "documentation" : "entry.resource : Immunization as immunization where vaccineCode.memberOf('http://smart.who.int/ddcc/ValueSet/who-ddcc-allowed-vaccines-covid-19') ->  ddccBundle.entry as outentry,  create('http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS') as ddcc then {"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "PatientToDDCCTR",
    "typeMode" : "none",
    "input" : [{
      "name" : "patient",
      "type" : "SHCPatientDM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "DDCCTR",
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
    "name" : "LabToDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "lab",
      "type" : "SHCLabDM",
      "mode" : "source"
    },
    {
      "name" : "test",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "code",
      "source" : [{
        "context" : "lab",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "coding",
        "source" : [{
          "context" : "code",
          "element" : "coding",
          "listMode" : "first",
          "variable" : "labType"
        }],
        "rule" : [{
          "name" : "set default type",
          "source" : [{
            "context" : "labType"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "type",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "labType"
            }]
          }]
        },
        {
          "name" : "translate loinc type",
          "source" : [{
            "context" : "labType",
            "condition" : "labType.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-type-covid19-loinc')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "type",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "labType"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-covid19-loinc-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        },
        {
          "name" : "set pathogen to COVID",
          "source" : [{
            "context" : "labType",
            "condition" : "labType.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-type-covid19-loinc')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "pathogen",
            "transform" : "c",
            "parameter" : [{
              "valueString" : "http://id.who.int/icd11/mms"
            },
            {
              "valueString" : "XN109"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "lab",
        "element" : "effectiveDateTime",
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
      "name" : "valueCodeableConcept",
      "source" : [{
        "context" : "lab",
        "element" : "valueCodeableConcept",
        "variable" : "value"
      }],
      "rule" : [{
        "name" : "coding",
        "source" : [{
          "context" : "value",
          "element" : "coding",
          "listMode" : "first",
          "variable" : "result"
        }],
        "rule" : [{
          "name" : "set default result",
          "source" : [{
            "context" : "result"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "result",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "result"
            }]
          }]
        },
        {
          "name" : "translate snomed result",
          "source" : [{
            "context" : "result",
            "condition" : "result.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-qual-result-snomed')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "result",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "result"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-qual-result-snomed-to-icd11"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
