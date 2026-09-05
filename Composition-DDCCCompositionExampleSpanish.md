# Digital Documentation of COVID-19 Certificate (DDCC) - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Digital Documentation of COVID-19 Certificate (DDCC)**

## Example Composition: Digital Documentation of COVID-19 Certificate (DDCC)

Profile: [DDCC:VS Composition](StructureDefinition-DDCCVSComposition.md)

**identifier**: `urn:EXAMPLE-who-:ddcc:composition:ids`/999123456123456123456 (use: official, )

**status**: Final

**type**: Immunization summary report

**date**: 2020-05-06

**author**: [Organization Hospital del Gobierno](Organization-DDCCOrganizationSpanish.md)

**title**: Digital Documentation of COVID-19 Certificate (DDCC)

### Attesters

| | | |
| :--- | :--- | :--- |
| - | **Mode** | **Party** |
| * | Official | [Organization Hospital del Gobierno](Organization-DDCCOrganizationSpanish.md) |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "DDCCCompositionExampleSpanish",
  "meta" : {
    "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"]
  },
  "identifier" : {
    "use" : "official",
    "system" : "urn:EXAMPLE-who-:ddcc:composition:ids",
    "value" : "999123456123456123456"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "82593-5"
    }]
  },
  "subject" : {
    "reference" : "Patient/DDCCPatientSpanish"
  },
  "date" : "2020-05-06",
  "author" : [{
    "reference" : "Organization/DDCCOrganizationSpanish"
  }],
  "title" : "Digital Documentation of COVID-19 Certificate (DDCC)",
  "attester" : [{
    "mode" : "official",
    "party" : {
      "reference" : "Organization/DDCCOrganizationSpanish"
    }
  }],
  "section" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "11369-6"
      }]
    },
    "focus" : {
      "reference" : "Immunization/DDCCImmunizationSpanish"
    },
    "entry" : [{
      "reference" : "Immunization/DDCCImmunizationSpanish"
    },
    {
      "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationSpanish"
    }]
  }]
}

```
