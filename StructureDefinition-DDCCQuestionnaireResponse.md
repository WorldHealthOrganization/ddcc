# DDCC Questionnaire Response - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Questionnaire Response**

## Resource Profile: DDCC Questionnaire Response ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCQuestionnaireResponse |

 
Describes the logical structure for a questionnaire response associacted to a [DDCC Questionaire](StructureDefinition-DDCCQuestionnaire.md). 

**Usages:**

* Use this Profile: [DDCC Generate Health Certificate Parameters](StructureDefinition-DDCCGenerateHealthCertificateParameters.md), [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.md) and [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md)
* Examples for this Profile: [QuestionnaireResponse/DDCCVSQuestionnaireResponseArabic](QuestionnaireResponse-DDCCVSQuestionnaireResponseArabic.md), [QuestionnaireResponse/DDCCVSQuestionnaireResponseChinese](QuestionnaireResponse-DDCCVSQuestionnaireResponseChinese.md), [QuestionnaireResponse/DDCCVSQuestionnaireResponseExample](QuestionnaireResponse-DDCCVSQuestionnaireResponseExample.md), [QuestionnaireResponse/DDCCVSQuestionnaireResponseFrench](QuestionnaireResponse-DDCCVSQuestionnaireResponseFrench.md)... Show 2 more, [QuestionnaireResponse/DDCCVSQuestionnaireResponseRussian](QuestionnaireResponse-DDCCVSQuestionnaireResponseRussian.md) and [QuestionnaireResponse/DDCCVSQuestionnaireResponseSpanish](QuestionnaireResponse-DDCCVSQuestionnaireResponseSpanish.md)
* CapabilityStatements using this Profile: [WHO DDCC Generator](CapabilityStatement-WHO.DDCC.Generator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCQuestionnaireResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCQuestionnaireResponse.csv), [Excel](StructureDefinition-DDCCQuestionnaireResponse.xlsx), [Schematron](StructureDefinition-DDCCQuestionnaireResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCQuestionnaireResponse",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse",
  "version" : "1.0.0",
  "name" : "DDCCQuestionnaireResponse",
  "title" : "DDCC Questionnaire Response",
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
  "description" : "Describes the logical structure for a questionnaire response associacted to a [DDCC Questionaire](StructureDefinition-DDCCQuestionnaire.html).",
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
  }],
  "kind" : "resource",
  "abstract" : true,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    }]
  }
}

```
