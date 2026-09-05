# DDCCImmunizationSpanish - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCImmunizationSpanish**

## Example Immunization: DDCCImmunizationSpanish

Profile: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)

**DDCC Event Brand for Immunization**: mms: XM4YL8 (XM4YL8)

**DDCC Country Of Event for Immunization**: ESP

**DDCC Vaccine Market Authorization for Immunization**: [DDCC Codes for examples: TEST](CodeSystem-DDCCExampleTestCodeSystem.md#DDCCExampleTestCodeSystem-TEST) (Test)

**DDCC Vaccine Valid From**: 2021-05-30

**status**: Completed

**vaccineCode**: XM9QW8

**patient**: [Aulo Agerio(official) (no stated gender), DoB: 2003-03-03](Patient-DDCCPatientSpanish.md)

**occurrence**: 2021-05-06

**location**: Sitio de vacunación

**lotNumber**: 123

**expirationDate**: 2021-06-30

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Hospital del Gobierno](Organization-DDCCOrganizationSpanish.md) |

### ProtocolApplieds

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Authority** | **TargetDisease** | **DoseNumber[x]** | **SeriesDoses[x]** |
| * | [Organization Hospital del Gobierno](Organization-DDCCOrganizationSpanish.md) | RA01 | 1 | 2 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "DDCCImmunizationSpanish",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
  },
  "extension" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand",
    "valueCoding" : {
      "system" : "http://id.who.int/icd11/mms",
      "code" : "XM4YL8"
    }
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent",
    "valueCode" : "ESP"
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization",
    "valueCoding" : {
      "system" : "http://smart.who.int/ddcc/CodeSystem/DDCCExampleTestCodeSystem",
      "code" : "TEST"
    }
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom",
    "valueDate" : "2021-05-30"
  }],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://id.who.int/icd11/mms",
      "code" : "XM9QW8"
    }]
  },
  "patient" : {
    "reference" : "Patient/DDCCPatientSpanish"
  },
  "occurrenceDateTime" : "2021-05-06",
  "location" : {
    "display" : "Sitio de vacunación"
  },
  "lotNumber" : "123",
  "expirationDate" : "2021-06-30",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/DDCCOrganizationSpanish"
    }
  }],
  "protocolApplied" : [{
    "authority" : {
      "reference" : "Organization/DDCCOrganizationSpanish"
    },
    "targetDisease" : [{
      "coding" : [{
        "system" : "http://id.who.int/icd11/mms",
        "code" : "RA01"
      }]
    }],
    "doseNumberPositiveInt" : 1,
    "seriesDosesPositiveInt" : 2
  }]
}

```
