# DDCCtoSHC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCtoSHC**

## StructureMap: DDCCtoSHC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/DDCCtoSHC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCtoSHC |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "DDCCtoSHC",
  "url" : "http://smart.who.int/ddcc/StructureMap/DDCCtoSHC",
  "version" : "1.0.0",
  "name" : "DDCCtoSHC",
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
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
    "mode" : "source",
    "alias" : "DDCCComposition"
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
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-vaccination-bundle-dm",
    "mode" : "target",
    "alias" : "SHCVaccinationBundleDM"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-patient-general-dm",
    "mode" : "target",
    "alias" : "SHCPatientDM"
  },
  {
    "url" : "http://hl7.org/fhir/uv/shc-vaccination/StructureDefinition/shc-vaccination-dm",
    "mode" : "target",
    "alias" : "SHCImmunizationDM"
  }],
  "group" : [{
    "name" : "DDCCtoSHC",
    "typeMode" : "none",
    "input" : [{
      "name" : "ddcc",
      "type" : "DDCCDocument",
      "mode" : "source"
    },
    {
      "name" : "shc",
      "type" : "SHCVaccinationBundleDM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set bundle type",
      "source" : [{
        "context" : "ddcc"
      }],
      "target" : [{
        "context" : "shc",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "collection"
        }]
      }]
    },
    {
      "name" : "map patients",
      "source" : [{
        "context" : "ddcc",
        "element" : "entry",
        "variable" : "entry"
      }],
      "rule" : [{
        "name" : "Is Patient entry",
        "source" : [{
          "context" : "entry",
          "type" : "Patient",
          "element" : "resource",
          "listMode" : "first",
          "variable" : "patient"
        }],
        "rule" : [{
          "name" : "Patient entry",
          "source" : [{
            "context" : "entry"
          }],
          "target" : [{
            "context" : "shc",
            "contextType" : "variable",
            "element" : "entry",
            "variable" : "entrySHC"
          }],
          "rule" : [{
            "name" : "Full URL",
            "source" : [{
              "context" : "entry",
              "element" : "fullUrl"
            }],
            "target" : [{
              "context" : "entrySHC",
              "contextType" : "variable",
              "element" : "fullUrl",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "resource:0"
              }]
            }]
          },
          {
            "name" : "Patient resource",
            "source" : [{
              "context" : "patient"
            }],
            "target" : [{
              "context" : "entrySHC",
              "contextType" : "variable",
              "element" : "resource",
              "variable" : "patientSHC",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Patient"
              }]
            }],
            "dependent" : [{
              "name" : "DDCCPatienttoSHC",
              "variable" : ["patient", "patientSHC"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "map immunizations",
      "source" : [{
        "context" : "ddcc",
        "element" : "entry",
        "variable" : "entry"
      }],
      "rule" : [{
        "name" : "Is Immunization entry",
        "source" : [{
          "context" : "entry",
          "type" : "Immunization",
          "element" : "resource",
          "listMode" : "first",
          "variable" : "immunization",
          "condition" : "status = 'completed'"
        }],
        "rule" : [{
          "name" : "Immunization entry",
          "source" : [{
            "context" : "entry"
          }],
          "target" : [{
            "context" : "shc",
            "contextType" : "variable",
            "element" : "entry",
            "variable" : "entrySHC"
          }],
          "rule" : [{
            "name" : "Full URL",
            "source" : [{
              "context" : "entry",
              "element" : "fullUrl"
            }],
            "target" : [{
              "context" : "entrySHC",
              "contextType" : "variable",
              "element" : "fullUrl",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "resource:1"
              }]
            }]
          },
          {
            "name" : "Immunization resource",
            "source" : [{
              "context" : "immunization"
            }],
            "target" : [{
              "context" : "entrySHC",
              "contextType" : "variable",
              "element" : "resource",
              "variable" : "immunizationSHC",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Immunization"
              }]
            }],
            "rule" : [{
              "name" : "Immunization",
              "source" : [{
                "context" : "immunization"
              }],
              "target" : [{
                "context" : "immunizationSHC",
                "contextType" : "variable"
              }],
              "dependent" : [{
                "name" : "DDCCImmunizationtoSHC",
                "variable" : ["immunization", "immunizationSHC"]
              }]
            },
            {
              "name" : "map organizations",
              "source" : [{
                "context" : "ddcc",
                "element" : "entry",
                "variable" : "orgEntry"
              }],
              "rule" : [{
                "name" : "Organization entry",
                "source" : [{
                  "context" : "orgEntry",
                  "type" : "Organization",
                  "element" : "resource",
                  "listMode" : "first",
                  "variable" : "organization"
                }],
                "dependent" : [{
                  "name" : "DDCCOrganizationtoSHCImmunization",
                  "variable" : ["organization", "immunizationSHC"]
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "DDCCPatienttoSHC",
    "typeMode" : "none",
    "input" : [{
      "name" : "patient",
      "type" : "DDCCPatient",
      "mode" : "source"
    },
    {
      "name" : "patientSHC",
      "type" : "SHCPatientDM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Name",
      "source" : [{
        "context" : "patient",
        "element" : "name",
        "listMode" : "only_one",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "patientSHC",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "nameSHC"
      }],
      "rule" : [{
        "name" : "Given Name",
        "source" : [{
          "context" : "name",
          "element" : "given",
          "variable" : "givenname"
        }],
        "target" : [{
          "context" : "nameSHC",
          "contextType" : "variable",
          "element" : "given",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "givenname"
          }]
        }]
      },
      {
        "name" : "Family Name",
        "source" : [{
          "context" : "name",
          "element" : "family",
          "variable" : "familyname"
        }],
        "target" : [{
          "context" : "nameSHC",
          "contextType" : "variable",
          "element" : "family",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "familyname"
          }]
        }]
      },
      {
        "name" : "vcnameinvariant",
        "source" : [{
          "context" : "name",
          "condition" : "name.given.exists().not() and name.family.exists().not()"
        }],
        "rule" : [{
          "name" : "Text Name",
          "source" : [{
            "context" : "name",
            "element" : "text",
            "variable" : "text"
          }],
          "target" : [{
            "context" : "nameSHC",
            "contextType" : "variable",
            "element" : "text",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "text"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "Birth Date",
      "source" : [{
        "context" : "patient",
        "element" : "birthDate",
        "variable" : "birthDate"
      }],
      "target" : [{
        "context" : "patientSHC",
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
    "name" : "DDCCImmunizationtoSHC",
    "typeMode" : "none",
    "input" : [{
      "name" : "immunization",
      "type" : "DDCCImmunization",
      "mode" : "source"
    },
    {
      "name" : "immunizationSHC",
      "type" : "SHCImmunizationDM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Status",
      "source" : [{
        "context" : "immunization",
        "element" : "status",
        "variable" : "status"
      }],
      "target" : [{
        "context" : "immunizationSHC",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "status"
        }]
      }]
    },
    {
      "name" : "VaccineCode",
      "source" : [{
        "context" : "immunization",
        "element" : "vaccineCode",
        "variable" : "vaccineCode"
      }],
      "target" : [{
        "context" : "immunizationSHC",
        "contextType" : "variable",
        "element" : "vaccineCode",
        "variable" : "vaccineCodeSHC"
      }],
      "rule" : [{
        "name" : "coding",
        "source" : [{
          "context" : "vaccineCode",
          "element" : "coding",
          "listMode" : "first",
          "variable" : "coding"
        }],
        "target" : [{
          "context" : "vaccineCodeSHC",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "codingSHC"
        }],
        "dependent" : [{
          "name" : "MinimizeCoding",
          "variable" : ["coding", "codingSHC"]
        }]
      }]
    },
    {
      "name" : "Patient",
      "source" : [{
        "context" : "immunization",
        "element" : "patient",
        "variable" : "patient"
      }],
      "target" : [{
        "context" : "immunizationSHC",
        "contextType" : "variable",
        "element" : "patient",
        "variable" : "patientSHC"
      },
      {
        "context" : "patientSHC",
        "contextType" : "variable",
        "element" : "reference",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "resource:0"
        }]
      }]
    },
    {
      "name" : "Occurrence DateTime",
      "source" : [{
        "context" : "immunization",
        "element" : "occurrence",
        "variable" : "occurrenceDateTime"
      }],
      "target" : [{
        "context" : "immunizationSHC",
        "contextType" : "variable",
        "element" : "occurrence",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "occurrenceDateTime"
        }]
      }]
    },
    {
      "name" : "Extension",
      "source" : [{
        "context" : "immunization",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "DDCCVaccineMarketAuthorization",
        "source" : [{
          "context" : "ext",
          "listMode" : "first",
          "variable" : "maholder",
          "condition" : "ext.url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization'"
        }],
        "rule" : [{
          "name" : "Manufacturer",
          "source" : [{
            "context" : "maholder",
            "element" : "valueCoding",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "immunizationSHC",
            "contextType" : "variable",
            "element" : "manufacturer",
            "variable" : "tman"
          },
          {
            "context" : "tman",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "tident"
          }],
          "rule" : [{
            "name" : "system",
            "source" : [{
              "context" : "coding",
              "element" : "system",
              "variable" : "system"
            }],
            "target" : [{
              "context" : "tident",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "system"
              }]
            }]
          },
          {
            "name" : "value",
            "source" : [{
              "context" : "coding",
              "element" : "code",
              "variable" : "code"
            }],
            "target" : [{
              "context" : "tident",
              "contextType" : "variable",
              "element" : "value",
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
      "name" : "if maholder code empty",
      "source" : [{
        "context" : "immunization",
        "variable" : "src",
        "condition" : "extension.where(url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization').first().valueCoding.exists().not()"
      }],
      "rule" : [{
        "name" : "Manufacturer",
        "source" : [{
          "context" : "src",
          "element" : "manufacturer",
          "variable" : "manufacturer"
        }],
        "rule" : [{
          "name" : "identifier",
          "source" : [{
            "context" : "manufacturer",
            "element" : "identifier",
            "variable" : "identifier"
          }],
          "target" : [{
            "context" : "immunizationSHC",
            "contextType" : "variable",
            "element" : "manufacturer",
            "variable" : "tman"
          },
          {
            "context" : "tman",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "tident"
          }],
          "rule" : [{
            "name" : "system",
            "source" : [{
              "context" : "identifier",
              "element" : "system",
              "variable" : "system"
            }],
            "target" : [{
              "context" : "tident",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "system"
              }]
            }]
          },
          {
            "name" : "value",
            "source" : [{
              "context" : "identifier",
              "element" : "value",
              "variable" : "value"
            }],
            "target" : [{
              "context" : "tident",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "value"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "Lot Number",
      "source" : [{
        "context" : "immunization",
        "element" : "lotNumber",
        "variable" : "lotNumber"
      }],
      "target" : [{
        "context" : "immunizationSHC",
        "contextType" : "variable",
        "element" : "lotNumber",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "lotNumber"
        }]
      }]
    },
    {
      "name" : "Is Subpotent",
      "source" : [{
        "context" : "immunization",
        "element" : "isSubpotent",
        "variable" : "isSubpotent",
        "condition" : "true"
      }],
      "target" : [{
        "context" : "immunizationSHC",
        "contextType" : "variable",
        "element" : "isSubpotent",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "isSubpotent"
        }]
      }]
    }]
  },
  {
    "name" : "DDCCOrganizationtoSHCImmunization",
    "typeMode" : "none",
    "input" : [{
      "name" : "organization",
      "type" : "DDCCOrganization",
      "mode" : "source"
    },
    {
      "name" : "immunizationSHC",
      "type" : "SHCImmunizationDM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "Performer Actor Display",
      "source" : [{
        "context" : "organization",
        "element" : "name",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "immunizationSHC",
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
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "name"
        }]
      }]
    }]
  },
  {
    "name" : "MinimizeCoding",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "Coding",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Coding",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "system",
      "source" : [{
        "context" : "src",
        "element" : "system",
        "variable" : "system"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "system"
        }]
      }]
    },
    {
      "name" : "code",
      "source" : [{
        "context" : "src",
        "element" : "code",
        "variable" : "code"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "code"
        }]
      }]
    }]
  }]
}

```
