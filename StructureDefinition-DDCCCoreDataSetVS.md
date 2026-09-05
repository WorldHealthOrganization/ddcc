# DDCC Core Data Set Logical Model for Vaccination Status - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Core Data Set Logical Model for Vaccination Status**

## Logical Model: DDCC Core Data Set Logical Model for Vaccination Status ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCCoreDataSetVS |

 
Data elements for the DDCC Core Data Set for Vaccination Status. 

**Usages:**

* Derived from this Logical Model: [DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care](StructureDefinition-DDCCCoreDataSetVSCoC.md) and [DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination](StructureDefinition-DDCCCoreDataSetVSPoV.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-DDCCCoreDataSetVS.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DDCCCoreDataSetVS.csv), [Excel](StructureDefinition-DDCCCoreDataSetVS.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DDCCCoreDataSetVS",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS",
  "version" : "1.0.0",
  "name" : "DDCCCoreDataSetVS",
  "title" : "DDCC Core Data Set Logical Model for Vaccination Status",
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
  "description" : "Data elements for the DDCC Core Data Set for Vaccination Status.\n",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ddcc-immunization",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization",
    "name" : "WHO Digital Documentation of COVID Certificates"
  },
  {
    "identity" : "ddcc-immunization-recommendation",
    "uri" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation",
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
      "short" : "DDCC Core Data Set Logical Model for Vaccination Status",
      "definition" : "Data elements for the DDCC Core Data Set for Vaccination Status.\n"
    },
    {
      "id" : "DDCCCoreDataSet.certificate.issuer",
      "path" : "DDCCCoreDataSet.certificate.issuer",
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.protocolApplied.authority.identifier"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination",
      "path" : "DDCCCoreDataSet.vaccination",
      "short" : "Vaccination Event",
      "definition" : "A vaccination event.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "who-ddcc-data-1",
        "severity" : "error",
        "human" : "Manufacturer or Market Authorization Holder SHALL be present",
        "expression" : "manufacturer.exists() or maholder.exists()",
        "source" : "http://smart.who.int/ddcc/StructureDefinition/DDCCCoreDataSetVS"
      }],
      "isSummary" : true
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.vaccine",
      "path" : "DDCCCoreDataSet.vaccination.vaccine",
      "short" : "Vaccine or prophylaxis",
      "definition" : "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19"
      },
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.vaccineCode"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.brand",
      "path" : "DDCCCoreDataSet.vaccination.brand",
      "short" : "Vaccine brand",
      "definition" : "The brand or trade name used to refer to the vaccine received.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.extension[https://smart.who.int/ddcc/StructureDefinition/DDCCEventBrand]"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.manufacturer",
      "path" : "DDCCCoreDataSet.vaccination.manufacturer",
      "short" : "Vaccine manufacturer",
      "definition" : "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.manufacturer"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.maholder",
      "path" : "DDCCCoreDataSet.vaccination.maholder",
      "short" : "Vaccine market authorization holder",
      "definition" : "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.extension[https://smart.who.int/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization]"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.lot",
      "path" : "DDCCCoreDataSet.vaccination.lot",
      "short" : "Vaccine lot number",
      "definition" : "Lot number or batch number of vaccination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.lotNumber"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.date",
      "path" : "DDCCCoreDataSet.vaccination.date",
      "short" : "Date of vaccination",
      "definition" : "Date in which the vaccine was provided.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.occurrence"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.validFrom",
      "path" : "DDCCCoreDataSet.vaccination.validFrom",
      "short" : "Vaccination valid from",
      "definition" : "Date upon which provided vaccination is considered valid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.extension[https://smart.who.int/ddcc/StructureDefinition/DDCCVaccineValidFrom]"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.dose",
      "path" : "DDCCCoreDataSet.vaccination.dose",
      "short" : "Dose number",
      "definition" : "Vaccine dose number.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.protocolApplied.doseNumber"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.totalDoses",
      "path" : "DDCCCoreDataSet.vaccination.totalDoses",
      "short" : "Total doses",
      "definition" : "Total expected doses as defined by Member State care plan and immunization programme policies.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.protocolApplied.seriesDoses"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.country",
      "path" : "DDCCCoreDataSet.vaccination.country",
      "short" : "Country of vaccination",
      "definition" : "The country in which the individual has been vaccinated.",
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
        "identity" : "ddcc",
        "map" : "Immunization.extension.where(url='https://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfVaccination')"
      },
      {
        "identity" : "ddcc-immunization",
        "map" : "Immunization.extension[https://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent]"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.centre",
      "path" : "DDCCCoreDataSet.vaccination.centre",
      "short" : "Administering centre",
      "definition" : "The name or identifier of the vaccination facility responsible for providing the vaccination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.location"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.signature",
      "path" : "DDCCCoreDataSet.vaccination.signature",
      "short" : "Signature of health worker",
      "definition" : "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Signature"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.practitioner",
      "path" : "DDCCCoreDataSet.vaccination.practitioner",
      "short" : "Health worker identifier",
      "definition" : "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.performer.actor"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.disease",
      "path" : "DDCCCoreDataSet.vaccination.disease",
      "short" : "Disease or agent targeted",
      "definition" : "Name of disease vaccinated against (such as COVID-19).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCDiseaseTargetedCOVID19"
      },
      "mapping" : [{
        "identity" : "ddcc-immunization",
        "map" : "Immunization.protocolApplied.targetDisease"
      }]
    },
    {
      "id" : "DDCCCoreDataSet.vaccination.nextDose",
      "path" : "DDCCCoreDataSet.vaccination.nextDose",
      "short" : "Due date of next dose",
      "definition" : "Date on which the next vaccination should be administered, if a next dose is REQUIRED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ddcc-immunization-recommendation",
        "map" : "ImmunizationRecommendation.dateCriterion.value"
      }]
    }]
  }
}

```
