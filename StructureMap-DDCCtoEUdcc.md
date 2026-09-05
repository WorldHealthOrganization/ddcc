# DDCCtoEUdcc - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCtoEUdcc**

## StructureMap: DDCCtoEUdcc 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/DDCCtoEUdcc | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCtoEUdcc |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "DDCCtoEUdcc",
  "url" : "http://smart.who.int/ddcc/StructureMap/DDCCtoEUdcc",
  "version" : "1.0.0",
  "name" : "DDCCtoEUdcc",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSomposition",
    "mode" : "source",
    "alias" : "DDCC"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocument",
    "mode" : "source",
    "alias" : "DDCCDocument"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "mode" : "source",
    "alias" : "DDCCPatient"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition",
    "mode" : "source",
    "alias" : "DDCCVSComposition"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization",
    "mode" : "source",
    "alias" : "DDCCOrganization"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfVaccination",
    "mode" : "source",
    "alias" : "DDCCCountryOfVaccination"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineBrand",
    "mode" : "source",
    "alias" : "DDCCVaccineBrand"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
    "mode" : "source",
    "alias" : "DDCCImmunization"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/HC1",
    "mode" : "target",
    "alias" : "EUDCC"
  },
  {
    "url" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/v",
    "mode" : "target",
    "alias" : "vacEvent"
  }],
  "group" : [{
    "name" : "DecodeDDCCtoQR",
    "typeMode" : "none",
    "input" : [{
      "name" : "ddcc",
      "type" : "DDCCDocument",
      "mode" : "source"
    },
    {
      "name" : "qr",
      "type" : "EUDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Version",
      "source" : [{
        "context" : "ddcc"
      }],
      "target" : [{
        "context" : "qr",
        "contextType" : "variable",
        "element" : "ver",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "XXX"
        }]
      }]
    },
    {
      "name" : "Patient",
      "source" : [{
        "context" : "ddcc",
        "element" : "entry",
        "variable" : "entry"
      }],
      "rule" : [{
        "name" : "Patient",
        "source" : [{
          "context" : "entry",
          "type" : "DDCCPatient",
          "element" : "resource",
          "variable" : "patient"
        }],
        "dependent" : [{
          "name" : "DecodePatientToQR",
          "variable" : ["patient", "qr"]
        }]
      }]
    },
    {
      "name" : "Immunization",
      "source" : [{
        "context" : "ddcc",
        "element" : "entry",
        "variable" : "entry"
      }],
      "rule" : [{
        "name" : "Immunization",
        "source" : [{
          "context" : "entry",
          "type" : "Immunization",
          "element" : "resource",
          "variable" : "immunization"
        }],
        "dependent" : [{
          "name" : "DecodeImmunizationToQR",
          "variable" : ["ddcc", "immunization", "qr"]
        }]
      }]
    }]
  },
  {
    "name" : "DecodePatientToQR",
    "typeMode" : "none",
    "input" : [{
      "name" : "patient",
      "type" : "DDCCPatient",
      "mode" : "source"
    },
    {
      "name" : "qr",
      "type" : "EUDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "birthDate",
      "source" : [{
        "context" : "patient",
        "element" : "birthDate",
        "variable" : "birthDate"
      }],
      "target" : [{
        "context" : "qr",
        "contextType" : "variable",
        "element" : "dob",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "birthDate"
        }]
      }]
    },
    {
      "name" : "name",
      "source" : [{
        "context" : "patient",
        "element" : "name",
        "variable" : "name"
      }],
      "rule" : [{
        "name" : "text",
        "source" : [{
          "context" : "name",
          "element" : "text",
          "variable" : "text"
        }],
        "target" : [{
          "context" : "qr",
          "contextType" : "variable",
          "element" : "nam",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "text"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "DecodeImmunizationToQR",
    "typeMode" : "none",
    "input" : [{
      "name" : "ddcc",
      "type" : "DDCCDocument",
      "mode" : "source"
    },
    {
      "name" : "immunization",
      "type" : "DDCCImmunization",
      "mode" : "source"
    },
    {
      "name" : "qr",
      "type" : "EUDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Vaccination",
      "source" : [{
        "context" : "immunization"
      }],
      "target" : [{
        "context" : "qr",
        "contextType" : "variable",
        "element" : "v",
        "variable" : "vacEvent",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "http://hl7.eu/fhir/ig/dcc/StructureDefinition/v"
        }]
      }],
      "rule" : [{
        "name" : "Protocol",
        "source" : [{
          "context" : "immunization",
          "element" : "protocolApplied",
          "variable" : "protocol"
        }],
        "rule" : [{
          "name" : "doseNumberPositiveInt",
          "source" : [{
            "context" : "protocol",
            "element" : "doseNumberPositiveInt",
            "variable" : "dose"
          }],
          "target" : [{
            "context" : "vacEvent",
            "contextType" : "variable",
            "element" : "dn",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "dose"
            }]
          }]
        },
        {
          "name" : "seriesDosesPositiveInt",
          "source" : [{
            "context" : "protocol",
            "element" : "seriesDosesPositiveInt",
            "variable" : "doseNum"
          }],
          "target" : [{
            "context" : "vacEvent",
            "contextType" : "variable",
            "element" : "sd",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "doseNum"
            }]
          }]
        },
        {
          "name" : "ProtocolDisease",
          "source" : [{
            "context" : "protocol",
            "element" : "targetDisease",
            "variable" : "targetDisease"
          }],
          "rule" : [{
            "name" : "ProtocolDiseaseCode",
            "source" : [{
              "context" : "targetDisease",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "code",
              "source" : [{
                "context" : "coding",
                "element" : "code",
                "variable" : "code"
              }],
              "target" : [{
                "context" : "vacEvent",
                "contextType" : "variable",
                "element" : "tg",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "code"
                }]
              }]
            }]
          }]
        }]
      },
      {
        "name" : "occurrenceDateTime",
        "source" : [{
          "context" : "immunization",
          "element" : "occurrenceDateTime",
          "variable" : "date"
        }],
        "target" : [{
          "context" : "vacEvent",
          "contextType" : "variable",
          "element" : "dt",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "date"
          }]
        }]
      },
      {
        "name" : "Country",
        "source" : [{
          "context" : "immunization",
          "element" : "extension",
          "variable" : "country",
          "condition" : "url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent'"
        }],
        "rule" : [{
          "name" : "valueCode",
          "source" : [{
            "context" : "country",
            "element" : "valueCode",
            "variable" : "code"
          }],
          "target" : [{
            "context" : "vacEvent",
            "contextType" : "variable",
            "element" : "co",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          }]
        }],
        "documentation" : "TODO: need to populate vacEvent.ma market authorization holder\r\nimmunization.extension : DDCCCountryOfVaccination as country"
      },
      {
        "name" : "VaccineBrand",
        "source" : [{
          "context" : "immunization",
          "element" : "extension",
          "variable" : "brand",
          "condition" : "url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand'"
        }],
        "rule" : [{
          "name" : "VaccineBrandCode",
          "source" : [{
            "context" : "brand",
            "element" : "valueCoding",
            "variable" : "valueCoding"
          }],
          "rule" : [{
            "name" : "code",
            "source" : [{
              "context" : "valueCoding",
              "element" : "code",
              "variable" : "code"
            }],
            "target" : [{
              "context" : "vacEvent",
              "contextType" : "variable",
              "element" : "mp",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "code"
              }]
            }]
          }]
        }],
        "documentation" : "immunization.extension : DDCCBrand as brand"
      },
      {
        "name" : "VaccineCoding",
        "source" : [{
          "context" : "immunization",
          "element" : "vaccineCode",
          "variable" : "vaccineCode"
        }],
        "rule" : [{
          "name" : "VaccineCode",
          "source" : [{
            "context" : "vaccineCode",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "code",
            "source" : [{
              "context" : "coding",
              "element" : "code",
              "variable" : "code"
            }],
            "target" : [{
              "context" : "vacEvent",
              "contextType" : "variable",
              "element" : "vp",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "code"
              }]
            }]
          }]
        }],
        "documentation" : "immunization.vaccineCode : Coding as vaccineCode then {"
      },
      {
        "name" : "VaccinationCentre",
        "source" : [{
          "context" : "ddcc",
          "element" : "entry",
          "variable" : "entry"
        }],
        "rule" : [{
          "name" : "CentreName",
          "source" : [{
            "context" : "entry",
            "type" : "Organization",
            "element" : "resource",
            "variable" : "organization"
          }],
          "rule" : [{
            "name" : "name",
            "source" : [{
              "context" : "organization",
              "element" : "name",
              "variable" : "name"
            }],
            "target" : [{
              "context" : "vacEvent",
              "contextType" : "variable",
              "element" : "is",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "name"
              }]
            }]
          }],
          "documentation" : "entry.resource : DDCCOrganization as organization"
        }]
      },
      {
        "name" : "VaccinationEvent",
        "source" : [{
          "context" : "ddcc",
          "element" : "entry",
          "variable" : "entry"
        }],
        "rule" : [{
          "name" : "VaccinationEventID",
          "source" : [{
            "context" : "entry",
            "type" : "Composition",
            "element" : "resource",
            "variable" : "composition"
          }],
          "rule" : [{
            "name" : "VaccinationEventIDValue",
            "source" : [{
              "context" : "composition",
              "element" : "identifier",
              "variable" : "identifier"
            }],
            "rule" : [{
              "name" : "value",
              "source" : [{
                "context" : "identifier",
                "element" : "value",
                "variable" : "value"
              }],
              "target" : [{
                "context" : "vacEvent",
                "contextType" : "variable",
                "element" : "ci",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "value"
                }]
              }]
            }]
          }],
          "documentation" : "entry.resource : DDCCVSComposition as composition"
        }]
      }]
    }]
  }]
}

```
