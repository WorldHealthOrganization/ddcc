# DDCC Patient - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Patient**

## Resource Profile: DDCC Patient 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCPatient | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCPatient |

 
A DDCCPatient should: 
* if the [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier] is set then the value of [identifier.assigner](StructureDefinition-DDCCPatient-definitions.md#Patient.identifier.assigner) should be set to reference the [DDCC Organization](StructureDefinition-DDCCOrganization.md) resource associated to the PHA.
* obeys who-ddcc-patient-1
 

**Usages:**

* Use this Profile: [DDCC Document](StructureDefinition-DDCCDocument.md), [DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md) and [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md)
* Refer to this Profile: [DDCC Composition](StructureDefinition-DDCCComposition.md), [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.md), [DDCC DocumentReference return for QR](StructureDefinition-DDCCDocumentReferenceQR.md), [DDCC Folder](StructureDefinition-DDCCFolder.md)... Show 3 more, [DDCC Immunization](StructureDefinition-DDCCImmunization.md), [DDCC Immunization Recommendation](StructureDefinition-DDCCImmunizationRecommendation.md) and [DDCC Submission Set](StructureDefinition-DDCCSubmissionSet.md)
* Examples for this Profile: [Patient/DDCCPatientArabic](Patient-DDCCPatientArabic.md), [Patient/DDCCPatientChinese](Patient-DDCCPatientChinese.md), [Patient/DDCCPatientEnglish](Patient-DDCCPatientEnglish.md), [Patient/DDCCPatientFrench](Patient-DDCCPatientFrench.md)... Show 2 more, [Patient/DDCCPatientRussian](Patient-DDCCPatientRussian.md) and [Patient/DDCCPatientSpanish](Patient-DDCCPatientSpanish.md)
* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCPatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCPatient.csv), [Excel](StructureDefinition-DDCCPatient.xlsx), [Schematron](StructureDefinition-DDCCPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCPatient",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
  "version" : "1.0.0",
  "name" : "DDCCPatient",
  "title" : "DDCC Patient",
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
  "description" : "A DDCCPatient should:\n* if the [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier] is set then the value of [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier.assigner) should be set to reference the [DDCC Organization](StructureDefinition-DDCCOrganization.html) resource associated to the PHA.\n* obeys who-ddcc-patient-1",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        },
        {
          "type" : "exists",
          "path" : "text"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.name:ddccName",
      "path" : "Patient.name",
      "sliceName" : "ddccName",
      "label" : "Name",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name:ddccName.use",
      "path" : "Patient.name.use",
      "min" : 1,
      "patternCode" : "official",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name:ddccName.text",
      "path" : "Patient.name.text",
      "min" : 1
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "label" : "Sex"
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "label" : "Date of birth"
    }]
  }
}

```
