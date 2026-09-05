# DDCC Organization - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Organization**

## Resource Profile: DDCC Organization 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCOrganization |

 
Abstraction for a DDCC Organization. There should be a DDCC Organization associated to each public health authortiy (PHA) 

**Usages:**

* Use this Profile: [DDCC Document](StructureDefinition-DDCCDocument.md)
* Refer to this Profile: [DDCC Composition](StructureDefinition-DDCCComposition.md), [DDCC Core Data Set Logical Model](StructureDefinition-DDCCCoreDataSet.md), [DDCC DocumentReference return for QR](StructureDefinition-DDCCDocumentReferenceQR.md), [DDCC Immunization](StructureDefinition-DDCCImmunization.md)... Show 2 more, [DDCC Practitioner](StructureDefinition-DDCCPractitioner.md) and [DDCC Practitioner Role](StructureDefinition-DDCCPractitionerRole.md)
* Examples for this Profile: [مستشفى حكومي](Organization-DDCCOrganizationArabic.md), [政府医院](Organization-DDCCOrganizationChinese.md), [Government Hospital](Organization-DDCCOrganizationEnglish.md), [Hôpital du gouvernement](Organization-DDCCOrganizationFrench.md)... Show 3 more, [Государственная больница](Organization-DDCCOrganizationRussian.md), [Hospital del Gobierno](Organization-DDCCOrganizationSpanish.md) and [Chile (Demonstration)](Organization-DDCCOrganizationXCL.md)
* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCOrganization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCOrganization.csv), [Excel](StructureDefinition-DDCCOrganization.xlsx), [Schematron](StructureDefinition-DDCCOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCOrganization",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization",
  "version" : "1.0.0",
  "name" : "DDCCOrganization",
  "title" : "DDCC Organization",
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
  "description" : "Abstraction for a DDCC Organization. There should be a DDCC Organization associated \nto each public health authortiy (PHA)",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
