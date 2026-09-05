# DDCCImmunizationRecommendationEnglish - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCCImmunizationRecommendationEnglish**

## Example ImmunizationRecommendation: DDCCImmunizationRecommendationEnglish

Profile: [DDCC Immunization Recommendation](StructureDefinition-DDCCImmunizationRecommendation.md)

**patient**: [Aulus Agerius(official) (no stated gender), DoB: 2003-03-03](Patient-DDCCPatientEnglish.md)

**date**: 2021-05-06

> **recommendation****vaccineCode**: XM0GQ8**forecastStatus**: Due

### DateCriterions

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value** |
| * | Date vaccine due | 2021-05-20 |

**supportingImmunization**: [Immunization: extension = XM3DT5 (mms#XM3DT5),CHE,Test (DDCC Codes for examples#TEST),2021-05-30; status = completed; vaccineCode = XM0GQ8; occurrence[x] = 2021-05-06; lotNumber = 123; expirationDate = 2021-06-30](Immunization-DDCCImmunizationEnglish.md)



## Resource Content

```json
{
  "resourceType" : "ImmunizationRecommendation",
  "id" : "DDCCImmunizationRecommendationEnglish",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"]
  },
  "patient" : {
    "reference" : "Patient/DDCCPatientEnglish"
  },
  "date" : "2021-05-06",
  "recommendation" : [{
    "vaccineCode" : [{
      "coding" : [{
        "system" : "http://id.who.int/icd11/mms",
        "code" : "XM0GQ8"
      }]
    }],
    "forecastStatus" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status",
        "code" : "due"
      }]
    },
    "dateCriterion" : [{
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "30980-7"
        }]
      },
      "value" : "2021-05-20"
    }],
    "supportingImmunization" : [{
      "reference" : "Immunization/DDCCImmunizationEnglish"
    }]
  }]
}

```
