# DDCC:TR Core Data Set Questionnaire - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:TR Core Data Set Questionnaire**

## Questionnaire: DDCC:TR Core Data Set Questionnaire
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "DDCCTRCoreDataSetQuestionnaire",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaire"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://smart.who.int/ddcc/StructureMap/QRespToTRCoreDataSet"
  }],
  "url" : "http://smart.who.int/ddcc/DDCCTRCoreDataSetQuestionnaire",
  "version" : "1.0.0",
  "name" : "DDCCTRCoreDataSetQuestionnaire",
  "title" : "DDCC:TR Core Data Set Questionnaire",
  "status" : "draft",
  "experimental" : true,
  "date" : "2021-12-22",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "DDCC Questionnaire for a Test event.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "item" : [{
    "linkId" : "name",
    "text" : "Name",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "birthDate",
    "text" : "Date of birth",
    "type" : "date",
    "required" : true
  },
  {
    "linkId" : "identifier",
    "text" : "Unique identifier",
    "type" : "string",
    "required" : false
  },
  {
    "linkId" : "pathogen",
    "text" : "Pathogen targeted",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCAgentTargetedCOVID19"
  },
  {
    "linkId" : "type",
    "text" : "Type of test",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCTypeofTestCOVID19"
  },
  {
    "linkId" : "brand",
    "text" : "Test brand",
    "type" : "choice",
    "required" : false
  },
  {
    "linkId" : "manufacturer",
    "text" : "Test manufacturer",
    "type" : "choice",
    "required" : false
  },
  {
    "linkId" : "origin",
    "text" : "Specimen Sample Origin",
    "type" : "choice",
    "required" : false,
    "answerValueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCSampleOriginCOVID19"
  },
  {
    "linkId" : "date",
    "text" : "Date and time of sample collection",
    "type" : "date",
    "required" : true
  },
  {
    "linkId" : "result",
    "text" : "Test result",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://smart.who.int/ddcc/ValueSet/who-ddcc-test-result-covid-19"
  },
  {
    "linkId" : "vaccine_valid",
    "text" : "Vaccination valid from",
    "type" : "date",
    "required" : false
  },
  {
    "linkId" : "centre",
    "text" : "Test centre or facility name",
    "type" : "choice",
    "required" : false
  },
  {
    "linkId" : "country",
    "text" : "Test centre country",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
  },
  {
    "linkId" : "pha",
    "text" : "Certificate issuer",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "hcid",
    "text" : "Health certificate identifier",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "valid_from",
    "text" : "Certificate valid from",
    "type" : "date",
    "required" : false
  },
  {
    "linkId" : "valid_until",
    "text" : "Certificate valid until",
    "type" : "date",
    "required" : false
  }]
}

```
