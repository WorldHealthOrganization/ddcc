# DIVOCtoDDCC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIVOCtoDDCC**

## StructureMap: DIVOCtoDDCC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertDIVOCtoDDCC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DIVOCtoDDCC |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "DIVOCtoDDCC",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertDIVOCtoDDCC",
  "version" : "1.0.0",
  "name" : "DIVOCtoDDCC",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertDIVOC",
    "mode" : "source",
    "alias" : "W3CVC"
  },
  {
    "url" : "http://hl7.org/fhir/ig/divoc/StructureDefinition/CredentialSubject",
    "mode" : "source",
    "alias" : "CredentialSubject"
  },
  {
    "url" : "http://hl7.org/fhir/ig/divoc/StructureDefinition/Proof",
    "mode" : "source",
    "alias" : "Proof"
  },
  {
    "url" : "http://hl7.org/fhir/ig/divoc/StructureDefinition/Address",
    "mode" : "source",
    "alias" : "Address"
  },
  {
    "url" : "http://hl7.org/fhir/ig/divoc/StructureDefinition/Evidence",
    "mode" : "source",
    "alias" : "Evidence"
  },
  {
    "url" : "http://hl7.org/fhir/ig/divoc/StructureDefinition/Verifier",
    "mode" : "source",
    "alias" : "Verifier"
  },
  {
    "url" : "http://hl7.org/fhir/ig/divoc/StructureDefinition/Facility",
    "mode" : "source",
    "alias" : "Facility"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "DIVOCtoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "W3CVC",
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
      "type" : "W3CVC",
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
          "condition" : "src.evidence.count() > 0"
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
            "element" : "evidence",
            "variable" : "ev"
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
          },
          {
            "context" : "bundle",
            "contextType" : "variable",
            "element" : "entry",
            "variable" : "entryManuf"
          },
          {
            "context" : "entryOrg",
            "contextType" : "variable",
            "element" : "resource",
            "variable" : "manuf",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Organization"
            }]
          },
          {
            "contextType" : "variable",
            "variable" : "mid",
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
            "name" : "Organization ID",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "manuf",
              "contextType" : "variable",
              "element" : "id",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "mid"
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
            "name" : "facility",
            "source" : [{
              "context" : "ev",
              "element" : "facility",
              "variable" : "facility"
            }],
            "rule" : [{
              "name" : "Set Organization name",
              "source" : [{
                "context" : "facility",
                "element" : "name",
                "variable" : "name"
              }],
              "target" : [{
                "context" : "org",
                "contextType" : "variable",
                "element" : "name",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "name"
                }]
              }]
            }]
          },
          {
            "name" : "Set Manufacturer name",
            "source" : [{
              "context" : "ev",
              "element" : "manufacturer",
              "variable" : "manufName"
            }],
            "target" : [{
              "context" : "manuf",
              "contextType" : "variable",
              "element" : "name",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "manufName"
              }]
            }]
          },
          {
            "name" : "create practitioner",
            "source" : [{
              "context" : "ev",
              "element" : "verifier",
              "variable" : "practitioner"
            }],
            "rule" : [{
              "name" : "set pract name",
              "source" : [{
                "context" : "practitioner",
                "element" : "name",
                "variable" : "practName"
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
                "variable" : "practitioner",
                "transform" : "create",
                "parameter" : [{
                  "valueString" : "Practitioner"
                }]
              },
              {
                "context" : "practitioner",
                "contextType" : "variable",
                "element" : "id",
                "variable" : "pracid",
                "transform" : "uuid"
              },
              {
                "context" : "practitioner",
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
                  "valueId" : "practName"
                }]
              },
              {
                "context" : "immunization",
                "contextType" : "variable",
                "element" : "performer",
                "variable" : "performer"
              },
              {
                "context" : "performer",
                "contextType" : "variable",
                "element" : "actor",
                "variable" : "actor"
              },
              {
                "context" : "actor",
                "contextType" : "variable",
                "element" : "reference",
                "transform" : "append",
                "parameter" : [{
                  "valueString" : "Practitioner/"
                },
                {
                  "valueId" : "pracid"
                }]
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
              "variable" : ["ev", "oid", "mid", "immunization", "bundle"]
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
      "name" : "ev",
      "type" : "Evidence",
      "mode" : "source"
    },
    {
      "name" : "oid",
      "mode" : "source"
    },
    {
      "name" : "mid",
      "mode" : "source"
    },
    {
      "name" : "immunization",
      "type" : "Immunization",
      "mode" : "target"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set occurrence date",
      "source" : [{
        "context" : "ev",
        "element" : "date",
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
      "name" : "set lot number",
      "source" : [{
        "context" : "ev",
        "element" : "batch",
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
      "name" : "Parse ICD11Code and Prophylaxis",
      "source" : [{
        "context" : "ev",
        "element" : "icd11Code",
        "variable" : "icd11Code"
      }],
      "rule" : [{
        "name" : "set vaccine coding",
        "source" : [{
          "context" : "ev",
          "element" : "prophylaxis",
          "variable" : "prophylaxis"
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
            "valueId" : "icd11Code"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "prophylaxis"
          }]
        }]
      }]
    },
    {
      "name" : "set identifier ci",
      "source" : [{
        "context" : "ev",
        "element" : "certificateId",
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
        "context" : "ev",
        "element" : "vaccine",
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
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "mp"
        }]
      }]
    },
    {
      "name" : "ev.facility rule",
      "source" : [{
        "context" : "ev",
        "element" : "facility",
        "variable" : "facility"
      }],
      "rule" : [{
        "name" : "ev.facility.address",
        "source" : [{
          "context" : "facility",
          "element" : "address",
          "variable" : "address"
        }],
        "rule" : [{
          "name" : "set country",
          "source" : [{
            "context" : "address",
            "element" : "addressCountry",
            "variable" : "contry"
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
              "valueId" : "contry"
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
    },
    {
      "name" : "ev.effectiveUntil rule",
      "source" : [{
        "context" : "ev",
        "element" : "effectiveUntil",
        "variable" : "validFrom"
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
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "validFrom"
        }]
      },
      {
        "context" : "ext",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom"
        }]
      }]
    },
    {
      "name" : "set manuf",
      "source" : [{
        "context" : "oid"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "manufacturer",
        "variable" : "manuf"
      },
      {
        "context" : "manuf",
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
      "name" : "Extracting Immunization Location",
      "source" : [{
        "context" : "ev",
        "element" : "facility",
        "variable" : "w3cFacility"
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
        "variable" : "location",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Location"
        }]
      },
      {
        "context" : "location",
        "contextType" : "variable",
        "element" : "id",
        "variable" : "locid",
        "transform" : "uuid"
      },
      {
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "location",
        "variable" : "loc"
      },
      {
        "context" : "loc",
        "contextType" : "variable",
        "element" : "reference",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Location/"
        },
        {
          "valueId" : "locid"
        }]
      }],
      "dependent" : [{
        "name" : "ExtractLocation",
        "variable" : ["w3cFacility", "location"]
      }]
    },
    {
      "name" : "set protocol applied",
      "source" : [{
        "context" : "ev"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "protocolApplied",
        "variable" : "protocolApplied"
      }],
      "dependent" : [{
        "name" : "ExtractProtocolApplied",
        "variable" : ["ev", "oid", "protocolApplied"]
      }]
    }]
  },
  {
    "name" : "ExtractProtocolApplied",
    "typeMode" : "none",
    "input" : [{
      "name" : "ev",
      "type" : "Evidence",
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
        "context" : "ev",
        "element" : "dose",
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
        "context" : "ev",
        "element" : "totalDoses",
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
        "context" : "ev"
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
          "valueString" : "840539006"
        }]
      }]
    },
    {
      "name" : "set authority",
      "source" : [{
        "context" : "ev"
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
      "type" : "W3CVC",
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
      "name" : "Patient Data from Subj",
      "source" : [{
        "context" : "src",
        "element" : "credentialSubject",
        "variable" : "credentialSubject"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "ExtractPatientFromSubj",
        "variable" : ["credentialSubject", "patient"]
      }]
    },
    {
      "name" : "set cred age",
      "source" : [{
        "context" : "src",
        "element" : "credentialSubject",
        "variable" : "credSubj"
      }],
      "rule" : [{
        "name" : "set age issuance date",
        "source" : [{
          "context" : "src",
          "element" : "issuanceDate",
          "variable" : "issuanceDate"
        }],
        "rule" : [{
          "name" : "set age",
          "source" : [{
            "context" : "credSubj",
            "element" : "age",
            "variable" : "age"
          }],
          "target" : [{
            "context" : "patient",
            "contextType" : "variable",
            "element" : "birthDate",
            "transform" : "evaluate",
            "parameter" : [{
              "valueId" : "issuanceDate"
            },
            {
              "valueString" : "($this - age).toString().substring(0, 4)"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractPatientFromSubj",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "CredentialSubject",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Patient Name",
      "source" : [{
        "context" : "src",
        "element" : "name",
        "variable" : "patientName"
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
          "valueId" : "patientName"
        }]
      }]
    },
    {
      "name" : "set patient identifier",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "id"
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
          "valueId" : "id"
        }]
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
    },
    {
      "name" : "Extract Gender",
      "source" : [{
        "context" : "src",
        "element" : "gender",
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
      "name" : "Extract Sex",
      "source" : [{
        "context" : "src",
        "element" : "sex",
        "variable" : "sex"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "ExtractGender",
        "variable" : ["sex", "patient"]
      }]
    },
    {
      "name" : "Extracting Patient Address",
      "source" : [{
        "context" : "src",
        "element" : "address",
        "variable" : "w3cAddress"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "address",
        "variable" : "fhirAddress"
      }],
      "dependent" : [{
        "name" : "ExtractAddress",
        "variable" : ["w3cAddress", "fhirAddress"]
      }]
    }]
  },
  {
    "name" : "ExtractLocation",
    "typeMode" : "none",
    "input" : [{
      "name" : "facility",
      "type" : "Facility",
      "mode" : "source"
    },
    {
      "name" : "location",
      "type" : "Address",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "facility name",
      "source" : [{
        "context" : "facility",
        "element" : "name",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "location",
        "contextType" : "variable",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "name"
        }]
      }]
    },
    {
      "name" : "facility address",
      "source" : [{
        "context" : "facility",
        "element" : "address",
        "variable" : "w3cAddress"
      }],
      "target" : [{
        "context" : "location",
        "contextType" : "variable",
        "element" : "address",
        "variable" : "fhirAddress"
      }],
      "dependent" : [{
        "name" : "ExtractAddress",
        "variable" : ["w3cAddress", "fhirAddress"]
      }]
    }]
  },
  {
    "name" : "ExtractAddress",
    "typeMode" : "none",
    "input" : [{
      "name" : "w3cAddress",
      "type" : "Address",
      "mode" : "source"
    },
    {
      "name" : "fhirAddress",
      "type" : "Address",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Line 1",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "streetAddress",
        "variable" : "line1"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "line",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "line1"
        }]
      }]
    },
    {
      "name" : "Line 2",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "streetAddress2",
        "variable" : "line2"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "line",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "line2"
        }]
      }]
    },
    {
      "name" : "City",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "city",
        "variable" : "city"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "city",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "city"
        }]
      }]
    },
    {
      "name" : "District",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "district",
        "variable" : "district"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "district",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "district"
        }]
      }]
    },
    {
      "name" : "Postal",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "postalCode",
        "variable" : "postal"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "postalCode",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "postal"
        }]
      }]
    },
    {
      "name" : "Region",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "addressRegion",
        "variable" : "region"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "state",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "region"
        }]
      }]
    },
    {
      "name" : "Country",
      "source" : [{
        "context" : "w3cAddress",
        "element" : "addressCountry",
        "variable" : "country"
      }],
      "target" : [{
        "context" : "fhirAddress",
        "contextType" : "variable",
        "element" : "country",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "country"
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
    },
    {
      "name" : "set male",
      "source" : [{
        "context" : "gender",
        "condition" : "gender = 'Male'"
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
        "condition" : "gender = 'Female'"
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
    "name" : "ExtractComposition",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "W3CVC",
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
    },
    {
      "name" : "set comp identifier parent",
      "source" : [{
        "context" : "src",
        "element" : "credentialSubject",
        "variable" : "credentialSubject"
      }],
      "target" : [{
        "context" : "composition",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "set comp identifier",
        "source" : [{
          "context" : "credentialSubject",
          "element" : "refId",
          "variable" : "refId"
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
            "valueId" : "refId"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractPeriod",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "W3CVC",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Period",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Start issuedAt",
      "source" : [{
        "context" : "src",
        "element" : "issuanceDate",
        "variable" : "issuanceDate"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "start",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "issuanceDate"
        }]
      }]
    }]
  }]
}

```
