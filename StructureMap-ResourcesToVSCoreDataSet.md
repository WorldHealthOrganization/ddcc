# ResourcesToVSCoreDataSet - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResourcesToVSCoreDataSet**

## StructureMap: ResourcesToVSCoreDataSet 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/ResourcesToVSCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:ResourcesToVSCoreDataSet |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "ResourcesToVSCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureMap/ResourcesToVSCoreDataSet",
  "version" : "1.0.0",
  "name" : "ResourcesToVSCoreDataSet",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "source",
    "alias" : "Bundle"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/HumanName",
    "mode" : "target",
    "alias" : "HumanName"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "mode" : "source",
    "alias" : "DDCCPatient"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
    "mode" : "source",
    "alias" : "DDCCImmunization"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation",
    "mode" : "source",
    "alias" : "DDCCImmunizationRecommendation"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition",
    "mode" : "source",
    "alias" : "DDCCVSComposition"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVSPoV",
    "mode" : "target",
    "alias" : "DDCCPoV"
  }],
  "group" : [{
    "name" : "ResourcesToCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCCPoV",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "setup ddcc",
      "source" : [{
        "context" : "bundle"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "vaccination",
        "variable" : "vaccination"
      },
      {
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "certificate",
        "variable" : "certificate"
      }],
      "rule" : [{
        "name" : "set hcid",
        "source" : [{
          "context" : "bundle",
          "element" : "link",
          "listMode" : "first",
          "variable" : "link"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "hcid",
          "variable" : "hcid"
        }],
        "rule" : [{
          "name" : "set hcid value",
          "source" : [{
            "context" : "link",
            "element" : "url",
            "variable" : "url"
          }],
          "target" : [{
            "context" : "hcid",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "evaluate",
            "parameter" : [{
              "valueString" : "url.replaceMatches('[Uu][Rr][Nn]:[Hh][Cc][Ii][Dd]:', '')"
            }]
          }],
          "documentation" : "There's got to be a better way to do this"
        }]
      },
      {
        "name" : "set ddcc id value",
        "source" : [{
          "context" : "bundle",
          "element" : "id",
          "variable" : "id"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "ddccid",
          "variable" : "ddccid"
        },
        {
          "context" : "ddccid",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "id"
          }]
        }]
      },
      {
        "name" : "set header from patient",
        "source" : [{
          "context" : "bundle",
          "element" : "entry",
          "variable" : "entry"
        }],
        "rule" : [{
          "name" : "set patient details",
          "source" : [{
            "context" : "entry",
            "type" : "Patient",
            "element" : "resource",
            "listMode" : "first",
            "variable" : "patient"
          }],
          "dependent" : [{
            "name" : "PatientToDDCCVS",
            "variable" : ["patient", "ddcc"]
          }]
        },
        {
          "name" : "set immunization",
          "source" : [{
            "context" : "entry",
            "type" : "Immunization",
            "element" : "resource",
            "listMode" : "first",
            "variable" : "immunization"
          }],
          "dependent" : [{
            "name" : "ImmunizationToDDCCVS",
            "variable" : ["immunization", "vaccination", "certificate"]
          }]
        },
        {
          "name" : "set immunization recommendation",
          "source" : [{
            "context" : "entry",
            "type" : "ImmunizationRecommendation",
            "element" : "resource",
            "listMode" : "first",
            "variable" : "immRec"
          }],
          "dependent" : [{
            "name" : "ImmRecToDDCCVS",
            "variable" : ["immRec", "vaccination"]
          }]
        },
        {
          "name" : "set composition",
          "source" : [{
            "context" : "entry",
            "type" : "Composition",
            "element" : "resource",
            "listMode" : "first",
            "variable" : "composition"
          }],
          "dependent" : [{
            "name" : "CompositionToDDCCVS",
            "variable" : ["composition", "certificate"]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CompositionToDDCCVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "composition",
      "type" : "DDCCVSComposition",
      "mode" : "source"
    },
    {
      "name" : "certificate",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set version",
      "source" : [{
        "context" : "composition"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "version",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "RC2"
        }]
      }]
    },
    {
      "name" : "set certificate period",
      "source" : [{
        "context" : "composition",
        "element" : "event",
        "listMode" : "first",
        "variable" : "event"
      }],
      "rule" : [{
        "name" : "set period",
        "source" : [{
          "context" : "event",
          "element" : "period",
          "variable" : "period"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "period",
          "variable" : "tPeriod"
        }],
        "rule" : [{
          "name" : "set period start",
          "source" : [{
            "context" : "period",
            "element" : "start",
            "variable" : "start"
          }],
          "target" : [{
            "context" : "tPeriod",
            "contextType" : "variable",
            "element" : "start",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "start"
            }]
          }]
        },
        {
          "name" : "set period end",
          "source" : [{
            "context" : "period",
            "element" : "end",
            "variable" : "end"
          }],
          "target" : [{
            "context" : "tPeriod",
            "contextType" : "variable",
            "element" : "end",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "end"
            }]
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
      "type" : "DDCCPatient",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCCPoV",
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
        "variable" : ["name", "ddcc"]
      }]
    },
    {
      "name" : "set birth date",
      "source" : [{
        "context" : "patient",
        "element" : "birthDate",
        "variable" : "bday"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "birthDate",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "bday"
        }]
      }]
    },
    {
      "name" : "set identifier from id",
      "source" : [{
        "context" : "patient",
        "element" : "id",
        "variable" : "id"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "identifier"
      },
      {
        "context" : "identifier",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }]
    },
    {
      "name" : "set identifier from identifier",
      "source" : [{
        "context" : "patient",
        "element" : "identifier",
        "listMode" : "first",
        "variable" : "sId"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "identifier"
      }],
      "rule" : [{
        "name" : "set identifier value",
        "source" : [{
          "context" : "sId",
          "element" : "value",
          "variable" : "id"
        }],
        "target" : [{
          "context" : "identifier",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "id"
          }]
        }]
      }],
      "documentation" : "this will override what was set from id if it exists"
    },
    {
      "name" : "set sex",
      "source" : [{
        "context" : "patient",
        "element" : "gender",
        "variable" : "gender"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "sex",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "gender"
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
      "documentation" : "annoying because append doesn't work until ddcc.name is set"
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
    "name" : "ImmunizationToDDCCVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "immunization",
      "type" : "DDCCImmunization",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    },
    {
      "name" : "certificate",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set vaccine code",
      "source" : [{
        "context" : "immunization",
        "element" : "vaccineCode",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "set vaccine",
        "source" : [{
          "context" : "code",
          "element" : "coding",
          "listMode" : "first",
          "variable" : "coding"
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
      }]
    },
    {
      "name" : "set extensions",
      "source" : [{
        "context" : "immunization",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "set brand",
        "source" : [{
          "context" : "ext",
          "listMode" : "first",
          "variable" : "brand",
          "condition" : "ext.url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineBrand'"
        }],
        "rule" : [{
          "name" : "set brand code",
          "source" : [{
            "context" : "brand",
            "element" : "valueCoding",
            "variable" : "coding"
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
        }]
      },
      {
        "name" : "set maholder",
        "source" : [{
          "context" : "ext",
          "listMode" : "first",
          "variable" : "maholder",
          "condition" : "ext.url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization'"
        }],
        "rule" : [{
          "name" : "set maholder code",
          "source" : [{
            "context" : "maholder",
            "element" : "valueCoding",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "maholder",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "coding"
            }]
          }]
        }]
      },
      {
        "name" : "set validFrom",
        "source" : [{
          "context" : "ext",
          "listMode" : "first",
          "variable" : "valid",
          "condition" : "ext.url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom'"
        }],
        "rule" : [{
          "name" : "set validFrom date",
          "source" : [{
            "context" : "valid",
            "element" : "valueDateTime",
            "variable" : "date"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "validFrom",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "date"
            }]
          }]
        }]
      },
      {
        "name" : "set country",
        "source" : [{
          "context" : "ext",
          "listMode" : "first",
          "variable" : "country",
          "condition" : "ext.url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfVaccination'"
        }],
        "rule" : [{
          "name" : "set country code",
          "source" : [{
            "context" : "country",
            "element" : "valueCode",
            "variable" : "code"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "country",
            "variable" : "vCountry"
          },
          {
            "context" : "vCountry",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "urn:iso:std:iso:3166"
            }]
          },
          {
            "context" : "vCountry",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set manufacturer",
      "source" : [{
        "context" : "immunization",
        "element" : "manufacturer",
        "variable" : "manufacturer"
      }],
      "rule" : [{
        "name" : "set manufacturer id",
        "source" : [{
          "context" : "manufacturer",
          "element" : "identifier",
          "variable" : "identifier"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "manufacturer",
          "variable" : "vMan"
        }],
        "rule" : [{
          "name" : "set manufacturer system",
          "source" : [{
            "context" : "identifier",
            "element" : "system",
            "variable" : "system"
          }],
          "target" : [{
            "context" : "vMan",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "system"
            }]
          }]
        },
        {
          "name" : "set manufactutuer code",
          "source" : [{
            "context" : "identifier",
            "element" : "value",
            "variable" : "value"
          }],
          "target" : [{
            "context" : "vMan",
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
      "name" : "set lot number",
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
      "name" : "set protocol applied",
      "source" : [{
        "context" : "immunization",
        "element" : "protocolApplied",
        "listMode" : "first",
        "variable" : "protocol"
      }],
      "rule" : [{
        "name" : "set dose",
        "source" : [{
          "context" : "protocol",
          "element" : "doseNumber",
          "variable" : "dose"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "dose",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "dose"
          }]
        }]
      },
      {
        "name" : "set totalDoses",
        "source" : [{
          "context" : "protocol",
          "element" : "seriesDoses",
          "variable" : "totalDoses"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "totalDoses",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "totalDoses"
          }]
        }]
      },
      {
        "name" : "set disease",
        "source" : [{
          "context" : "protocol",
          "element" : "targetDisease",
          "listMode" : "first",
          "variable" : "disease"
        }],
        "rule" : [{
          "name" : "set disease coding",
          "source" : [{
            "context" : "disease",
            "element" : "coding",
            "listMode" : "first",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "disease",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "coding"
            }]
          }]
        }]
      },
      {
        "name" : "set issuer",
        "source" : [{
          "context" : "protocol",
          "element" : "authority",
          "variable" : "authority"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "issuer",
          "variable" : "issuer"
        }],
        "rule" : [{
          "name" : "set issuer from reference",
          "source" : [{
            "context" : "authority",
            "element" : "reference",
            "variable" : "reference"
          }],
          "target" : [{
            "context" : "issuer",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "identifier"
          }],
          "rule" : [{
            "name" : "set reference",
            "source" : [{
              "context" : "reference"
            }],
            "target" : [{
              "context" : "identifier",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "reference"
              }]
            }]
          }]
        },
        {
          "name" : "set issuer identifier",
          "source" : [{
            "context" : "authority",
            "element" : "identifier",
            "variable" : "identifier"
          }],
          "target" : [{
            "context" : "issuer",
            "contextType" : "variable",
            "element" : "identifier",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "identifier"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set vaccination centre location",
      "source" : [{
        "context" : "immunization",
        "element" : "location",
        "variable" : "location"
      }],
      "rule" : [{
        "name" : "set vaccination centre from reference",
        "source" : [{
          "context" : "location",
          "element" : "reference",
          "variable" : "reference"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "centre",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "reference"
          }]
        }]
      },
      {
        "name" : "set vaccination centre",
        "source" : [{
          "context" : "location",
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
    },
    {
      "name" : "set performer",
      "source" : [{
        "context" : "immunization",
        "element" : "performer",
        "listMode" : "first",
        "variable" : "performer"
      }],
      "rule" : [{
        "name" : "set actor",
        "source" : [{
          "context" : "performer",
          "element" : "actor",
          "variable" : "actor"
        }],
        "rule" : [{
          "name" : "set practitioner",
          "source" : [{
            "context" : "actor",
            "element" : "identifier",
            "variable" : "identifier"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "practitioner",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "identifier"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ImmRecToDDCCVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "immRec",
      "type" : "DDCCImmunizationRecommendation",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "get recommendation",
      "source" : [{
        "context" : "immRec",
        "element" : "recommendation",
        "variable" : "rec"
      }],
      "rule" : [{
        "name" : "get date criterion",
        "source" : [{
          "context" : "rec",
          "element" : "dateCriterion",
          "listMode" : "first",
          "variable" : "due_date"
        }],
        "rule" : [{
          "name" : "set due date",
          "source" : [{
            "context" : "due_date",
            "element" : "value",
            "variable" : "date"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "nextDose",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "date"
            }]
          }]
        }]
      }]
    }]
  }]
}

```
