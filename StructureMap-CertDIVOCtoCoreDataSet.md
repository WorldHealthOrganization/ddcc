# CertDIVOCtoCoreDataSet - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CertDIVOCtoCoreDataSet**

## StructureMap: CertDIVOCtoCoreDataSet 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureMap/CertDIVOCtoCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CertDIVOCtoCoreDataSet |

 
Structure map transforming CertDIVOC logical model to bundle of Core Data Set logical model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "CertDIVOCtoCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureMap/CertDIVOCtoCoreDataSet",
  "version" : "1.0.0",
  "name" : "CertDIVOCtoCoreDataSet",
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
  "description" : "Structure map transforming CertDIVOC logical model to bundle of Core Data Set logical model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/CertDIVOC",
    "mode" : "source",
    "alias" : "DIVOC"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "DDCCBundle"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
    "mode" : "target",
    "alias" : "DDCC"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS",
    "mode" : "target",
    "alias" : "DDCCVS"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetTR",
    "mode" : "target",
    "alias" : "DDCCTR"
  }],
  "group" : [{
    "name" : "CertDIVOCtoCoreDataSetBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "DIVOC",
      "mode" : "source"
    },
    {
      "name" : "ddccBundle",
      "type" : "DDCCBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "type",
      "source" : [{
        "context" : "src",
        "element" : "type",
        "variable" : "type"
      }],
      "rule" : [{
        "name" : "ProofOfVaccinationCredential",
        "source" : [{
          "context" : "type",
          "condition" : "type = 'ProofOfVaccinationCredential'"
        }],
        "rule" : [{
          "name" : "evidence",
          "source" : [{
            "context" : "src",
            "element" : "evidence",
            "variable" : "evidence"
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
              "context" : "src",
              "element" : "credentialSubject",
              "variable" : "credentialSubject"
            }],
            "dependent" : [{
              "name" : "CredentialSubjecttoCoreDataSet",
              "variable" : ["credentialSubject", "ddcc"]
            }]
          },
          {
            "name" : "set certificate",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "certificate",
              "variable" : "certificate"
            }],
            "dependent" : [{
              "name" : "CertDIVOCtoCoreDataSetCertificate",
              "variable" : ["src", "evidence", "certificate"]
            }]
          },
          {
            "name" : "set vaccination",
            "source" : [{
              "context" : "evidence"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "vaccination",
              "variable" : "vaccination"
            }],
            "dependent" : [{
              "name" : "EvidencetoCoreDataSetVS",
              "variable" : ["evidence", "vaccination"]
            }]
          },
          {
            "name" : "set outentry",
            "source" : [{
              "context" : "evidence"
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
          }]
        }]
      },
      {
        "name" : "ProofOfTestCertificateCredential",
        "source" : [{
          "context" : "type",
          "condition" : "type = 'ProofOfTestCertificateCredential'"
        }],
        "rule" : [{
          "name" : "evidence",
          "source" : [{
            "context" : "src",
            "element" : "evidence",
            "variable" : "evidence"
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
              "context" : "src",
              "element" : "credentialSubject",
              "variable" : "credentialSubject"
            }],
            "dependent" : [{
              "name" : "CredentialSubjecttoCoreDataSet",
              "variable" : ["credentialSubject", "ddcc"]
            }]
          },
          {
            "name" : "set certificate",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "certificate",
              "variable" : "certificate"
            }],
            "dependent" : [{
              "name" : "CertDIVOCtoCoreDataSetCertificate",
              "variable" : ["src", "evidence", "certificate"]
            }]
          },
          {
            "name" : "set test",
            "source" : [{
              "context" : "evidence"
            }],
            "target" : [{
              "context" : "ddcc",
              "contextType" : "variable",
              "element" : "test",
              "variable" : "test"
            }],
            "dependent" : [{
              "name" : "EvidencetoCoreDataSetTR",
              "variable" : ["evidence", "test"]
            }]
          },
          {
            "name" : "set outentry",
            "source" : [{
              "context" : "evidence"
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
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CredentialSubjecttoCoreDataSet",
    "typeMode" : "none",
    "input" : [{
      "name" : "credentialSubject",
      "mode" : "source"
    },
    {
      "name" : "ddcc",
      "type" : "DDCC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set name",
      "source" : [{
        "context" : "credentialSubject",
        "element" : "name",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "name"
        }]
      }]
    },
    {
      "name" : "set birthDate",
      "source" : [{
        "context" : "credentialSubject",
        "element" : "dob",
        "variable" : "birthDate"
      }],
      "target" : [{
        "context" : "ddcc",
        "contextType" : "variable",
        "element" : "birthDate",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "birthDate"
        }]
      }]
    },
    {
      "name" : "identifier",
      "source" : [{
        "context" : "credentialSubject",
        "element" : "id",
        "variable" : "id"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "identifier",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      },
      {
        "context" : "identifier",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }],
      "rule" : [{
        "name" : "set identifier",
        "source" : [{
          "context" : "id"
        }],
        "target" : [{
          "context" : "ddcc",
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
    "name" : "CertDIVOCtoCoreDataSetCertificate",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "DIVOC",
      "mode" : "source"
    },
    {
      "name" : "evidence",
      "mode" : "source"
    },
    {
      "name" : "certificate",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set hcid",
      "source" : [{
        "context" : "evidence",
        "element" : "certificateId",
        "variable" : "certificateId"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "hcid",
        "variable" : "hcid"
      },
      {
        "context" : "hcid",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "certificateId"
        }]
      }]
    },
    {
      "name" : "context",
      "source" : [{
        "context" : "src",
        "element" : "context",
        "variable" : "context"
      }],
      "rule" : [{
        "name" : "set version",
        "source" : [{
          "context" : "context",
          "condition" : "context.contains('cowin.gov.in')"
        }],
        "target" : [{
          "context" : "certificate",
          "contextType" : "variable",
          "element" : "version",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "context"
          }]
        }]
      }]
    },
    {
      "name" : "period",
      "source" : [{
        "context" : "evidence"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "period",
        "variable" : "period",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Period"
        }]
      }],
      "rule" : [{
        "name" : "set period start",
        "source" : [{
          "context" : "evidence",
          "element" : "effectiveStart",
          "variable" : "effectiveStart"
        }],
        "target" : [{
          "context" : "period",
          "contextType" : "variable",
          "element" : "start",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "effectiveStart"
          }]
        }]
      },
      {
        "name" : "set period end",
        "source" : [{
          "context" : "evidence",
          "element" : "effectiveUntil",
          "variable" : "effectiveUntil"
        }],
        "target" : [{
          "context" : "period",
          "contextType" : "variable",
          "element" : "end",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "effectiveUntil"
          }]
        }]
      }]
    },
    {
      "name" : "set issuer",
      "source" : [{
        "context" : "src",
        "element" : "issuer",
        "variable" : "issuer"
      }],
      "target" : [{
        "context" : "certificate",
        "contextType" : "variable",
        "element" : "issuer",
        "variable" : "issuer",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      },
      {
        "context" : "issuer",
        "contextType" : "variable",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "issuer"
        }]
      }]
    }]
  },
  {
    "name" : "EvidencetoCoreDataSetVS",
    "typeMode" : "none",
    "input" : [{
      "name" : "evidence",
      "mode" : "source"
    },
    {
      "name" : "vaccination",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set vaccine",
      "source" : [{
        "context" : "evidence",
        "element" : "icd11Code",
        "variable" : "icd11Code"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "vaccine",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://id.who.int/icd11/mms"
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
      }]
    },
    {
      "name" : "set brand",
      "source" : [{
        "context" : "evidence",
        "element" : "vaccine",
        "variable" : "vaccine"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "brand",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "vaccine"
        }]
      }]
    },
    {
      "name" : "set manufacturer",
      "source" : [{
        "context" : "evidence",
        "element" : "manufacturer",
        "variable" : "manufacturer"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "manufacturer",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "manufacturer"
        }]
      }]
    },
    {
      "name" : "set lot",
      "source" : [{
        "context" : "evidence",
        "element" : "batch",
        "variable" : "batch"
      }],
      "target" : [{
        "context" : "vaccination",
        "contextType" : "variable",
        "element" : "lot",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "batch"
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "evidence",
        "element" : "date",
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
      "name" : "set dose",
      "source" : [{
        "context" : "evidence",
        "element" : "dose",
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
        "context" : "evidence",
        "element" : "totalDoses",
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
      "name" : "facility",
      "source" : [{
        "context" : "evidence",
        "element" : "facility",
        "variable" : "facility"
      }],
      "rule" : [{
        "name" : "address",
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
            "variable" : "addressCountry"
          }],
          "target" : [{
            "context" : "vaccination",
            "contextType" : "variable",
            "element" : "country",
            "variable" : "coding"
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "urn:iso:std:iso:3166"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "addressCountry"
            }]
          }]
        }]
      },
      {
        "name" : "set centre",
        "source" : [{
          "context" : "facility",
          "element" : "name",
          "variable" : "name"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "centre",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "name"
          }]
        }]
      }]
    },
    {
      "name" : "verifier",
      "source" : [{
        "context" : "evidence",
        "element" : "verifier",
        "variable" : "verifier"
      }],
      "rule" : [{
        "name" : "set practitioner",
        "source" : [{
          "context" : "verifier",
          "element" : "name",
          "variable" : "name"
        }],
        "target" : [{
          "context" : "vaccination",
          "contextType" : "variable",
          "element" : "practitioner",
          "variable" : "practitioner"
        },
        {
          "context" : "practitioner",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "name"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "EvidencetoCoreDataSetTR",
    "typeMode" : "none",
    "input" : [{
      "name" : "evidence",
      "mode" : "source"
    },
    {
      "name" : "test",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "disease",
      "source" : [{
        "context" : "evidence",
        "element" : "disease",
        "variable" : "disease"
      }],
      "rule" : [{
        "name" : "set COVID19 pathogen",
        "source" : [{
          "context" : "disease",
          "condition" : "disease = 'COVID-19'"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "pathogen",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://id.who.int/icd11/mms"
          }]
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "XN109"
          }]
        }]
      },
      {
        "name" : "set other pathogen",
        "source" : [{
          "context" : "disease",
          "condition" : "(disease = 'COVID-19').not()"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "pathogen",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "disease"
          }]
        }]
      }]
    },
    {
      "name" : "testType",
      "source" : [{
        "context" : "evidence",
        "element" : "testType",
        "variable" : "testType"
      }],
      "rule" : [{
        "name" : "set default type",
        "source" : [{
          "context" : "testType"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "type",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "testType"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "testType"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/lab-test-type-divoc"
          },
          {
            "valueId" : "testType"
          }]
        }],
        "rule" : [{
          "name" : "translate DIVOC type",
          "source" : [{
            "context" : "testType",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-type-divoc')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "type",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-type-divoc-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "sampleOrigin",
      "source" : [{
        "context" : "evidence",
        "element" : "sampleOrigin",
        "variable" : "sampleOrigin"
      }],
      "rule" : [{
        "name" : "set default origin",
        "source" : [{
          "context" : "sampleOrigin"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "origin",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sampleOrigin"
          }]
        }]
      },
      {
        "name" : "coding",
        "source" : [{
          "context" : "sampleOrigin"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-divoc"
          },
          {
            "valueId" : "sampleOrigin"
          }]
        }],
        "rule" : [{
          "name" : "translate DIVOC origin",
          "source" : [{
            "context" : "sampleOrigin",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-sample-origin-divoc')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "origin",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-sample-origin-divoc-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "result",
      "source" : [{
        "context" : "evidence",
        "element" : "result",
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
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "result"
          }]
        }]
      },
      {
        "name" : "coded",
        "source" : [{
          "context" : "result"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "coded",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ddcc/CodeSystem/lab-test-qual-result-divoc"
          },
          {
            "valueId" : "result"
          }]
        }],
        "rule" : [{
          "name" : "translate DIVOC result",
          "source" : [{
            "context" : "result",
            "condition" : "coded.memberOf('http://smart.who.int/ddcc/ValueSet/lab-test-qual-result-divoc')"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "result",
            "transform" : "translate",
            "parameter" : [{
              "valueId" : "coded"
            },
            {
              "valueString" : "http://smart.who.int/ddcc/ConceptMap/lab-test-qual-result-divoc-to-icd11"
            },
            {
              "valueString" : "Coding"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "set date",
      "source" : [{
        "context" : "evidence",
        "element" : "sampleCollectionTimestamp",
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
      "name" : "set brand",
      "source" : [{
        "context" : "evidence",
        "element" : "testName",
        "variable" : "testName"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "brand",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "testName"
        }]
      }]
    },
    {
      "name" : "set manufacturer",
      "source" : [{
        "context" : "evidence",
        "element" : "manufacturer",
        "variable" : "manufacturer"
      }],
      "target" : [{
        "context" : "test",
        "contextType" : "variable",
        "element" : "manufacturer",
        "variable" : "coding"
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "manufacturer"
        }]
      }]
    },
    {
      "name" : "facility",
      "source" : [{
        "context" : "evidence",
        "element" : "facility",
        "variable" : "facility"
      }],
      "rule" : [{
        "name" : "address",
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
            "variable" : "addressCountry"
          }],
          "target" : [{
            "context" : "test",
            "contextType" : "variable",
            "element" : "country",
            "variable" : "coding"
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "urn:iso:std:iso:3166"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "addressCountry"
            }]
          }]
        }]
      },
      {
        "name" : "set centre",
        "source" : [{
          "context" : "facility",
          "element" : "name",
          "variable" : "name"
        }],
        "target" : [{
          "context" : "test",
          "contextType" : "variable",
          "element" : "centre",
          "variable" : "coding"
        },
        {
          "context" : "coding",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "name"
          }]
        }]
      }]
    }]
  }]
}

```
