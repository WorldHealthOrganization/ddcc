# OperationDefinition for generating a health folder (DDCCFolder). - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OperationDefinition for generating a health folder (DDCCFolder).**

## OperationDefinition: OperationDefinition for generating a health folder (DDCCFolder). (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/OperationDefinition/DDCCQuestionnaireResponsegenerateHealthFolder | *Version*:1.0.0 |
| Draft as of 2022-01-24 | *Computable Name*:QuestionnaireResponse_Generate_Health_Folder |

 
Generate a DDCC Folder from an IPS Bundle. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "DDCCQuestionnaireResponsegenerateHealthFolder",
  "url" : "http://smart.who.int/ddcc/OperationDefinition/DDCCQuestionnaireResponsegenerateHealthFolder",
  "version" : "1.0.0",
  "name" : "QuestionnaireResponse_Generate_Health_Folder",
  "title" : "OperationDefinition for generating a health folder (DDCCFolder).",
  "status" : "draft",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2022-01-24",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Generate a DDCC Folder from an IPS Bundle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "generateHealthFolder",
  "resource" : ["Bundle"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "bundle",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "The bundle resource used to generate the DDCC Folder.",
    "type" : "Bundle"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "The DDCC Folder that was created.",
    "type" : "List"
  }]
}

```
