# DDCCImmunizationChinese - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCImmunizationChinese**

## Example Immunization: DDCCImmunizationChinese

Profile: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)

**DDCC Event Brand for Immunization**: mms: XM6SZ8 (XM6SZ8)

**DDCC Country Of Event for Immunization**: CHN

**DDCC Vaccine Market Authorization for Immunization**: [DDCC Codes for examples: TEST](CodeSystem-DDCCExampleTestCodeSystem.md#DDCCExampleTestCodeSystem-TEST) (Test)

**DDCC Vaccine Valid From**: 2021-05-30

**status**: Completed

**vaccineCode**: XM5JC5

**patient**: [奥卢斯·阿杰里乌斯(official) (no stated gender), DoB: 2003-03-03](Patient-DDCCPatientChinese.md)

**occurrence**: 2021-05-06

**location**: 疫苗接种现场

**lotNumber**: 123

**expirationDate**: 2021-06-30

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization 政府医院](Organization-DDCCOrganizationChinese.md) |

### ProtocolApplieds

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Authority** | **TargetDisease** | **DoseNumber[x]** | **SeriesDoses[x]** |
| * | [Organization 政府医院](Organization-DDCCOrganizationChinese.md) | RA01 | 1 | 2 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "DDCCImmunizationChinese",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
  },
  "extension" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand",
    "valueCoding" : {
      "system" : "http://id.who.int/icd11/mms",
      "code" : "XM6SZ8"
    }
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent",
    "valueCode" : "CHN"
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
      "code" : "XM5JC5"
    }]
  },
  "patient" : {
    "reference" : "Patient/DDCCPatientChinese"
  },
  "occurrenceDateTime" : "2021-05-06",
  "location" : {
    "display" : "疫苗接种现场"
  },
  "lotNumber" : "123",
  "expirationDate" : "2021-06-30",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/DDCCOrganizationChinese"
    }
  }],
  "protocolApplied" : [{
    "authority" : {
      "reference" : "Organization/DDCCOrganizationChinese"
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
