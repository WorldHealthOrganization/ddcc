# DDCCOrganizationXCL - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCOrganizationXCL**

## Example Organization: DDCCOrganizationXCL

Profile: [DDCC Organization](StructureDefinition-DDCCOrganization.md)

**identifier**: [ISO 3166 Part 1 Country Codes](http://terminology.hl7.org/6.5.0/NamingSystem-v3-iso3166-1.html)/CL

**name**: Chile (Demonstration)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "DDCCOrganizationXCL",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
  },
  "identifier" : [{
    "system" : "urn:iso:std:iso:3166",
    "value" : "CL"
  }],
  "name" : "Chile (Demonstration)"
}

```
