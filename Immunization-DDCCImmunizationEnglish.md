# DDCCImmunizationEnglish - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCImmunizationEnglish**

## Example Immunization: DDCCImmunizationEnglish

Profile: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)

**DDCC Event Brand for Immunization**: mms: XM3DT5 (XM3DT5)

**DDCC Country Of Event for Immunization**: CHE

**DDCC Vaccine Market Authorization for Immunization**: [DDCC Codes for examples: TEST](CodeSystem-DDCCExampleTestCodeSystem.md#DDCCExampleTestCodeSystem-TEST) (Test)

**DDCC Vaccine Valid From**: 2021-05-30

**status**: Completed

**vaccineCode**: XM0GQ8

**patient**: [Aulus Agerius(official) (no stated gender), DoB: 2003-03-03](Patient-DDCCPatientEnglish.md)

**occurrence**: 2021-05-06

**location**: Vaccination Site

**lotNumber**: 123

**expirationDate**: 2021-06-30

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Government Hospital](Organization-DDCCOrganizationEnglish.md) |

### ProtocolApplieds

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Authority** | **TargetDisease** | **DoseNumber[x]** | **SeriesDoses[x]** |
| * | [Organization Government Hospital](Organization-DDCCOrganizationEnglish.md) | RA01 | 1 | 2 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "DDCCImmunizationEnglish",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
  },
  "extension" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand",
    "valueCoding" : {
      "system" : "http://id.who.int/icd11/mms",
      "code" : "XM3DT5"
    }
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent",
    "valueCode" : "CHE"
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
      "code" : "XM0GQ8"
    }]
  },
  "patient" : {
    "reference" : "Patient/DDCCPatientEnglish"
  },
  "occurrenceDateTime" : "2021-05-06",
  "location" : {
    "display" : "Vaccination Site"
  },
  "lotNumber" : "123",
  "expirationDate" : "2021-06-30",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/DDCCOrganizationEnglish"
    }
  }],
  "protocolApplied" : [{
    "authority" : {
      "reference" : "Organization/DDCCOrganizationEnglish"
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
