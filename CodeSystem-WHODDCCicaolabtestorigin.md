# ICAO lab test origin codes used in this IG - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICAO lab test origin codes used in this IG**

## CodeSystem: ICAO lab test origin codes used in this IG (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/WHODDCCicaolabtestorigin | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:WHODDCCicaolabtestorigin |

 
All ICAO lab test origin codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "WHODDCCicaolabtestorigin",
  "url" : "http://smart.who.int/ddcc/CodeSystem/WHODDCCicaolabtestorigin",
  "version" : "1.0.0",
  "name" : "WHODDCCicaolabtestorigin",
  "title" : "ICAO lab test origin codes used in this IG",
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
  "description" : "All ICAO lab test origin codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "nasopharyngeal",
    "display" : "Sampling method: nasopharyngeal"
  },
  {
    "code" : "oropharyngeal",
    "display" : "Sampling method: oropharyngeal"
  },
  {
    "code" : "saliva",
    "display" : "Sampling method: saliva"
  },
  {
    "code" : "blood",
    "display" : "Sampling method: blood"
  },
  {
    "code" : "other",
    "display" : "Sampling method: other"
  }]
}

```
