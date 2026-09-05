# Certificate - Smart Health Card's JSon Web Token Logical Model - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Certificate - Smart Health Card's JSon Web Token Logical Model**

## Logical Model: Certificate - Smart Health Card's JSon Web Token Logical Model ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/CertSHC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CertSHC |

 
Data elements for the Smart Health Cards Core Data Set. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-CertSHC.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CertSHC.csv), [Excel](StructureDefinition-CertSHC.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CertSHC",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/CertSHC",
  "version" : "1.0.0",
  "name" : "CertSHC",
  "title" : "Certificate - Smart Health Card's JSon Web Token Logical Model",
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
  "description" : "Data elements for the Smart Health Cards Core Data Set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://smart.who.int/ddcc/StructureDefinition/CertSHC",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "CertSHC",
      "path" : "CertSHC",
      "short" : "Certificate - Smart Health Card's JSon Web Token Logical Model",
      "definition" : "Data elements for the Smart Health Cards Core Data Set."
    },
    {
      "id" : "CertSHC.iss",
      "path" : "CertSHC.iss",
      "short" : "Issuer",
      "definition" : "Issuer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertSHC.sub",
      "path" : "CertSHC.sub",
      "short" : "Subject",
      "definition" : "Subject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertSHC.aud",
      "path" : "CertSHC.aud",
      "short" : "Audience",
      "definition" : "Audience",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertSHC.exp",
      "path" : "CertSHC.exp",
      "short" : "Expiration Date",
      "definition" : "Expiration Date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "CertSHC.nbf",
      "path" : "CertSHC.nbf",
      "short" : "Not before Date",
      "definition" : "Not before Date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "CertSHC.iat",
      "path" : "CertSHC.iat",
      "short" : "Issued at Date",
      "definition" : "Issued at Date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "CertSHC.jti",
      "path" : "CertSHC.jti",
      "short" : "Credential's Unique Identifier",
      "definition" : "Credential's Unique Identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertSHC.vc",
      "path" : "CertSHC.vc",
      "short" : "VC - verifiable credential",
      "definition" : "VC - verifiable credential",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertSHC.vc.type",
      "path" : "CertSHC.vc.type",
      "short" : "Credential Type",
      "definition" : "Credential Type",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertSHC.vc.credentialSubject",
      "path" : "CertSHC.vc.credentialSubject",
      "short" : "Credential Subject",
      "definition" : "Credential Subject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertSHC.vc.credentialSubject.fhirVersion",
      "path" : "CertSHC.vc.credentialSubject.fhirVersion",
      "short" : "Fhir Version",
      "definition" : "Fhir Version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertSHC.vc.credentialSubject.fhirBundle",
      "path" : "CertSHC.vc.credentialSubject.fhirBundle",
      "short" : "Fhir Bundle with the signed objects",
      "definition" : "Fhir Bundle with the signed objects",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Bundle"
      }]
    }]
  }
}

```
