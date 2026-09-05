# DDCC Immunization - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Immunization**

## Resource Profile: DDCC Immunization 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCImmunization |

 
A DDCC Immunization contains the content corresponding to a row in the Vaccination Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Immunization resouce, this is intended to map into an IPS Immunization resource. 

**Usages:**

* Use this Profile: [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md) and [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md)
* Refer to this Profile: [DDCC Immunization Recommendation](StructureDefinition-DDCCImmunizationRecommendation.md) and [DDCC:VS Composition](StructureDefinition-DDCCVSComposition.md)
* Examples for this Profile: [Immunization/DDCCImmunizationArabic](Immunization-DDCCImmunizationArabic.md), [Immunization/DDCCImmunizationChinese](Immunization-DDCCImmunizationChinese.md), [Immunization/DDCCImmunizationEnglish](Immunization-DDCCImmunizationEnglish.md), [Immunization/DDCCImmunizationFrench](Immunization-DDCCImmunizationFrench.md)... Show 2 more, [Immunization/DDCCImmunizationRussian](Immunization-DDCCImmunizationRussian.md) and [Immunization/DDCCImmunizationSpanish](Immunization-DDCCImmunizationSpanish.md)
* CapabilityStatements using this Profile: [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCImmunization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCImmunization.csv), [Excel](StructureDefinition-DDCCImmunization.xlsx), [Schematron](StructureDefinition-DDCCImmunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCImmunization",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
  "version" : "1.0.0",
  "name" : "DDCCImmunization",
  "title" : "DDCC Immunization",
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
  "description" : "A DDCC Immunization contains the content corresponding to a row in the Vaccination \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Immunization resouce, this is intended to map into an IPS \nImmunization resource.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.extension",
      "path" : "Immunization.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Immunization.extension:vaccineBrand",
      "path" : "Immunization.extension",
      "sliceName" : "vaccineBrand",
      "label" : "Vaccine brand",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.extension:vaccineMarketAuthorization",
      "path" : "Immunization.extension",
      "sliceName" : "vaccineMarketAuthorization",
      "label" : "Vaccine market authorization holder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.extension:country",
      "path" : "Immunization.extension",
      "sliceName" : "country",
      "label" : "Country of vaccination",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.extension:validFrom",
      "path" : "Immunization.extension",
      "sliceName" : "validFrom",
      "label" : "Vaccination valid from",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "label" : "Vaccine or prophylaxis",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19"
      }
    },
    {
      "id" : "Immunization.vaccineCode.coding",
      "path" : "Immunization.vaccineCode.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Immunization.vaccineCode.coding.system",
      "path" : "Immunization.vaccineCode.coding.system",
      "min" : 1
    },
    {
      "id" : "Immunization.vaccineCode.coding.code",
      "path" : "Immunization.vaccineCode.coding.code",
      "min" : 1
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"]
      }]
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "label" : "Date of vaccination",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Immunization.location",
      "path" : "Immunization.location",
      "label" : "Administering centre",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Immunization.location.display",
      "path" : "Immunization.location.display",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Immunization.manufacturer",
      "path" : "Immunization.manufacturer",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "label" : "Vaccine batch number",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer.actor",
      "path" : "Immunization.performer.actor",
      "label" : "Health worker identifier",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCPractitioner",
        "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied",
      "path" : "Immunization.protocolApplied",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "authority"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied:protocolAppliedAuthority",
      "path" : "Immunization.protocolApplied",
      "sliceName" : "protocolAppliedAuthority",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied:protocolAppliedAuthority.authority",
      "path" : "Immunization.protocolApplied.authority",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied:protocolAppliedAuthority.targetDisease",
      "path" : "Immunization.protocolApplied.targetDisease",
      "label" : "Disease or agent targeted",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCDiseaseTargetedCOVID19"
      }
    },
    {
      "id" : "Immunization.protocolApplied:protocolAppliedAuthority.doseNumber[x]",
      "path" : "Immunization.protocolApplied.doseNumber[x]",
      "label" : "Dose number",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied:protocolAppliedAuthority.seriesDoses[x]",
      "path" : "Immunization.protocolApplied.seriesDoses[x]",
      "label" : "Total doses",
      "type" : [{
        "code" : "positiveInt"
      }]
    }]
  }
}

```
