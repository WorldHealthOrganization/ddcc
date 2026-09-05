# OperationDefinition for generating a health certificate (DDCC) that is signed. - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OperationDefinition for generating a health certificate (DDCC) that is signed.**

## OperationDefinition: OperationDefinition for generating a health certificate (DDCC) that is signed. (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/OperationDefinition/DDCCQuestionnaireResponsegenerateHealthCertificate | *Version*:1.0.0 |
| Draft as of 2021-06-03 | *Computable Name*:QuestionnaireResponseGenerateHealthCertificate |

 
Generate one or more signed DDCC Documents based on a [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.md) 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "DDCCQuestionnaireResponsegenerateHealthCertificate",
  "url" : "http://smart.who.int/ddcc/OperationDefinition/DDCCQuestionnaireResponsegenerateHealthCertificate",
  "version" : "1.0.0",
  "name" : "QuestionnaireResponseGenerateHealthCertificate",
  "title" : "OperationDefinition for generating a health certificate (DDCC) that is signed.",
  "status" : "draft",
  "kind" : "operation",
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
  "description" : "Generate one or more signed DDCC Documents based on a [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.html)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "generateHealthCertificate",
  "resource" : ["QuestionnaireResponse", "Bundle"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "response",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "The questionnaire response or bundle resource used to generate the DDCC Document.",
    "type" : "Resource"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "The DDCC, including any QR codes, that was created under the [Generate Health Certificate](transactions.html#submit-health-event-expected-actions) expected actions",
    "type" : "Bundle"
  }]
}

```
