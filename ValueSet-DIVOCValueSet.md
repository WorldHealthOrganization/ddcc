# COVID-19 Vaccine Codes for DIVOC - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **COVID-19 Vaccine Codes for DIVOC**

## ValueSet: COVID-19 Vaccine Codes for DIVOC 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/DIVOCValueSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DIVOCValueSet |

 
COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "DIVOCValueSet",
  "url" : "http://smart.who.int/ddcc/ValueSet/DIVOCValueSet",
  "version" : "1.0.0",
  "name" : "DIVOCValueSet",
  "title" : "COVID-19 Vaccine Codes for DIVOC",
  "status" : "draft",
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/ddcc/CodeSystem/DIVOCCodeSystem"
    }]
  }
}

```
