# DDCC Immunization Recommendation - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Immunization Recommendation**

## Resource Profile: DDCC Immunization Recommendation 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCImmunizationRecommendation |

 
A DDCC Immunization Recommendation contains the content corresponding to when a patient should return for a booster shot. 

**Usages:**

* Use this Profile: [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md) and [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md)
* Refer to this Profile: [DDCC:VS Composition](StructureDefinition-DDCCVSComposition.md)
* Examples for this Profile: [ImmunizationRecommendation/DDCCImmunizationRecommendationArabic](ImmunizationRecommendation-DDCCImmunizationRecommendationArabic.md), [ImmunizationRecommendation/DDCCImmunizationRecommendationChinese](ImmunizationRecommendation-DDCCImmunizationRecommendationChinese.md), [ImmunizationRecommendation/DDCCImmunizationRecommendationEnglish](ImmunizationRecommendation-DDCCImmunizationRecommendationEnglish.md), [ImmunizationRecommendation/DDCCImmunizationRecommendationFrench](ImmunizationRecommendation-DDCCImmunizationRecommendationFrench.md)... Show 2 more, [ImmunizationRecommendation/DDCCImmunizationRecommendationRussian](ImmunizationRecommendation-DDCCImmunizationRecommendationRussian.md) and [ImmunizationRecommendation/DDCCImmunizationRecommendationSpanish](ImmunizationRecommendation-DDCCImmunizationRecommendationSpanish.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCImmunizationRecommendation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCImmunizationRecommendation.csv), [Excel](StructureDefinition-DDCCImmunizationRecommendation.xlsx), [Schematron](StructureDefinition-DDCCImmunizationRecommendation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCImmunizationRecommendation",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation",
  "version" : "1.0.0",
  "name" : "DDCCImmunizationRecommendation",
  "title" : "DDCC Immunization Recommendation",
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
  "description" : "A DDCC Immunization Recommendation contains the content corresponding to when\na patient should return for a booster shot.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImmunizationRecommendation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImmunizationRecommendation",
      "path" : "ImmunizationRecommendation"
    },
    {
      "id" : "ImmunizationRecommendation.patient",
      "path" : "ImmunizationRecommendation.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation",
      "path" : "ImmunizationRecommendation.recommendation",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode",
      "label" : "Vaccine or prophylaxis",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode.coding",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "exists",
          "path" : "system"
        },
        {
          "type" : "exists",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode.coding:ddccVaccine",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode.coding",
      "sliceName" : "ddccVaccine",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19"
      }
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode.coding:ddccVaccine.system",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode.coding:ddccVaccine.code",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.targetDisease",
      "path" : "ImmunizationRecommendation.recommendation.targetDisease",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCDiseaseTargetedCOVID19"
      }
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "path" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status",
          "code" : "due"
        }]
      }
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.dateCriterion",
      "path" : "ImmunizationRecommendation.recommendation.dateCriterion",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.dateCriterion.code",
      "path" : "ImmunizationRecommendation.recommendation.dateCriterion.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "30980-7"
        }]
      }
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.dateCriterion.value",
      "path" : "ImmunizationRecommendation.recommendation.dateCriterion.value",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.supportingImmunization",
      "path" : "ImmunizationRecommendation.recommendation.supportingImmunization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
