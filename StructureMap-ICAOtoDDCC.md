# ICAOtoDDCC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICAOtoDDCC**

## StructureMap: ICAOtoDDCC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertICAOtoDDCC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:ICAOtoDDCC |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "ICAOtoDDCC",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertICAOtoDDCC",
  "version" : "1.0.0",
  "name" : "ICAOtoDDCC",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertICAO",
    "mode" : "source",
    "alias" : "IJson"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/Data",
    "mode" : "source",
    "alias" : "Data"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/Header",
    "mode" : "source",
    "alias" : "Header"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/Message",
    "mode" : "source",
    "alias" : "Message"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/Patient",
    "mode" : "source",
    "alias" : "Patient"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/VaccinationEvent",
    "mode" : "source",
    "alias" : "VaccinationEvent"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/VaccinationDetails",
    "mode" : "source",
    "alias" : "VaccinationDetails"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/ServiceProvider",
    "mode" : "source",
    "alias" : "ServiceProvider"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/Contact",
    "mode" : "source",
    "alias" : "Contact"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/DateTimeTestReport",
    "mode" : "source",
    "alias" : "DateTimeTestReport"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/TestResult",
    "mode" : "source",
    "alias" : "TestResult"
  },
  {
    "url" : "http://hl7.org/fhir/ig/icao/StructureDefinition/Signature",
    "mode" : "source",
    "alias" : "Signature"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "ICAOtoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "IJson",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Base Rule",
      "source" : [{
        "context" : "src",
        "element" : "data",
        "variable" : "data"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "ExtractData",
        "variable" : ["data", "bundle"]
      }]
    }]
  },
  {
    "name" : "ExtractData",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Data",
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
      "type" : "Data",
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
      "name" : "Patient Create",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "comp",
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
        "variable" : "patient",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Patient"
        }]
      },
      {
        "contextType" : "variable",
        "variable" : "pid",
        "transform" : "uuid"
      }],
      "rule" : [{
        "name" : "extract patient",
        "source" : [{
          "context" : "src",
          "element" : "msg",
          "variable" : "msg"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "ExtractPatientFromMsg",
          "variable" : ["msg", "pid", "patient"]
        }]
      },
      {
        "name" : "Composition.Set patient",
        "source" : [{
          "context" : "src"
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
            "valueId" : "pid"
          }]
        }]
      },
      {
        "name" : "Immunization Create",
        "source" : [{
          "context" : "src",
          "element" : "msg",
          "variable" : "msg",
          "condition" : "src.hdr.t = 'icao.vacc'"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable"
        },
        {
          "context" : "comp",
          "contextType" : "variable",
          "element" : "section",
          "variable" : "section"
        }],
        "rule" : [{
          "name" : "add section",
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
          "name" : "Imminization Create msg",
          "source" : [{
            "context" : "msg",
            "element" : "ve",
            "variable" : "vac"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable"
          }],
          "rule" : [{
            "name" : "Imminization Create vac",
            "source" : [{
              "context" : "vac",
              "element" : "vd",
              "variable" : "vacDetails"
            }],
            "target" : [{
              "context" : "comp",
              "contextType" : "variable"
            },
            {
              "context" : "bundle",
              "contextType" : "variable",
              "element" : "entry",
              "variable" : "entryImm"
            },
            {
              "context" : "entryImm",
              "contextType" : "variable",
              "element" : "resource",
              "variable" : "immunization",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Immunization"
              }]
            },
            {
              "contextType" : "variable",
              "variable" : "iid",
              "transform" : "uuid"
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
              "name" : "Immunization ID",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "immunization",
                "contextType" : "variable",
                "element" : "id",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "iid"
                }]
              }]
            },
            {
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
              "name" : "add author immunization to section ",
              "source" : [{
                "context" : "src"
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
                  "valueId" : "iid"
                }]
              },
              {
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
              "name" : "Immunization.Set patient",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "immunization",
                "contextType" : "variable",
                "element" : "patient",
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
                  "valueId" : "pid"
                }]
              }]
            },
            {
              "name" : "Set Organization name",
              "source" : [{
                "context" : "vacDetails",
                "element" : "adm",
                "variable" : "adm"
              }],
              "target" : [{
                "context" : "org",
                "contextType" : "variable",
                "element" : "name",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "adm"
                }]
              }]
            },
            {
              "name" : "extract vaccine info",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "bundle",
                "contextType" : "variable"
              }],
              "dependent" : [{
                "name" : "ExtractVaccine",
                "variable" : ["vac", "vacDetails", "oid", "immunization"]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractVaccine",
    "typeMode" : "none",
    "input" : [{
      "name" : "vac",
      "type" : "VaccinationEvent",
      "mode" : "source"
    },
    {
      "name" : "vacDetails",
      "type" : "VaccinationDetails",
      "mode" : "source"
    },
    {
      "name" : "oid",
      "mode" : "source"
    },
    {
      "name" : "immunization",
      "type" : "Immunization",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set occurrence date",
      "source" : [{
        "context" : "vacDetails",
        "element" : "dvc",
        "variable" : "dvc"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "occurrence",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dvc"
        }]
      }]
    },
    {
      "name" : "set vaccine coding",
      "source" : [{
        "context" : "vac",
        "element" : "des",
        "variable" : "des"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "vaccineCode",
        "variable" : "type"
      },
      {
        "context" : "type",
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
          "valueString" : "http://hl7.org/fhir/sid/icd-11"
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
        "context" : "vac",
        "element" : "nam",
        "variable" : "nam"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      },
      {
        "context" : "ext",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "coding",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "ext",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ddcc/StructureDefinition/DDCCVaccineBrand"
        }]
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
      "name" : "set country",
      "source" : [{
        "context" : "vacDetails",
        "element" : "ctr",
        "variable" : "co"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      },
      {
        "context" : "ext",
        "contextType" : "variable",
        "element" : "value",
        "variable" : "coding",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "ext",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfVaccination"
        }]
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
    },
    {
      "name" : "set lot number",
      "source" : [{
        "context" : "vacDetails",
        "element" : "lot",
        "variable" : "lot"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "lotNumber",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "lot"
        }]
      }]
    },
    {
      "name" : "set protocol applied vac",
      "source" : [{
        "context" : "vac"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "protocolApplied",
        "variable" : "protocolApplied"
      }],
      "rule" : [{
        "name" : "set protocol applied vacdetails",
        "source" : [{
          "context" : "vacDetails"
        }],
        "target" : [{
          "context" : "protocolApplied",
          "contextType" : "variable"
        }],
        "rule" : [{
          "name" : "set protocol applied",
          "source" : [{
            "context" : "vac"
          }],
          "target" : [{
            "context" : "protocolApplied",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "ExtractProtocolApplied",
            "variable" : ["vac", "vacDetails", "oid", "protocolApplied"]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractProtocolApplied",
    "typeMode" : "none",
    "input" : [{
      "name" : "vac",
      "type" : "VaccinationEvent",
      "mode" : "source"
    },
    {
      "name" : "vacDetails",
      "type" : "VaccinationDetails",
      "mode" : "source"
    },
    {
      "name" : "oid",
      "mode" : "source"
    },
    {
      "name" : "protocol",
      "type" : "ProtocolApplied",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set dose number",
      "source" : [{
        "context" : "vacDetails",
        "element" : "seq",
        "variable" : "seq"
      }],
      "target" : [{
        "context" : "protocol",
        "contextType" : "variable",
        "element" : "doseNumber",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "seq"
        }]
      }]
    },
    {
      "name" : "set target disease type",
      "source" : [{
        "context" : "vac",
        "element" : "dis",
        "variable" : "dis"
      }],
      "target" : [{
        "context" : "protocol",
        "contextType" : "variable",
        "element" : "targetDisease",
        "variable" : "codeable"
      },
      {
        "context" : "codeable",
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
          "valueString" : "http://hl7.org/fhir/sid/icd-11"
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
      "name" : "set authority",
      "source" : [{
        "context" : "oid"
      }],
      "target" : [{
        "context" : "protocol",
        "contextType" : "variable",
        "element" : "authority",
        "variable" : "authority"
      },
      {
        "context" : "authority",
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
    }]
  },
  {
    "name" : "ExtractPatientFromMsg",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Message",
      "mode" : "source"
    },
    {
      "name" : "pid",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "extract patient from msg",
      "source" : [{
        "context" : "src",
        "element" : "pid",
        "variable" : "patData"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "ExtractPatient",
        "variable" : ["patData", "pid", "patient"]
      }]
    }]
  },
  {
    "name" : "ExtractPatient",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Patient",
      "mode" : "source"
    },
    {
      "name" : "pid",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Patient ID",
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
      "name" : "set priorityIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "i",
        "variable" : "priorityIdentifier"
      }],
      "target" : [{
        "context" : "patient",
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
          "valueId" : "priorityIdentifier"
        }]
      }]
    },
    {
      "name" : "set additionalIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "ai",
        "variable" : "additionalIdentifier"
      }],
      "target" : [{
        "context" : "patient",
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
          "valueId" : "additionalIdentifier"
        }]
      }]
    },
    {
      "name" : "Document Type Number",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "identif"
      }],
      "dependent" : [{
        "name" : "ExtractDocumentTypeNumber",
        "variable" : ["src", "identif"]
      }]
    },
    {
      "name" : "Patient Name",
      "source" : [{
        "context" : "src",
        "element" : "n",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "humanName",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "HumanName"
        }]
      },
      {
        "context" : "humanName",
        "contextType" : "variable",
        "element" : "text",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "name"
        }]
      }]
    },
    {
      "name" : "Patient Gender",
      "source" : [{
        "context" : "src",
        "element" : "sex",
        "variable" : "gender"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "ExtractGender",
        "variable" : ["gender", "patient"]
      }]
    },
    {
      "name" : "set birthDate",
      "source" : [{
        "context" : "src",
        "element" : "dob",
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
    }]
  },
  {
    "name" : "ExtractGender",
    "typeMode" : "none",
    "input" : [{
      "name" : "gender",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set male",
      "source" : [{
        "context" : "gender",
        "condition" : "gender = 'M'"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "male"
        }]
      }]
    },
    {
      "name" : "set female",
      "source" : [{
        "context" : "gender",
        "condition" : "gender = 'F'"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "female"
        }]
      }]
    }]
  },
  {
    "name" : "ExtractDocumentTypeNumber",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Patient",
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
      "name" : "set comp vaccine identifier parent",
      "source" : [{
        "context" : "src",
        "element" : "msg",
        "variable" : "msg"
      }],
      "target" : [{
        "context" : "composition",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "set comp test identifier",
        "source" : [{
          "context" : "msg",
          "element" : "ucti",
          "variable" : "ucti"
        }],
        "target" : [{
          "context" : "composition",
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
            "valueId" : "ucti"
          }]
        }]
      }]
    },
    {
      "name" : "set comp vaccine identifier parent",
      "source" : [{
        "context" : "src",
        "element" : "msg",
        "variable" : "msg"
      }],
      "target" : [{
        "context" : "composition",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "set comp vaccine identifier",
        "source" : [{
          "context" : "msg",
          "element" : "uvci",
          "variable" : "uvci"
        }],
        "target" : [{
          "context" : "composition",
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
            "valueId" : "uvci"
          }]
        }]
      }]
    },
    {
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
    }]
  }]
}

```
