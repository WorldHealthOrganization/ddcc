# DDCCImmunizationArabic - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCImmunizationArabic**

## Example Immunization: DDCCImmunizationArabic

Profile: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)

**DDCC Event Brand for Immunization**: mms: XM1G90 (XM1G90)

**DDCC Country Of Event for Immunization**: SAU

**DDCC Vaccine Market Authorization for Immunization**: [DDCC Codes for examples: TEST](CodeSystem-DDCCExampleTestCodeSystem.md#DDCCExampleTestCodeSystem-TEST) (Test)

**DDCC Vaccine Valid From**: 2021-05-30

**status**: Completed

**vaccineCode**: XM0CX4

**patient**: [أولوس أجيريوس(official) (no stated gender), DoB: 2003-03-03](Patient-DDCCPatientArabic.md)

**occurrence**: 2021-05-06

**location**: موقع التطعيم

**lotNumber**: 123

**expirationDate**: 2021-06-30

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization مستشفى حكومي](Organization-DDCCOrganizationArabic.md) |

### ProtocolApplieds

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Authority** | **TargetDisease** | **DoseNumber[x]** | **SeriesDoses[x]** |
| * | [Organization مستشفى حكومي](Organization-DDCCOrganizationArabic.md) | RA01 | 1 | 2 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "DDCCImmunizationArabic",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
  },
  "extension" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand",
    "valueCoding" : {
      "system" : "http://id.who.int/icd11/mms",
      "code" : "XM1G90"
    }
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent",
    "valueCode" : "SAU"
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
      "code" : "XM0CX4"
    }]
  },
  "patient" : {
    "reference" : "Patient/DDCCPatientArabic"
  },
  "occurrenceDateTime" : "2021-05-06",
  "location" : {
    "display" : "موقع التطعيم"
  },
  "lotNumber" : "123",
  "expirationDate" : "2021-06-30",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/DDCCOrganizationArabic"
    }
  }],
  "protocolApplied" : [{
    "authority" : {
      "reference" : "Organization/DDCCOrganizationArabic"
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
