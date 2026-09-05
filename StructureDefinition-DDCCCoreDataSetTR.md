# DDCC Core Data Set Logical Model for Test Result - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Core Data Set Logical Model for Test Result**

## Logical Model: DDCC Core Data Set Logical Model for Test Result ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetTR | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCCoreDataSetTR |

 
Data elements for the DDCC Core Data Set for Test Result. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCCoreDataSetTR.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCCoreDataSetTR.csv), [Excel](StructureDefinition-DDCCCoreDataSetTR.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCCoreDataSetTR",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetTR",
  "version" : "1.0.0",
  "name" : "DDCCCoreDataSetTR",
  "title" : "DDCC Core Data Set Logical Model for Test Result",
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
  "description" : "Data elements for the DDCC Core Data Set for Test Result.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ddcc-observation",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCObservation",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-specimen",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSpecimen",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-test",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCTest",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-diagnostic-report",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCDiagnosticReport",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-procedure",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCProcedure",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-composition",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCComposition",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-patient",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient",
    "name" : "WHO Digital Documentation of COVID Certificates"
  }],
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
  "baseDefinition" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DDCCCoreDataSet",
      "path" : "DDCCCoreDataSet",
      "short" : "DDCC Core Data Set Logical Model for Test Result",
      "definition" : "Data elements for the DDCC Core Data Set for Test Result."
    },
    {
      "id" : "DDCCCoreDataSet.test",
      "path" : "DDCCCoreDataSet.test",
      "short" : "Test Event",
      "definition" : "A test event.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "isSummary" : true
    },
    {
      "id" : "DDCCCoreDataSet.test.pathogen",
      "path" : "DDCCCoreDataSet.test.pathogen",
      "short" : "Pathogen targeted",
      "definition" : "Name of the pathogen being tested for (such as SARS-CoV-2). ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCAgentTargetedCOVID19"
      },
      "mapping" : [{
        "identity" : "ddcc-test",
        "map" : "Device.property.valueCode"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.type",
      "path" : "DDCCCoreDataSet.test.type",
      "short" : "Type of test",
      "definition" : "Name of the type of test that was conducted e.g. NAAT.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCTypeofTestCOVID19"
      },
      "mapping" : [{
        "identity" : "ddcc-observation",
        "map" : "Observation.code"
      },
      {
        "identity" : "ddcc-test",
        "map" : "Device.type"
      },
      {
        "identity" : "ddcc-diagnostic-report",
        "map" : "DiagnosticReport.code"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.brand",
      "path" : "DDCCCoreDataSet.test.brand",
      "short" : "Test brand",
      "definition" : "The brand or trade name used to refer to the test conducted.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-test",
        "map" : "Device.property.valueCode"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.manufacturer",
      "path" : "DDCCCoreDataSet.test.manufacturer",
      "short" : "Test manufacturer",
      "definition" : "Name of the manufacturer of the test conducted.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-test",
        "map" : "Device.manufacturer"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.origin",
      "path" : "DDCCCoreDataSet.test.origin",
      "short" : "Specimen Sample Origin",
      "definition" : "The type of sample that was taken  e.g. Nasopharyngeal swab or Saliva specimen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCSampleOriginCOVID19"
      },
      "mapping" : [{
        "identity" : "ddcc-observation",
        "map" : "Observation.method"
      },
      {
        "identity" : "ddcc-specimen",
        "map" : "Specimen.code"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.date",
      "path" : "DDCCCoreDataSet.test.date",
      "short" : "Date and time of sample collection",
      "definition" : "Date and time when sample was collected.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-observation",
        "map" : "Observation.effective"
      },
      {
        "identity" : "ddcc-specimen",
        "map" : "Specimen.collection.collected"
      },
      {
        "identity" : "ddcc-diagnostic-report",
        "map" : "DiagnosticReport.effective"
      },
      {
        "identity" : "ddcc-procedure",
        "map" : "Procedure.performed"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.result",
      "path" : "DDCCCoreDataSet.test.result",
      "short" : "Test result",
      "definition" : "Detected or Not detected presence of SARS-CoV-2 infection.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/who-ddcc-test-result-covid-19"
      },
      "mapping" : [{
        "identity" : "ddcc-observation",
        "map" : "Observation.value"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.centre",
      "path" : "DDCCCoreDataSet.test.centre",
      "short" : "Test centre or facility name",
      "definition" : "A codable name or identifier of the facility responsible for conducting the test.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "mapping" : [{
        "identity" : "ddcc-procedure",
        "map" : "Procedure.location"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.test.country",
      "path" : "DDCCCoreDataSet.test.country",
      "short" : "Test centre country",
      "definition" : "The country in which the individual has been tested.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
      },
      "mapping" : [{
        "identity" : "ddcc-procedure",
        "map" : "Procedure.extension[https://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent]"
      }]
    }]
  }
}

```
