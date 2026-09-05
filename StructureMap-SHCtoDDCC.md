# SHCtoDDCC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SHCtoDDCC**

## StructureMap: SHCtoDDCC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/SHCtoDDCC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:SHCtoDDCC |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SHCtoDDCC",
  "url" : "http://smart.who.int/ddcc/StructureMap/SHCtoDDCC",
  "version" : "1.0.0",
  "name" : "SHCtoDDCC",
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
    "alias" : "Bundle"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDocument",
    "mode" : "target",
    "alias" : "DDCCDocument"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "mode" : "target",
    "alias" : "DDCCPatient"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
    "mode" : "target",
    "alias" : "DDCCComposition"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization",
    "mode" : "target",
    "alias" : "DDCCOrganization"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfVaccination",
    "mode" : "target",
    "alias" : "DDCCCountryOfVaccination"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineBrand",
    "mode" : "target",
    "alias" : "DDCCVaccineBrand"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
    "mode" : "target",
    "alias" : "DDCCImmunization"
  }],
  "group" : [{
    "name" : "SHCtoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "shc",
      "type" : "SHCVaccinationBundleDM",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "map patient",
      "source" : [{
        "context" : "shc",
        "element" : "entry",
        "variable" : "patientEntrySHC"
      }],
      "rule" : [{
        "name" : "Is Patient entry",
        "source" : [{
          "context" : "patientEntrySHC",
          "type" : "Patient",
          "element" : "resource",
          "listMode" : "first",
          "variable" : "patientSHC"
        }],
        "rule" : [{
          "name" : "For each immunization entry",
          "source" : [{
            "context" : "shc",
            "element" : "entry",
            "variable" : "immunizationEntrySHC"
          }],
          "rule" : [{
            "name" : "Is immunization entry",
            "source" : [{
              "context" : "immunizationEntrySHC",
              "type" : "Immunization",
              "element" : "resource",
              "variable" : "immunizationSHC"
            }],
            "rule" : [{
              "name" : "Bundle type",
              "source" : [{
                "context" : "immunizationEntrySHC"
              }],
              "target" : [{
                "context" : "ddcc",
                "contextType" : "variable",
                "element" : "type",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "collection"
                }]
              }]
            },
            {
              "name" : "DDCC Document entry",
              "source" : [{
                "context" : "immunizationEntrySHC"
              }],
              "target" : [{
                "context" : "ddcc",
                "contextType" : "variable",
                "element" : "entry",
                "variable" : "ddccEntry"
              }],
              "rule" : [{
                "name" : "DDCC Document bundle",
                "source" : [{
                  "context" : "immunizationSHC"
                }],
                "target" : [{
                  "context" : "ddccEntry",
                  "contextType" : "variable",
                  "element" : "resource",
                  "variable" : "ddccdocument",
                  "transform" : "create",
                  "parameter" : [{
                    "valueString" : "Bundle"
                  }]
                }],
                "rule" : [{
                  "name" : "DDCC Document type",
                  "source" : [{
                    "context" : "immunizationSHC"
                  }],
                  "target" : [{
                    "context" : "ddccdocument",
                    "contextType" : "variable",
                    "element" : "type",
                    "transform" : "copy",
                    "parameter" : [{
                      "valueString" : "document"
                    }]
                  }]
                },
                {
                  "name" : "DDCC Document patient entry",
                  "source" : [{
                    "context" : "patientSHC"
                  }],
                  "target" : [{
                    "context" : "ddccdocument",
                    "contextType" : "variable",
                    "element" : "entry",
                    "variable" : "ddccDocumentEntry"
                  }],
                  "rule" : [{
                    "name" : "DDCC Document patient resource",
                    "source" : [{
                      "context" : "patientSHC"
                    }],
                    "target" : [{
                      "context" : "ddccDocumentEntry",
                      "contextType" : "variable",
                      "element" : "resource",
                      "variable" : "patientDDCC",
                      "transform" : "create",
                      "parameter" : [{
                        "valueString" : "Patient"
                      }]
                    }],
                    "dependent" : [{
                      "name" : "SHCPatienttoDDCC",
                      "variable" : ["patientSHC", "patientDDCC"]
                    }]
                  }]
                },
                {
                  "name" : "DDCC Document immunization entry",
                  "source" : [{
                    "context" : "immunizationSHC"
                  }],
                  "target" : [{
                    "context" : "ddccdocument",
                    "contextType" : "variable",
                    "element" : "entry",
                    "variable" : "ddccDocumentEntry"
                  }],
                  "rule" : [{
                    "name" : "DDCC Document immunization resource",
                    "source" : [{
                      "context" : "immunizationSHC"
                    }],
                    "target" : [{
                      "context" : "ddccDocumentEntry",
                      "contextType" : "variable",
                      "element" : "resource",
                      "variable" : "immunizationDDCC",
                      "transform" : "create",
                      "parameter" : [{
                        "valueString" : "Immunization"
                      }]
                    }],
                    "dependent" : [{
                      "name" : "SHCImmunizationtoDDCC",
                      "variable" : ["immunizationSHC", "immunizationDDCC"]
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
    "name" : "SHCPatienttoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "patient",
      "type" : "SHCPatientDM",
      "mode" : "source"
    },
    {
      "name" : "patientDDCC",
      "type" : "DDCCPatient",
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
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "status"
        }]
      }]
    },
    {
      "name" : "Coding",
      "source" : [{
        "context" : "immunization",
        "element" : "coding",
        "variable" : "coding"
      }],
      "target" : [{
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "coding",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "coding"
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
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "occurrence",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "occurrenceDateTime"
        }]
      }]
    },
    {
      "name" : "Manufacturer",
      "source" : [{
        "context" : "immunization",
        "element" : "manfacturer",
        "variable" : "manfacturer"
      }],
      "target" : [{
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "manfacturer",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "manfacturer"
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
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "lotNumber",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "lotNumber"
        }]
      }]
    }]
  },
  {
    "name" : "SHCImmunizationtoDDCC",
    "typeMode" : "none",
    "input" : [{
      "name" : "immunization",
      "type" : "SHCImmunizationDM",
      "mode" : "source"
    },
    {
      "name" : "immunizationDDCC",
      "type" : "DDCCImmunization",
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
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "status"
        }]
      }]
    },
    {
      "name" : "Coding",
      "source" : [{
        "context" : "immunization",
        "element" : "coding",
        "variable" : "coding"
      }],
      "target" : [{
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "coding",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "coding"
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
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "occurrence",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "occurrenceDateTime"
        }]
      }]
    },
    {
      "name" : "Manufacturer",
      "source" : [{
        "context" : "immunization",
        "element" : "manfacturer",
        "variable" : "manfacturer"
      }],
      "target" : [{
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "manfacturer",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "manfacturer"
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
        "context" : "immunizationDDCC",
        "contextType" : "variable",
        "element" : "lotNumber",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "lotNumber"
        }]
      }]
    }]
  }]
}

```
