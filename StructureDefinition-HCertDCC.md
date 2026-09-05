# Payload for Certificate - EU DCC CBOR Web Token Logical Model - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Payload for Certificate - EU DCC CBOR Web Token Logical Model**

## Logical Model: Payload for Certificate - EU DCC CBOR Web Token Logical Model ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/HCertDCC | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:HCertDCC |

 
Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads [https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf](https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf) as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 [https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-HCertDCC.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HCertDCC.csv), [Excel](StructureDefinition-HCertDCC.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HCertDCC",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/HCertDCC",
  "version" : "1.0.0",
  "name" : "HCertDCC",
  "title" : "Payload for Certificate - EU DCC CBOR Web Token Logical Model",
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
  "description" : "Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads <https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf> as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1>.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://smart.who.int/ddcc/StructureDefinition/HCertDCC",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HCertDCC",
      "path" : "HCertDCC",
      "short" : "Payload for Certificate - EU DCC CBOR Web Token Logical Model",
      "definition" : "Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads <https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf> as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1>."
    },
    {
      "id" : "HCertDCC.1",
      "path" : "HCertDCC.1",
      "short" : "EU Digital COVID Certificate v1",
      "definition" : "EU Digital COVID Certificate v1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HCertDCC.1.ver",
      "path" : "HCertDCC.1.ver",
      "short" : "Schema version",
      "definition" : "Schema version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.nam",
      "path" : "HCertDCC.1.nam",
      "short" : "Person name",
      "definition" : "Person name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HCertDCC.1.nam.fn",
      "path" : "HCertDCC.1.nam.fn",
      "short" : "Surname/family name (separate multiple with spaces)",
      "definition" : "Surname/family name (separate multiple with spaces)",
      "comment" : "Example from spec: \"Musterfrau-Gößinger Müller\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.nam.fnt",
      "path" : "HCertDCC.1.nam.fnt",
      "short" : "Standardised surname",
      "definition" : "Standardised surname",
      "comment" : "\"Surname(s) of the holder transliterated using the same convention as the one used in the holder’s machine readable travel documents (such as the rules defined in ICAO Doc 9303 Part 3). Exactly 1 (one) non-empty field MUST be provided, only including characters A-Z and <. Maximum length: 80 characters (as per ICAO 9303 specification).\"",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.nam.gn",
      "path" : "HCertDCC.1.nam.gn",
      "short" : "Forename/given name. Skip if no given name. Separate with spaces.",
      "definition" : "Forename/given name. Skip if no given name. Separate with spaces.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.nam.gnt",
      "path" : "HCertDCC.1.nam.gnt",
      "short" : "Standardised forename, same approach as fnt. Skip if no given name.",
      "definition" : "Standardised forename, same approach as fnt. Skip if no given name.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.dob",
      "path" : "HCertDCC.1.dob",
      "short" : "Date of birth in YYYY-MM-DD format. Skip if missing. Fill unknown months or days with 'XX'.",
      "definition" : "Date of birth in YYYY-MM-DD format. Skip if missing. Fill unknown months or days with 'XX'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "HCertDCC.1.v",
      "path" : "HCertDCC.1.v",
      "short" : "Vaccination Group (see element details)",
      "definition" : "Vaccination Group (see element details)",
      "comment" : "According to the spec, \"Vaccination group, if present, MUST contain exactly 1 (one) entry describing exactly one vaccination event. All elements of the vaccination group are mandatory, empty values are not supported.\" It appears this means the maximum cardinality of the `v` element is 1, and all sub-elements have minimum cardinality of 1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "OnlyOneAllowed",
        "severity" : "error",
        "human" : "Only one allowed (cardinality of 0..* is necessary because this element is an array in the EU DCC JSON).",
        "expression" : "count() <= 1",
        "source" : "http://smart.who.int/ddcc/StructureDefinition/HCertDCC"
      }]
    },
    {
      "id" : "HCertDCC.1.v.tg",
      "path" : "HCertDCC.1.v.tg",
      "short" : "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant; see element details)",
      "definition" : "The selected codes shall refer to COVID-19 or, if more detailed information on the genetic variant of SARS-CoV-2 is needed, to these variants if such detailed information is needed due to epidemiological reasons. Example of a code that should be used is the SNOMED CT code `840539006` (COVID-19).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.v.vp",
      "path" : "HCertDCC.1.v.vp",
      "short" : "Vaccine or prophylaxis (e.g., 'SARS-CoV-2 mRNA vaccine'; SNOMED or ATC; see element details)",
      "definition" : "Preferred Code System: SNOMED CT or ATC Classification. Examples of codes that should be used from the preferred code systems are the SNOMED CT code 1119305005 (SARS-CoV-2 antigen vaccine), 1119349007 (SARS-CoV-2 mRNA vaccine) or J07BX03 (covid-19 vaccines). The value set should be extended when new vaccine types are developed and put into use.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.v.mp",
      "path" : "HCertDCC.1.v.mp",
      "short" : "Vaccine product (e.g., 'EU/1/20/1528 (Comirnaty)'; see element details)",
      "definition" : "Preferred Code Systems (in the order of preference):\n\n- Union Register of medicinal products for vaccines with EU-wide authorisation (authorisation numbers) - for example, `EU/1/20/1528` (Comirnaty)\n- A global vaccine register such as one that could be established by the World Health Organisation\n- Name of the vaccine medicinal product in other cases. If the name includes whitespaces, these should be replaced by a hyphen (-). For example, `Sputnik-V` (standing for Sputnik V).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/VaccineCovid19EUUnionRegisterValueSet"
      }
    },
    {
      "id" : "HCertDCC.1.v.ma",
      "path" : "HCertDCC.1.v.ma",
      "short" : "Vaccine marketing authorisation holder or manufacturer (e.g., 'ORG-100030215' (Biontech Manufacturing GmbH))",
      "definition" : "Preferred Code System:\n\n- Organisation code from EMA (SPOR system for ISO IDMP)\n- A global vaccine marketing authorisation holder or manufacturer register, such as one that could be established by the World Health Organisation\n- Name of the organisation in other cases.\n\nIf the name includes whitespaces, these should be replaced by a hyphen (-).If marketing authorisation holder is not available, this will be the manufacturer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.v.dn",
      "path" : "HCertDCC.1.v.dn",
      "short" : "Number in a series of doses",
      "definition" : "Number in a series of doses",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "HCertDCC.1.v.sd",
      "path" : "HCertDCC.1.v.sd",
      "short" : "The overall number of doses in the series",
      "definition" : "The overall number of doses in the series",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "HCertDCC.1.v.dt",
      "path" : "HCertDCC.1.v.dt",
      "short" : "Date of vaccination, YYYY-MM-DD format",
      "definition" : "Date of vaccination, YYYY-MM-DD format",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "HCertDCC.1.v.co",
      "path" : "HCertDCC.1.v.co",
      "short" : "Country where vaccine was administered (two letter ISo-3166)",
      "definition" : "Country where vaccine was administered (two letter ISo-3166)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-2"
      }
    },
    {
      "id" : "HCertDCC.1.v.is",
      "path" : "HCertDCC.1.v.is",
      "short" : "Certificate issuer (organization name)",
      "definition" : "Certificate issuer (organization name)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.v.ci",
      "path" : "HCertDCC.1.v.ci",
      "short" : "Unique certificate identifier (UVCI)",
      "definition" : "Unique certificate identifier (UVCI)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.t",
      "path" : "HCertDCC.1.t",
      "short" : "Test Group",
      "definition" : "Test Group",
      "comment" : "\"Test group, if present, MUST contain exactly 1 (one) entry describing exactly one test result.\"",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "OnlyOneAllowed",
        "severity" : "error",
        "human" : "Only one allowed (cardinality of 0..* is necessary because this element is an array in the EU DCC JSON).",
        "expression" : "count() <= 1",
        "source" : "http://smart.who.int/ddcc/StructureDefinition/HCertDCC"
      }]
    },
    {
      "id" : "HCertDCC.1.t.tg",
      "path" : "HCertDCC.1.t.tg",
      "short" : "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant; see element details)",
      "definition" : "The selected codes shall refer to COVID-19 or, if more detailed information on the genetic variant of SARS-CoV-2 is needed, to these variants if such detailed information is needed due to epidemiological reasons.\n\nExample of a code that should be used is the SNOMED CT code `840539006` (COVID-19).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/LabTestPathogenCovid19SnomedValueSet"
      }
    },
    {
      "id" : "HCertDCC.1.t.tt",
      "path" : "HCertDCC.1.t.tt",
      "short" : "Type of test (LOINC code; see element details)",
      "definition" : "The codes in this value set shall refer to the method of the test and shall be selected at least to separate the NAAT tests from RAT tests as expressed in Regulation (EU) 2021/953.\n\nAn example of a code that should be used from the preferred code system is LP217198-3 (Rapid immunoassay).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/LabTestTypeLoincValueSet"
      }
    },
    {
      "id" : "HCertDCC.1.t.nm",
      "path" : "HCertDCC.1.t.nm",
      "short" : "Name of the nucleic acid amplification test (NAAT) used",
      "definition" : "Name of the nucleic acid amplification test (NAAT) used",
      "comment" : "From the spec: \"The name should include the name of the test manufacturer and the commercial name of the test, separated by a comma.\" Omit element for RAT test. MUST not be empty.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.t.ma",
      "path" : "HCertDCC.1.t.ma",
      "short" : "Rapid antigen test (RAT) device identifier from the JRC database",
      "definition" : "Rapid antigen test (RAT) device identifier from the JRC database",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.t.sc",
      "path" : "HCertDCC.1.t.sc",
      "short" : "Date and time when test sample was collected in ISO 8601 format",
      "definition" : "Date and time when test sample was collected in ISO 8601 format",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "HCertDCC.1.t.tr",
      "path" : "HCertDCC.1.t.tr",
      "short" : "Result of the test (preferred: SNOMED CT GPS code)",
      "definition" : "The codes selected shall allow distinguishing between positive and negative test results (detected or not detected). Additional values (like undetermined) may be added if the use cases do require this.\n\nExamples of codes that should be used from the preferred code system are `260415000` (Not detected) and `260373001` (Detected).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/LabTestQualitativeResultSnomedValueSet"
      }
    },
    {
      "id" : "HCertDCC.1.t.tc",
      "path" : "HCertDCC.1.t.tc",
      "short" : "Testing centre or facility",
      "definition" : "Testing centre or facility",
      "comment" : "Required for NAAT tests. Optional for RAT tests. MUST not be empty (omit instead).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.t.co",
      "path" : "HCertDCC.1.t.co",
      "short" : "Country of test (two letter ISo-3166)",
      "definition" : "Country of test (two letter ISo-3166)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-2"
      }
    },
    {
      "id" : "HCertDCC.1.t.is",
      "path" : "HCertDCC.1.t.is",
      "short" : "Certificate issuer",
      "definition" : "Certificate issuer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.t.ci",
      "path" : "HCertDCC.1.t.ci",
      "short" : "Unique Certificate Identifier (UVCI)",
      "definition" : "Unique Certificate Identifier (UVCI)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.r",
      "path" : "HCertDCC.1.r",
      "short" : "Recovery Group",
      "definition" : "Recovery Group",
      "comment" : "\"Recovery group, if present, MUST contain exactly 1 (one) entry describing exactly one recovery statement.\"",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "OnlyOneAllowed",
        "severity" : "error",
        "human" : "Only one allowed (cardinality of 0..* is necessary because this element is an array in the EU DCC JSON).",
        "expression" : "count() <= 1",
        "source" : "http://smart.who.int/ddcc/StructureDefinition/HCertDCC"
      }]
    },
    {
      "id" : "HCertDCC.1.r.tg",
      "path" : "HCertDCC.1.r.tg",
      "short" : "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant)",
      "definition" : "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.r.fr",
      "path" : "HCertDCC.1.r.fr",
      "short" : "The date when a sample for the NAAT test producing a positive result was collected, in the format YYYY-MM-DD (complete date without time).",
      "definition" : "The date when a sample for the NAAT test producing a positive result was collected, in the format YYYY-MM-DD (complete date without time).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "HCertDCC.1.r.co",
      "path" : "HCertDCC.1.r.co",
      "short" : "Country of test (two letter ISo-3166)",
      "definition" : "Country of test (two letter ISo-3166)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-2"
      }
    },
    {
      "id" : "HCertDCC.1.r.is",
      "path" : "HCertDCC.1.r.is",
      "short" : "Certificate issuer",
      "definition" : "Certificate issuer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HCertDCC.1.r.df",
      "path" : "HCertDCC.1.r.df",
      "short" : "The first date on which the certificate is considered to be valid, in YYYY-MM-DD format (complete date without time).",
      "definition" : "The first date on which the certificate is considered to be valid, in YYYY-MM-DD format (complete date without time).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "HCertDCC.1.r.du",
      "path" : "HCertDCC.1.r.du",
      "short" : "The last date on which the certificate is considered to be valid, assigned by the certificate issuer, in YYYY-MM-DD format (complete date without time).",
      "definition" : "The last date on which the certificate is considered to be valid, assigned by the certificate issuer, in YYYY-MM-DD format (complete date without time).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "HCertDCC.1.r.ci",
      "path" : "HCertDCC.1.r.ci",
      "short" : "Unique certificate identifier (UVCI)",
      "definition" : "Unique certificate identifier (UVCI)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
