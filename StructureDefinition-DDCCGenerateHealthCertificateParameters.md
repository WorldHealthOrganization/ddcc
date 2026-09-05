# DDCC Generate Health Certificate Parameters - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Generate Health Certificate Parameters**

## Resource Profile: DDCC Generate Health Certificate Parameters 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCGenerateHealthCertificateParameters | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCGenerateHealthCertificateParameters |

 
Parameters for the [DDCC Generate Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthCertificate.md). 

**Usages:**

* Use this Profile: [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCGenerateHealthCertificateParameters.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCGenerateHealthCertificateParameters.csv), [Excel](StructureDefinition-DDCCGenerateHealthCertificateParameters.xlsx), [Schematron](StructureDefinition-DDCCGenerateHealthCertificateParameters.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCGenerateHealthCertificateParameters",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCGenerateHealthCertificateParameters",
  "version" : "1.0.0",
  "name" : "DDCCGenerateHealthCertificateParameters",
  "title" : "DDCC Generate Health Certificate Parameters",
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
  "description" : "Parameters for the [DDCC Generate Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthCertificate.html).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Parameters",
      "path" : "Parameters"
    },
    {
      "id" : "Parameters.parameter",
      "path" : "Parameters.parameter",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "name"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Parameters.parameter:ddccResponse",
      "path" : "Parameters.parameter",
      "sliceName" : "ddccResponse",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:ddccResponse.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "response"
    },
    {
      "id" : "Parameters.parameter:ddccResponse.resource",
      "path" : "Parameters.parameter.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"]
      },
      {
        "code" : "Bundle"
      }]
    }]
  }
}

```
