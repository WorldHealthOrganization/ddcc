# DDCC Questionnaire based on SDC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Questionnaire based on SDC**

## Resource Profile: DDCC Questionnaire based on SDC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireSDC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCQuestionnaireSDC |

 
DDCC Questionniare based on SDC Populatable Questionnaire with additional extension 

**Usages:**

* Examples for this Profile: [DDCCHCIDRegistrationQuestionnaire](Questionnaire-DDCCHCIDRegistrationQuestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCQuestionnaireSDC.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCQuestionnaireSDC.csv), [Excel](StructureDefinition-DDCCQuestionnaireSDC.xlsx), [Schematron](StructureDefinition-DDCCQuestionnaireSDC.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCQuestionnaireSDC",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireSDC",
  "version" : "1.0.0",
  "name" : "DDCCQuestionnaireSDC",
  "title" : "DDCC Questionnaire based on SDC",
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
  "description" : "DDCC Questionniare based on SDC Populatable Questionnaire with additional extension",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.item.extension:extractionContext",
      "path" : "Questionnaire.item.extension",
      "sliceName" : "extractionContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"]
      }]
    },
    {
      "id" : "Questionnaire.item.item",
      "path" : "Questionnaire.item.item",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Questionnaire.item.item.extension",
      "path" : "Questionnaire.item.item.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Questionnaire.item.item.extension:extractionContext",
      "path" : "Questionnaire.item.item.extension",
      "sliceName" : "extractionContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"]
      }]
    },
    {
      "id" : "Questionnaire.item.item.extension:populationContext",
      "path" : "Questionnaire.item.item.extension",
      "sliceName" : "populationContext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"]
      }]
    },
    {
      "id" : "Questionnaire.item.item.extension:hiddenItem",
      "path" : "Questionnaire.item.item.extension",
      "sliceName" : "hiddenItem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"]
      }]
    }]
  }
}

```
