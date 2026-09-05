# Lab Test - Sample Origin - ICAO - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test - Sample Origin - ICAO**

## ValueSet: Lab Test - Sample Origin - ICAO (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/lab-test-sample-origin-icao | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:LabTestSampleOriginIcaoValueSet |

 
This is a one-time snapshot of the allowed values for lab test sample origins in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation. 

 **References** 

* [Certificate - ICAO Visible Digital Seal Logical Model](StructureDefinition-CertICAO.md)

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
  "id" : "lab-test-sample-origin-icao",
  "url" : "http://smart.who.int/ddcc/ValueSet/lab-test-sample-origin-icao",
  "version" : "1.0.0",
  "name" : "LabTestSampleOriginIcaoValueSet",
  "title" : "Lab Test - Sample Origin - ICAO",
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
  "description" : "This is a one-time snapshot of the allowed values for lab test sample origins in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/ddcc/CodeSystem/LabTestSampleOriginIcaoValueSet",
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
    }]
  }
}

```
