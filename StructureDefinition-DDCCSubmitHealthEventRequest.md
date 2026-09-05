# DDCC Submit Health Event Request - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Submit Health Event Request**

## Resource Profile: DDCC Submit Health Event Request 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCSubmitHealthEventRequest |

 
An [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.md) is a transaction bundle containing the content of health events which are being submitted under the [Submit Health Event](transactions.md#submit-health-event) transaction. 

**Usages:**

* Examples for this Profile: [Bundle/DDCCTXSHEbundleexample1](Bundle-DDCCTXSHEbundleexample1.md), [Bundle/DDCCTXSHEbundleexampleArabic](Bundle-DDCCTXSHEbundleexampleArabic.md), [Bundle/DDCCTXSHEbundleexampleChinese](Bundle-DDCCTXSHEbundleexampleChinese.md), [Bundle/DDCCTXSHEbundleexampleFrench](Bundle-DDCCTXSHEbundleexampleFrench.md)... Show 2 more, [Bundle/DDCCTXSHEbundleexampleRussian](Bundle-DDCCTXSHEbundleexampleRussian.md) and [Bundle/DDCCTXSHEbundleexampleSpanish](Bundle-DDCCTXSHEbundleexampleSpanish.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCSubmitHealthEventRequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCSubmitHealthEventRequest.csv), [Excel](StructureDefinition-DDCCSubmitHealthEventRequest.xlsx), [Schematron](StructureDefinition-DDCCSubmitHealthEventRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCSubmitHealthEventRequest",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest",
  "version" : "1.0.0",
  "name" : "DDCCSubmitHealthEventRequest",
  "title" : "DDCC Submit Health Event Request",
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
  "description" : "An [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.html) is a transaction bundle containing the content of health events which are being submitted under the [Submit Health Event](transactions.html#submit-health-event) transaction.",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "DDCC Submit Health Event Request",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "batch",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:ddccParameters",
      "path" : "Bundle.entry",
      "sliceName" : "ddccParameters",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:ddccParameters.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Parameters",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCGenerateHealthCertificateParameters"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccParameters.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:ddccQuestionnaireResponse",
      "path" : "Bundle.entry",
      "sliceName" : "ddccQuestionnaireResponse",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:ddccQuestionnaireResponse.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"]
      }]
    },
    {
      "id" : "Bundle.entry:ddccQuestionnaireResponse.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:ddccQuestionnaireResponse.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "QuestionnaireResponse/$generateHealthCertificate"
    }]
  }
}

```
