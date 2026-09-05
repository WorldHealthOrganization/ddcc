# DDCC Revoke Health Certificate Parameters - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Revoke Health Certificate Parameters**

## Resource Profile: DDCC Revoke Health Certificate Parameters 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCRevokeHealthCertificateParameters | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCRevokeHealthCertificateParameters |

 
Parameters for the [DDCC Revoke Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-revokeHealthCertificate.md). 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCRevokeHealthCertificateParameters.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCRevokeHealthCertificateParameters.csv), [Excel](StructureDefinition-DDCCRevokeHealthCertificateParameters.xlsx), [Schematron](StructureDefinition-DDCCRevokeHealthCertificateParameters.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCRevokeHealthCertificateParameters",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCRevokeHealthCertificateParameters",
  "version" : "1.0.0",
  "name" : "DDCCRevokeHealthCertificateParameters",
  "title" : "DDCC Revoke Health Certificate Parameters",
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
  "description" : "Parameters for the [DDCC Revoke Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-revokeHealthCertificate.html).",
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
      "id" : "Parameters.parameter:ddccId",
      "path" : "Parameters.parameter",
      "sliceName" : "ddccId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:ddccId.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "id"
    },
    {
      "id" : "Parameters.parameter:ddccId.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "id"
      }]
    }]
  }
}

```
