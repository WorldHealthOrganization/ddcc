# DDCC Event Brand for Immunization - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Event Brand for Immunization**

## Extension: DDCC Event Brand for Immunization 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCEventBrand |

DDCC Event Brand for Immunization

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)
* Examples for this Extension: [Bundle/Example-Russian](Bundle-Example-Russian.md), [Bundle/ExampleArabic](Bundle-ExampleArabic.md), [Bundle/ExampleChinese](Bundle-ExampleChinese.md), [Bundle/ExampleEnglish](Bundle-ExampleEnglish.md)... Show 8 more, [Bundle/ExampleFrench](Bundle-ExampleFrench.md), [Bundle/ExampleSpanish](Bundle-ExampleSpanish.md), [Immunization/DDCCImmunizationArabic](Immunization-DDCCImmunizationArabic.md), [Immunization/DDCCImmunizationChinese](Immunization-DDCCImmunizationChinese.md), [Immunization/DDCCImmunizationEnglish](Immunization-DDCCImmunizationEnglish.md), [Immunization/DDCCImmunizationFrench](Immunization-DDCCImmunizationFrench.md), [Immunization/DDCCImmunizationRussian](Immunization-DDCCImmunizationRussian.md) and [Immunization/DDCCImmunizationSpanish](Immunization-DDCCImmunizationSpanish.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCEventBrand.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCEventBrand.csv), [Excel](StructureDefinition-DDCCEventBrand.xlsx), [Schematron](StructureDefinition-DDCCEventBrand.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCEventBrand",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand",
  "version" : "1.0.0",
  "name" : "DDCCEventBrand",
  "title" : "DDCC Event Brand for Immunization",
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
  "description" : "DDCC Event Brand for Immunization",
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
      "short" : "DDCC Event Brand for Immunization",
      "definition" : "DDCC Event Brand for Immunization"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "mustSupport" : true
    }]
  }
}

```
