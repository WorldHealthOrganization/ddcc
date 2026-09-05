# DIVOC lab test pathogen codes used in this IG - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DIVOC lab test pathogen codes used in this IG**

## CodeSystem: DIVOC lab test pathogen codes used in this IG (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/WHODDCCdivoclabtestpathogen | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:WHODDCCdivoclabtestpathogen |

 
All DIVOC lab test pathogen codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "WHODDCCdivoclabtestpathogen",
  "url" : "http://smart.who.int/ddcc/CodeSystem/WHODDCCdivoclabtestpathogen",
  "version" : "1.0.0",
  "name" : "WHODDCCdivoclabtestpathogen",
  "title" : "DIVOC lab test pathogen codes used in this IG",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "All DIVOC lab test pathogen codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "COVID-19",
    "display" : "Concerns the detection of SARS-CoV-2 infection."
  },
  {
    "code" : "covid-19",
    "display" : "Concerns the detection of SARS-CoV-2 infection."
  }]
}

```
