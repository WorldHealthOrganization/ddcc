# OperationDefinition for revoking a health certificate (DDCC). - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OperationDefinition for revoking a health certificate (DDCC).**

## OperationDefinition: OperationDefinition for revoking a health certificate (DDCC). (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/OperationDefinition/DDCCQuestionnaireResponserevokeHealthCertificate | *Version*:1.0.0 |
| Draft as of 2021-12-21 | *Computable Name*:QuestionnaireResponse_Revoke_Health_Certificate |

 
Revoke a DDCC Document. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "DDCCQuestionnaireResponserevokeHealthCertificate",
  "url" : "http://smart.who.int/ddcc/OperationDefinition/DDCCQuestionnaireResponserevokeHealthCertificate",
  "version" : "1.0.0",
  "name" : "QuestionnaireResponse_Revoke_Health_Certificate",
  "title" : "OperationDefinition for revoking a health certificate (DDCC).",
  "status" : "draft",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2021-12-21",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Revoke a DDCC Document.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "revokeHealthCertificate",
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [{
    "name" : "id",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "The DDCC id of the DDCC Document.",
    "type" : "id"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "A boolean to determine if the revocation was successful or not.",
    "type" : "boolean"
  }]
}

```
