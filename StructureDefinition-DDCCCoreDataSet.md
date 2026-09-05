# DDCC Core Data Set Logical Model - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Core Data Set Logical Model**

## Logical Model: DDCC Core Data Set Logical Model ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCCoreDataSet |

 
Data elements for the DDCC Core Data Set. 

**Usages:**

* Derived from this Logical Model: [DDCC Core Data Set Logical Model for Test Result](StructureDefinition-DDCCCoreDataSetTR.md) and [DDCC Core Data Set Logical Model for Vaccination Status](StructureDefinition-DDCCCoreDataSetVS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCCoreDataSet.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCCoreDataSet.csv), [Excel](StructureDefinition-DDCCCoreDataSet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCCoreDataSet",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
  "version" : "1.0.0",
  "name" : "DDCCCoreDataSet",
  "title" : "DDCC Core Data Set Logical Model",
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
  "description" : "Data elements for the DDCC Core Data Set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ddcc-composition",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-patient",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "name" : "WHO Digital Documentation of COVID Certificates"
  }],
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DDCCCoreDataSet",
      "path" : "DDCCCoreDataSet",
      "short" : "DDCC Core Data Set Logical Model",
      "definition" : "Data elements for the DDCC Core Data Set."
    },
    {
      "id" : "DDCCCoreDataSet.name",
      "path" : "DDCCCoreDataSet.name",
      "short" : "Name",
      "definition" : "The full name of the person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-patient",
        "map" : "Patient.name.text"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.birthDate",
      "path" : "DDCCCoreDataSet.birthDate",
      "short" : "Date of birth",
      "definition" : "The person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-patient",
        "map" : "Patient.birthDate"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.identifier",
      "path" : "DDCCCoreDataSet.identifier",
      "short" : "Unique identifier",
      "definition" : "Unique identifier for the person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-patient",
        "map" : "Patient.identifier"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.certificate",
      "path" : "DDCCCoreDataSet.certificate",
      "short" : "Certificate Metadata",
      "definition" : "Metadata associated with the certificate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "isSummary" : true
    },
    {
      "id" : "DDCCCoreDataSet.certificate.issuer",
      "path" : "DDCCCoreDataSet.certificate.issuer",
      "short" : "Certificate issuer",
      "definition" : "Certificate issuer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-composition",
        "map" : "Composition.author.identifier"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.certificate.kid",
      "path" : "DDCCCoreDataSet.certificate.kid",
      "short" : "Key ID used to verify the signature of the certificate",
      "definition" : "Key ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.certificate.hcid",
      "path" : "DDCCCoreDataSet.certificate.hcid",
      "short" : "Health certificate identifier (HCID)",
      "definition" : "Health certificate identifier (HCID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "isSummary" : true
    },
    {
      "id" : "DDCCCoreDataSet.certificate.ddccid",
      "path" : "DDCCCoreDataSet.certificate.ddccid",
      "short" : "DDCC Identifier",
      "definition" : "DDCC Identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "isSummary" : true
    },
    {
      "id" : "DDCCCoreDataSet.certificate.version",
      "path" : "DDCCCoreDataSet.certificate.version",
      "short" : "Certificate schema version",
      "definition" : "Certificate schema version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true
    },
    {
      "id" : "DDCCCoreDataSet.certificate.period",
      "path" : "DDCCCoreDataSet.certificate.period",
      "short" : "Certificate Validity Period",
      "definition" : "Certificate validity period.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "ddcc-composition",
        "map" : "Composition.event.period"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.certificate.period.start",
      "path" : "DDCCCoreDataSet.certificate.period.start",
      "short" : "Certificate valid from",
      "definition" : "Start date of certificate validity.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.certificate.period.end",
      "path" : "DDCCCoreDataSet.certificate.period.end",
      "short" : "Certificate valid until",
      "definition" : "End date of certificate validity.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
