# DDCC HCID Registration Questionnaire - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC HCID Registration Questionnaire**

## Questionnaire: DDCC HCID Registration Questionnaire
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "DDCCHCIDRegistrationQuestionnaire",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireSDC"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "name",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext",
        "code" : "patient"
      }
    },
    {
      "url" : "type",
      "valueCode" : "Patient"
    },
    {
      "url" : "description",
      "valueString" : "Patient used in form pre-population"
    }],
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  }],
  "url" : "http://smart.who.int/ddcc/Questionnaire/DDCCHCIDRegistrationQuestionnaire",
  "version" : "1.0.0",
  "name" : "DDCCHCIDRegistrationQuestionnaire",
  "title" : "DDCC HCID Registration Questionnaire",
  "status" : "draft",
  "experimental" : true,
  "date" : "2021-06-03",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "DDCC HCID Registration Questionnaire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext",
      "valueExpression" : {
        "description" : "Patient Name",
        "language" : "text/fhirpath",
        "expression" : "%patient.name"
      }
    }],
    "linkId" : "name",
    "text" : "Patient Name",
    "type" : "string"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext",
      "valueExpression" : {
        "description" : "Patient Date of Birth",
        "language" : "text/fhirpath",
        "expression" : "%patient.birthDate"
      }
    }],
    "linkId" : "birthDate",
    "text" : "Patient Date of Birth",
    "type" : "date"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
      "valueExpression" : {
        "description" : "Health Certificate Identifier",
        "language" : "text/fhirpath",
        "expression" : "http://hl7.org/fhir/StructureDefinition/List#List.identifier.system.value"
      }
    }],
    "linkId" : "hcid",
    "text" : "Health Certificate ID",
    "type" : "string",
    "required" : true,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext",
        "valueExpression" : {
          "description" : "Health Certificate Identifier",
          "language" : "text/fhirpath",
          "expression" : "%patient.id"
        }
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
        "valueExpression" : {
          "description" : "Health Certificate Identifier",
          "language" : "text/fhirpath",
          "expression" : "http://hl7.org/fhir/StructureDefinition/List#List.subject.reference"
        }
      }],
      "linkId" : "patientid",
      "text" : "Patient ID (internal)",
      "type" : "string",
      "required" : true
    }]
  }]
}

```
