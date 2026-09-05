# DDCCtoCoredataset - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCtoCoredataset**

## StructureMap: DDCCtoCoredataset 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/DDCCtoCoredataset | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCtoCoredataset |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "DDCCtoCoredataset",
  "url" : "http://smart.who.int/ddcc/StructureMap/DDCCtoCoredataset",
  "version" : "1.0.0",
  "name" : "DDCCtoCoredataset",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization",
    "mode" : "source",
    "alias" : "DDCCOrganization"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
    "mode" : "source",
    "alias" : "DDCCImmunization"
  },
  {
    "url" : "http://smart.who.int/ddcc/DDCCCoreDataSetVSPoV",
    "mode" : "target",
    "alias" : "DDCCCoreDataSetPoV"
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
      "type" : "DDCCCoreDataSetPoV",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "entry",
      "source" : [{
        "context" : "ddcc",
        "element" : "entry",
        "variable" : "entry"
      }],
      "rule" : [{
        "name" : "Patient",
        "source" : [{
          "context" : "entry",
          "type" : "Patient",
          "element" : "resource",
          "variable" : "patient"
        }],
        "dependent" : [{
          "name" : "DecodePatientToQR",
          "variable" : ["patient", "qr"]
        }],
        "documentation" : "entry.resource : DDCCPatient as patient"
      }]
    },
    {
      "name" : "entry",
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
      "type" : "DDCCCoreDataSetPoV",
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
        "element" : "birthDate",
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
          "element" : "name",
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
      "type" : "DDCCCoreDataSetPoV",
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
        "element" : "vaccination",
        "variable" : "vacEvent",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "BackboneElement"
        }]
      }],
      "rule" : [{
        "name" : "protocolApplied",
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
            "element" : "dose",
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
            "element" : "totalDoses",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "doseNum"
            }]
          }]
        },
        {
          "name" : "TargetDisease",
          "source" : [{
            "context" : "protocol",
            "element" : "targetDisease",
            "variable" : "targetDisease"
          }],
          "rule" : [{
            "name" : "valueCodableConcept",
            "source" : [{
              "context" : "targetDisease",
              "element" : "valueCodableConcept",
              "variable" : "valueCodableConcept"
            }],
            "target" : [{
              "context" : "vacEvent",
              "contextType" : "variable",
              "element" : "disease",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "valueCodableConcept"
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
          "element" : "date",
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
            "element" : "country",
            "variable" : "coding",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
            }]
          }]
        }],
        "documentation" : "TODO: need to populate vacEvent.maholder\r\nimmunization.extension : DDCCCountryOfVaccination as country"
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
          "name" : "valueCoding",
          "source" : [{
            "context" : "brand",
            "element" : "valueCoding",
            "variable" : "valueCoding"
          }],
          "target" : [{
            "context" : "vacEvent",
            "contextType" : "variable",
            "element" : "brand",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "valueCoding"
            }]
          }]
        }],
        "documentation" : "immunization.extension : DDCCBrand as brand"
      },
      {
        "name" : "VaccineCode",
        "source" : [{
          "context" : "immunization",
          "element" : "vaccineCode",
          "variable" : "vaccineCode"
        }],
        "rule" : [{
          "name" : "coding",
          "source" : [{
            "context" : "vaccineCode",
            "element" : "coding",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "vacEvent",
            "contextType" : "variable",
            "element" : "vaccine",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "coding"
            }]
          }]
        }]
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
              "element" : "centre",
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
            "name" : "identifier",
            "source" : [{
              "context" : "composition",
              "element" : "identifier",
              "variable" : "identifier"
            }],
            "target" : [{
              "context" : "qr",
              "contextType" : "variable",
              "element" : "identifier",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "identifier"
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
