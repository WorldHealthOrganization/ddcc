# DDCCImmunizationFrench - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCImmunizationFrench**

## Example Immunization: DDCCImmunizationFrench

Profile: [DDCC Immunization](StructureDefinition-DDCCImmunization.md)

**DDCC Event Brand for Immunization**: mms: XM8NQ0 (XM8NQ0)

**DDCC Country Of Event for Immunization**: FRA

**DDCC Vaccine Market Authorization for Immunization**: [DDCC Codes for examples: TEST](CodeSystem-DDCCExampleTestCodeSystem.md#DDCCExampleTestCodeSystem-TEST) (Test)

**DDCC Vaccine Valid From**: 2021-05-30

**status**: Completed

**vaccineCode**: XM0GQ8

**patient**: [Aulus Agerius(official) (no stated gender), DoB: 2003-03-03](Patient-DDCCPatientFrench.md)

**occurrence**: 2021-05-06

**location**: Site de vaccination

**lotNumber**: 123

**expirationDate**: 2021-06-30

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Hôpital du gouvernement](Organization-DDCCOrganizationFrench.md) |

### ProtocolApplieds

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Authority** | **TargetDisease** | **DoseNumber[x]** | **SeriesDoses[x]** |
| * | [Organization Hôpital du gouvernement](Organization-DDCCOrganizationFrench.md) | RA01 | 1 | 2 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "DDCCImmunizationFrench",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"]
  },
  "extension" : [{
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand",
    "valueCoding" : {
      "system" : "http://id.who.int/icd11/mms",
      "code" : "XM8NQ0"
    }
  },
  {
    "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent",
    "valueCode" : "FRA"
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
    "reference" : "Patient/DDCCPatientFrench"
  },
  "occurrenceDateTime" : "2021-05-06",
  "location" : {
    "display" : "Site de vaccination"
  },
  "lotNumber" : "123",
  "expirationDate" : "2021-06-30",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/DDCCOrganizationFrench"
    }
  }],
  "protocolApplied" : [{
    "authority" : {
      "reference" : "Organization/DDCCOrganizationFrench"
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
