# DDCC Vaccine Valid From - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Vaccine Valid From**

## Extension: DDCC Vaccine Valid From 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCVaccineValidFrom |

Date upon which provided vaccination is considered valid

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)
* Examples for this Extension: [Bundle/Example-Russian](Bundle-Example-Russian.md), [Bundle/ExampleArabic](Bundle-ExampleArabic.md), [Bundle/ExampleChinese](Bundle-ExampleChinese.md), [Bundle/ExampleEnglish](Bundle-ExampleEnglish.md)... Show 8 more, [Bundle/ExampleFrench](Bundle-ExampleFrench.md), [Bundle/ExampleSpanish](Bundle-ExampleSpanish.md), [Immunization/DDCCImmunizationArabic](Immunization-DDCCImmunizationArabic.md), [Immunization/DDCCImmunizationChinese](Immunization-DDCCImmunizationChinese.md), [Immunization/DDCCImmunizationEnglish](Immunization-DDCCImmunizationEnglish.md), [Immunization/DDCCImmunizationFrench](Immunization-DDCCImmunizationFrench.md), [Immunization/DDCCImmunizationRussian](Immunization-DDCCImmunizationRussian.md) and [Immunization/DDCCImmunizationSpanish](Immunization-DDCCImmunizationSpanish.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCVaccineValidFrom.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCVaccineValidFrom.csv), [Excel](StructureDefinition-DDCCVaccineValidFrom.xlsx), [Schematron](StructureDefinition-DDCCVaccineValidFrom.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCVaccineValidFrom",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom",
  "version" : "1.0.0",
  "name" : "DDCCVaccineValidFrom",
  "title" : "DDCC Vaccine Valid From",
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
  "description" : "Date upon which provided vaccination is considered valid",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Immunization"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "DDCC Vaccine Valid From",
      "definition" : "Date upon which provided vaccination is considered valid"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true
    }]
  }
}

```
