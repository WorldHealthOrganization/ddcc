# DDCC Test - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Test**

## Resource Profile: DDCC Test 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCTest | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCTest |

 
A DDCC Test contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Device resouce, this is intended to map into an IPS Device resource. 

**Usages:**

* Use this Profile: [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md)
* Refer to this Profile: [DDCC Procedure](StructureDefinition-DDCCProcedure.md) and [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCTest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCTest.csv), [Excel](StructureDefinition-DDCCTest.xlsx), [Schematron](StructureDefinition-DDCCTest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCTest",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCTest",
  "version" : "1.0.0",
  "name" : "DDCCTest",
  "title" : "DDCC Test",
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
  "description" : "A DDCC Test contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Device resouce, this is intended to map into an IPS \nDevice resource.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCTypeofTestCOVID19"
      }
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Device.property:pathogen",
      "path" : "Device.property",
      "sliceName" : "pathogen",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Device.property:pathogen.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCDevicePropertyCodeSystem",
          "code" : "pathogen"
        }]
      }
    },
    {
      "id" : "Device.property:pathogen.valueQuantity",
      "path" : "Device.property.valueQuantity",
      "max" : "0"
    },
    {
      "id" : "Device.property:pathogen.valueCode",
      "path" : "Device.property.valueCode",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCAgentTargetedCOVID19"
      }
    },
    {
      "id" : "Device.property:brand",
      "path" : "Device.property",
      "sliceName" : "brand",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Device.property:brand.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCDevicePropertyCodeSystem",
          "code" : "brand"
        }]
      }
    },
    {
      "id" : "Device.property:brand.valueQuantity",
      "path" : "Device.property.valueQuantity",
      "max" : "0"
    },
    {
      "id" : "Device.property:brand.valueCode",
      "path" : "Device.property.valueCode",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
