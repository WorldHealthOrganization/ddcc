# DDCC:VS Core Data Set Questionnaire - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC:VS Core Data Set Questionnaire**

## Questionnaire: DDCC:VS Core Data Set Questionnaire
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "DDCCVSCoreDataSetQuestionnaire",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaire"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://smart.who.int/ddcc/StructureMap/QRespToVSCoreDataSet"
  }],
  "url" : "http://smart.who.int/ddcc/DDCCVSCoreDataSetQuestionnaire",
  "version" : "1.0.0",
  "name" : "DDCCVSCoreDataSetQuestionnaire",
  "title" : "DDCC:VS Core Data Set Questionnaire",
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
  "description" : "DDCC Questionnaire for an Immunization event.",
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
    "required" : false
  },
  {
    "linkId" : "identifier",
    "text" : "Unique identifier",
    "type" : "string",
    "required" : false
  },
  {
    "linkId" : "sex",
    "text" : "Sex",
    "type" : "choice",
    "required" : false,
    "answerValueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
  },
  {
    "linkId" : "vaccine",
    "text" : "Vaccine or prophylaxis",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19"
  },
  {
    "linkId" : "brand",
    "text" : "Vaccine brand",
    "type" : "choice",
    "required" : true
  },
  {
    "linkId" : "manufacturer",
    "text" : "Vaccine manufacturer",
    "type" : "choice",
    "required" : false
  },
  {
    "linkId" : "ma_holder",
    "text" : "Vaccine market authorization holder",
    "type" : "choice",
    "required" : false
  },
  {
    "linkId" : "lot",
    "text" : "Vaccine batch number",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "date",
    "text" : "Date of vaccine",
    "type" : "date",
    "required" : true
  },
  {
    "linkId" : "vaccine_valid",
    "text" : "Vaccination valid from",
    "type" : "date",
    "required" : false
  },
  {
    "linkId" : "dose",
    "text" : "Dose number",
    "type" : "integer",
    "required" : true
  },
  {
    "linkId" : "total_doses",
    "text" : "Total doses",
    "type" : "integer",
    "required" : false
  },
  {
    "linkId" : "country",
    "text" : "Country of vaccination",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
  },
  {
    "linkId" : "centre",
    "text" : "Administering centre",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "hw",
    "text" : "Health worker identifier",
    "type" : "string",
    "required" : false
  },
  {
    "linkId" : "disease",
    "text" : "Disease or agent targeted",
    "type" : "choice",
    "required" : false,
    "answerValueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCAgentTargetedCOVID19"
  },
  {
    "linkId" : "due_date",
    "text" : "Due date of next dose",
    "type" : "date",
    "required" : false
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
