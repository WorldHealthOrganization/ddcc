# DDCC Questionniare - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Questionniare**

## Resource Profile: DDCC Questionniare ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaire | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCQuestionnaire |

 
Describes the logical structure for a questionnaire associacted to a DDCC which includes a Structure Map to generate the relevant DDCC from a given [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.md) which responds to the DDCC Questionnaire. 

**Usages:**

* Examples for this Profile: [DDCCTRCoreDataSetQuestionnaire](Questionnaire-DDCCTRCoreDataSetQuestionnaire.md) and [DDCCVSCoreDataSetQuestionnaire](Questionnaire-DDCCVSCoreDataSetQuestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCQuestionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCQuestionnaire.csv), [Excel](StructureDefinition-DDCCQuestionnaire.xlsx), [Schematron](StructureDefinition-DDCCQuestionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCQuestionnaire",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaire",
  "version" : "1.0.0",
  "name" : "DDCCQuestionnaire",
  "title" : "DDCC Questionniare",
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
  "description" : "Describes the logical structure for a questionnaire associacted to a DDCC which includes a Structure Map to generate the relevant DDCC from a given [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.html) which responds to the DDCC Questionnaire.",
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
  "abstract" : true,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.extension",
      "path" : "Questionnaire.extension",
      "min" : 1
    },
    {
      "id" : "Questionnaire.extension:targetStructureMap",
      "path" : "Questionnaire.extension",
      "sliceName" : "targetStructureMap",
      "min" : 1
    }]
  }
}

```
