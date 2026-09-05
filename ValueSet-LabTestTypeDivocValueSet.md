# Lab Test - Type - DIVOC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Type - DIVOC**

## ValueSet: Lab Test - Type - DIVOC (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/LabTestTypeDivocValueSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:LabTestTypeDivocValueSet |

 
This is a one-time snapshot of the allowed values for lab test types, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at [https://divoc.digit.org/platform/divocs-verifiable-certificate-features](https://divoc.digit.org/platform/divocs-verifiable-certificate-features) 

 **References** 

* [Certificate - DIVOC Verifiable Credential Logical Model](StructureDefinition-CertDIVOC.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "LabTestTypeDivocValueSet",
  "url" : "http://smart.who.int/ddcc/ValueSet/LabTestTypeDivocValueSet",
  "version" : "1.0.0",
  "name" : "LabTestTypeDivocValueSet",
  "title" : "Lab Test - Type - DIVOC",
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
  "description" : "This is a one-time snapshot of the allowed values for lab test types, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/ddcc/CodeSystem/LabTestTypeDivocValueSet",
      "concept" : [{
        "code" : "RT-PCR",
        "display" : "RT-PCR"
      },
      {
        "code" : "Rapid Antigen Test (RAT)",
        "display" : "Rapid Antigen Test (RAT)"
      },
      {
        "code" : "rt-pcr",
        "display" : "RT-PCR"
      },
      {
        "code" : "rapid antigen test (rat)",
        "display" : "Rapid Antigen Test (RAT)"
      }]
    }]
  }
}

```
