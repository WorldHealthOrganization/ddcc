# WHO DDCC Registry Service - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO DDCC Registry Service**

## CapabilityStatement: WHO DDCC Registry Service (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CapabilityStatement/WHO.DDCC.RegistryService | *Version*:1.0.0 |
| Draft as of 2021-05-06 | *Computable Name*:WHO_DDCC_RegistryService |

 
CapabilityStatement for WHO DDCC Registry Service actor. 

 [Raw OpenAPI-Swagger Definition file](WHO.DDCC.RegistryService.openapi.json) | [Download](WHO.DDCC.RegistryService.openapi.json) 

Capability Statement for a DDCC RegistryService



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "WHO.DDCC.RegistryService",
  "url" : "http://smart.who.int/ddcc/CapabilityStatement/WHO.DDCC.RegistryService",
  "version" : "1.0.0",
  "name" : "WHO_DDCC_RegistryService",
  "title" : "WHO DDCC Registry Service",
  "status" : "draft",
  "experimental" : true,
  "date" : "2021-05-06",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "CapabilityStatement for WHO DDCC Registry Service actor.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.3.0",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "DDCC Registry Service Server Actor",
    "resource" : [{
      "type" : "Composition",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCComposition"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create",
        "documentation" : "DDCC Registry Service Actor for accepting a Registr Health Certificate transaction"
      }],
      "operation" : [{
        "name" : "$document",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Composition-document",
        "documentation" : "DDCC Registry Service Actor for responding to a Retrieve Health Certificate or Retrieve Health Folder transaction"
      }]
    },
    {
      "type" : "Patient",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    },
    {
      "type" : "Organization",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    },
    {
      "type" : "Provenance",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCProvenance"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    },
    {
      "type" : "Practitioner",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPractitioner"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    },
    {
      "type" : "PractitionerRole",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPractitionerRole"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    },
    {
      "type" : "Immunization",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    },
    {
      "type" : "List",
      "supportedProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCFolder"],
      "documentation" : ".",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "vread"
      }]
    }],
    "interaction" : [{
      "code" : "batch",
      "documentation" : "DDCC Registry Service Actor for accepting a Registry Health Certificate"
    }]
  }]
}

```
