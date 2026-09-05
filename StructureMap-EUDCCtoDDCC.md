# EUDCCtoDDCC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EUDCCtoDDCC**

## StructureMap: EUDCCtoDDCC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertDCCtoDDCC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:EUDCCtoDDCC |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "EUDCCtoDDCC",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertDCCtoDDCC",
  "version" : "1.0.0",
  "name" : "EUDCCtoDDCC",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertDCC",
    "mode" : "source",
    "alias" : "CWT"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/HC1",
    "mode" : "source",
    "alias" : "HC1"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/PersonName",
    "mode" : "source",
    "alias" : "PersonName"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/v",
    "mode" : "source",
    "alias" : "VacEvent"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/t",
    "mode" : "source",
    "alias" : "TestEvent"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/r",
    "mode" : "source",
    "alias" : "RecEvent"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "EUDCCtoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CWT",
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
        "name" : "Processing cert data",
        "source" : [{
          "context" : "src",
          "element" : "data",
          "variable" : "data"
        }],
        "rule" : [{
          "name" : "Certificate",
          "source" : [{
            "context" : "data",
            "element" : "cert",
            "variable" : "cert"
          }],
          "target" : [{
            "context" : "bundle",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "ExtractCert",
            "variable" : ["cert", "bundle", "comp"]
          }]
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
      "type" : "HC1",
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
          "context" : "src"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "ExtractPatient",
          "variable" : ["src", "pid", "patient"]
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
        "name" : "Vaccination List",
        "source" : [{
          "context" : "src",
          "condition" : "src.v.count() > 0"
        }],
        "target" : [{
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
          "name" : "Immunization Create",
          "source" : [{
            "context" : "src",
            "element" : "v",
            "variable" : "vac"
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
            "name" : "add entry/author to section",
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
              "context" : "vac",
              "element" : "is",
              "variable" : "is"
            }],
            "target" : [{
              "context" : "org",
              "contextType" : "variable",
              "element" : "name",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "is"
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
              "variable" : ["vac", "oid", "immunization"]
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
      "type" : "VacEvent",
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
        "context" : "vac",
        "element" : "dt",
        "variable" : "dt"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "occurrence",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dt"
        }]
      }]
    },
    {
      "name" : "set vaccine coding",
      "source" : [{
        "context" : "vac",
        "element" : "vp",
        "variable" : "vp"
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
          "valueString" : "http://snomed.info/sct"
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
      "name" : "set identifier ci",
      "source" : [{
        "context" : "vac",
        "element" : "ci",
        "variable" : "ci"
      }],
      "target" : [{
        "context" : "immunization",
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
          "valueId" : "ci"
        }]
      }]
    },
    {
      "name" : "set brand",
      "source" : [{
        "context" : "vac",
        "element" : "mp",
        "variable" : "mp"
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
          "valueId" : "mp"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://www.ema.europa.eu/en/medicines/human/EPAR/comirnaty"
        }]
      }]
    },
    {
      "name" : "set manufacturer extension",
      "source" : [{
        "context" : "vac",
        "element" : "ma",
        "variable" : "ma"
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
          "valueString" : "https://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization"
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
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://www.ema.europa.eu/en/medicines/human/EPAR/comirnaty"
        }]
      }]
    },
    {
      "name" : "set country",
      "source" : [{
        "context" : "vac",
        "element" : "co",
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
      "name" : "set protocol applied",
      "source" : [{
        "context" : "vac"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "protocolApplied",
        "variable" : "protocolApplied"
      }],
      "dependent" : [{
        "name" : "ExtractProtocolApplied",
        "variable" : ["vac", "oid", "protocolApplied"]
      }]
    }]
  },
  {
    "name" : "ExtractProtocolApplied",
    "typeMode" : "none",
    "input" : [{
      "name" : "vac",
      "type" : "VacEvent",
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
        "context" : "vac",
        "element" : "dn",
        "variable" : "dn"
      }],
      "target" : [{
        "context" : "protocol",
        "contextType" : "variable",
        "element" : "doseNumber",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dn"
        }]
      }]
    },
    {
      "name" : "set series doses",
      "source" : [{
        "context" : "vac",
        "element" : "sd",
        "variable" : "sd"
      }],
      "target" : [{
        "context" : "protocol",
        "contextType" : "variable",
        "element" : "seriesDoses",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "sd"
        }]
      }]
    },
    {
      "name" : "set target disease type",
      "source" : [{
        "context" : "vac",
        "element" : "tg",
        "variable" : "tg"
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
    "name" : "ExtractPatient",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "HC1",
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
      "name" : "Patient",
      "source" : [{
        "context" : "src",
        "element" : "nam",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "ExtractPersonName",
        "variable" : ["name", "patient"]
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
    "name" : "ExtractPersonName",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "PersonName",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "DDCCPatient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Human Name",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "humanName",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "HumanName"
        }]
      }],
      "dependent" : [{
        "name" : "ExtractHumanName",
        "variable" : ["src", "humanName"]
      }]
    },
    {
      "name" : "Human Name Std",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "humanNameStd",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "HumanName"
        }]
      }],
      "dependent" : [{
        "name" : "ExtractStandardizedName",
        "variable" : ["src", "humanNameStd"]
      }]
    }]
  },
  {
    "name" : "ExtractHumanName",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "PersonName",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "HumanName",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Given Name",
      "source" : [{
        "context" : "src",
        "element" : "gn",
        "variable" : "givenName"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "given",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "givenName"
        }]
      }]
    },
    {
      "name" : "Family Name",
      "source" : [{
        "context" : "src",
        "element" : "fn",
        "variable" : "familyName"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "family",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "familyName"
        }]
      }]
    },
    {
      "name" : "Use",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      }]
    }]
  },
  {
    "name" : "ExtractStandardizedName",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "PersonName",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "HumanName",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Given Name Std",
      "source" : [{
        "context" : "src",
        "element" : "gnt",
        "variable" : "givenName"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "given",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "givenName"
        }]
      }]
    },
    {
      "name" : "Family Name Std",
      "source" : [{
        "context" : "src",
        "element" : "fnt",
        "variable" : "familyName"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "family",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "familyName"
        }]
      }]
    },
    {
      "name" : "Use Std",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      }]
    }]
  },
  {
    "name" : "ExtractComposition",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CWT",
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
      "type" : "CWT",
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
