# Certificate - ICAO Visible Digital Seal Logical Model - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Certificate - ICAO Visible Digital Seal Logical Model**

## Logical Model: Certificate - ICAO Visible Digital Seal Logical Model ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/StructureDefinition/CertICAO | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:CertICAO |

 
Data elements for the ICAO Visible Digital Seal Core Data Set. Based on [https://www.icao.int/vdsnc-spec](https://www.icao.int/vdsnc-spec) as of 2023-02-02. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/who.ddcc|current/StructureDefinition/StructureDefinition-CertICAO.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CertICAO.csv), [Excel](StructureDefinition-CertICAO.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CertICAO",
  "url" : "http://smart.who.int/ddcc/StructureDefinition/CertICAO",
  "version" : "1.0.0",
  "name" : "CertICAO",
  "title" : "Certificate - ICAO Visible Digital Seal Logical Model",
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
  "description" : "Data elements for the ICAO Visible Digital Seal Core Data Set. Based on <https://www.icao.int/vdsnc-spec> as of 2023-02-02.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://smart.who.int/ddcc/StructureDefinition/CertICAO",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "CertICAO",
      "path" : "CertICAO",
      "short" : "Certificate - ICAO Visible Digital Seal Logical Model",
      "definition" : "Data elements for the ICAO Visible Digital Seal Core Data Set. Based on <https://www.icao.int/vdsnc-spec> as of 2023-02-02."
    },
    {
      "id" : "CertICAO.data",
      "path" : "CertICAO.data",
      "short" : "Data",
      "definition" : "Data",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.hdr",
      "path" : "CertICAO.data.hdr",
      "short" : "Header",
      "definition" : "Header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.hdr.t",
      "path" : "CertICAO.data.hdr.t",
      "short" : "Type (either `icao.test` for proof of testing, or `icao.vacc` for proof of vaccination)",
      "definition" : "Type (either `icao.test` for proof of testing, or `icao.vacc` for proof of vaccination)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.hdr.v",
      "path" : "CertICAO.data.hdr.v",
      "short" : "Version",
      "definition" : "Version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "CertICAO.data.hdr.is",
      "path" : "CertICAO.data.hdr.is",
      "short" : "IssuingCountry (ISO-3166 three letter code; see element details)",
      "definition" : "The three letter code is according to Doc 9303-3, which defines this as ISO-3166 country codes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
      }
    },
    {
      "id" : "CertICAO.data.msg",
      "path" : "CertICAO.data.msg",
      "short" : "Message",
      "definition" : "Message",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid",
      "path" : "CertICAO.data.msg.pid",
      "short" : "PersonalInformation (more info in element description)",
      "definition" : "PersonalInformation (more info in element description)",
      "comment" : "`pid.n`, `pid.dob`, `pid.dt`, and `pid.dn` are required for the `icao.test` type.\n\n`pid.n` and either `pid.i` or `pid.dob` are required for the `icao.vacc` type.\n\nCardinalities in the logical model for these elements are set to `0..1` to accommodate the different schemas for the two different credential types.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.n",
      "path" : "CertICAO.data.msg.pid.n",
      "short" : "Name (Name of the holder (as specified in Doc 9303-3) MUST be used.)",
      "definition" : "Name (Name of the holder (as specified in Doc 9303-3) MUST be used.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.dob",
      "path" : "CertICAO.data.msg.pid.dob",
      "short" : "Date of Birth (The DOB of the test subject. The [RFC 3339] full date format YYYY-MM- DD MUST be used.)",
      "definition" : "Date of Birth (The DOB of the test subject. The [RFC 3339] full date format YYYY-MM- DD MUST be used.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.dt",
      "path" : "CertICAO.data.msg.pid.dt",
      "short" : "ID Document Type of the identity document (see element details)",
      "definition" : "The ID Document Type of the identity document MUST be used. Only these values MUST be used:\n\n- `P` – Passport (Doc 9303-4)\n- `A` – ID Card (Doc 9303-5)\n- `C` – ID Card (Doc 9303-5)\n- `I` – ID Card Doc 9303-5)\n- `AC` - Crew Member Certificate (Doc 9303-5)\n- `V` – Visa (Doc 9303-7)\n- `D` – Driving License (ISO 18013-1)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.dn",
      "path" : "CertICAO.data.msg.pid.dn",
      "short" : "ID Document Number of the identity document",
      "definition" : "ID Document Number of the identity document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.i",
      "path" : "CertICAO.data.msg.pid.i",
      "short" : "Travel Document Number",
      "definition" : "Travel Document Number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.ai",
      "path" : "CertICAO.data.msg.pid.ai",
      "short" : "Other Document Number",
      "definition" : "Other Document Number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.pid.sex",
      "path" : "CertICAO.data.msg.pid.sex",
      "short" : "Sex of the test subject (as specified in Doc 9303-4 Section 4.1.1.1 – Visual Inspection Zone)",
      "definition" : "Sex of the test subject (as specified in Doc 9303-4 Section 4.1.1.1 – Visual Inspection Zone)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.utci",
      "path" : "CertICAO.data.msg.utci",
      "short" : "UTCI (Unique Test Certificate Identifier; used for `icao.test` only, not used of `icao.vacc`)",
      "definition" : "UTCI (Unique Test Certificate Identifier; used for `icao.test` only, not used of `icao.vacc`)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp",
      "path" : "CertICAO.data.msg.sp",
      "short" : "ServiceProvider (Required for `icao.test` only, not used of `icao.vacc`)",
      "definition" : "ServiceProvider (Required for `icao.test` only, not used of `icao.vacc`)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp.spn",
      "path" : "CertICAO.data.msg.sp.spn",
      "short" : "Name of testing facility or service provider",
      "definition" : "Name of testing facility or service provider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp.ctr",
      "path" : "CertICAO.data.msg.sp.ctr",
      "short" : "Country of test (spec does not indicate code system, but presumably this is ISO-3166 like the other country codes in the certificate)",
      "definition" : "Country of test (spec does not indicate code system, but presumably this is ISO-3166 like the other country codes in the certificate)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp.cd",
      "path" : "CertICAO.data.msg.sp.cd",
      "short" : "ContactDetails",
      "definition" : "ContactDetails",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp.cd.p",
      "path" : "CertICAO.data.msg.sp.cd.p",
      "short" : "PhoneNumber",
      "definition" : "PhoneNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp.cd.e",
      "path" : "CertICAO.data.msg.sp.cd.e",
      "short" : "Email",
      "definition" : "Email",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.sp.cd.a",
      "path" : "CertICAO.data.msg.sp.cd.a",
      "short" : "Address",
      "definition" : "Address",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.dat",
      "path" : "CertICAO.data.msg.dat",
      "short" : "DateTimeTestReport (Required for `icao.test` only, not used of `icao.vacc`)",
      "definition" : "DateTimeTestReport (Required for `icao.test` only, not used of `icao.vacc`)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.dat.sc",
      "path" : "CertICAO.data.msg.dat.sc",
      "short" : "SpecimenCollection (RFC3339)",
      "definition" : "SpecimenCollection (RFC3339)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "CertICAO.data.msg.dat.ri",
      "path" : "CertICAO.data.msg.dat.ri",
      "short" : "ReportIssuance (RFC3339)",
      "definition" : "ReportIssuance (RFC3339)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "CertICAO.data.msg.tr",
      "path" : "CertICAO.data.msg.tr",
      "short" : "TestResult (Required for `icao.test` only, not used of `icao.vacc`)",
      "definition" : "TestResult (Required for `icao.test` only, not used of `icao.vacc`)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.tr.tc",
      "path" : "CertICAO.data.msg.tr.tc",
      "short" : "TestConducted",
      "definition" : "TestConducted",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/LabTestTypeIcaoValueSet"
      }
    },
    {
      "id" : "CertICAO.data.msg.tr.r",
      "path" : "CertICAO.data.msg.tr.r",
      "short" : "Results",
      "definition" : "Results",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/LabTestResultIcaoValueSet"
      }
    },
    {
      "id" : "CertICAO.data.msg.tr.m",
      "path" : "CertICAO.data.msg.tr.m",
      "short" : "Sampling method",
      "definition" : "Sampling method",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/lab-test-sample-origin-icao"
      }
    },
    {
      "id" : "CertICAO.data.msg.opt",
      "path" : "CertICAO.data.msg.opt",
      "short" : "Optional data issued at the discretion of the issuing authority",
      "definition" : "Optional data issued at the discretion of the issuing authority",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.uvci",
      "path" : "CertICAO.data.msg.uvci",
      "short" : "Unique Vaccination Certificate Identifier (Required for `icao.vacc` only, not used of `icao.test`)",
      "definition" : "Unique Vaccination Certificate Identifier (Required for `icao.vacc` only, not used of `icao.test`)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve",
      "path" : "CertICAO.data.msg.ve",
      "short" : "VaccinationEvent (Required for `icao.vacc` only, not used of `icao.test`)",
      "definition" : "VaccinationEvent (Required for `icao.vacc` only, not used of `icao.test`)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.des",
      "path" : "CertICAO.data.msg.ve.des",
      "short" : "Vaccine or Prophylaxis (ICD-11 MMS code descending from http://id.who.int/icd/entity/164949870)",
      "definition" : "Vaccine or Prophylaxis (ICD-11 MMS code descending from http://id.who.int/icd/entity/164949870)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://smart.who.int/ddcc/ValueSet/WHODDCCVaccinesCOVID19"
      }
    },
    {
      "id" : "CertICAO.data.msg.ve.nam",
      "path" : "CertICAO.data.msg.ve.nam",
      "short" : "Vaccine Brand (medical product name)",
      "definition" : "Vaccine Brand (medical product name)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.dis",
      "path" : "CertICAO.data.msg.ve.dis",
      "short" : "Disease or agent targeted (ICD-11 code)",
      "definition" : "Disease or agent targeted (ICD-11 code)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.vd",
      "path" : "CertICAO.data.msg.ve.vd",
      "short" : "VaccinationDetails",
      "definition" : "VaccinationDetails",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.vd.dvc",
      "path" : "CertICAO.data.msg.ve.vd.dvc",
      "short" : "Date of vaccination (see element details)",
      "definition" : "Date on which the vaccine was administered. The ISO8601 full date format YYYY-MM-DD MUST be used.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.vd.seq",
      "path" : "CertICAO.data.msg.ve.vd.seq",
      "short" : "Dose number (vaccine dose number, integer between 1 and 99)",
      "definition" : "Dose number (vaccine dose number, integer between 1 and 99)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.vd.ctr",
      "path" : "CertICAO.data.msg.ve.vd.ctr",
      "short" : "Country of vaccination (ISO-3166 three letter code; see element details)",
      "definition" : "The country in which the individual has been vaccinated. A three letter code identifying the issuing state or organization. The three letter code is according to Doc 9303-3, which defines this as ISO-3166 country codes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
      }
    },
    {
      "id" : "CertICAO.data.msg.ve.vd.adm",
      "path" : "CertICAO.data.msg.ve.vd.adm",
      "short" : "Administering centre (The name or identifier of the vaccination facility)",
      "definition" : "Administering centre (The name or identifier of the vaccination facility)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.vd.lot",
      "path" : "CertICAO.data.msg.ve.vd.lot",
      "short" : "Vaccine batch number",
      "definition" : "Vaccine batch number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.data.msg.ve.vd.dvn",
      "path" : "CertICAO.data.msg.ve.vd.dvn",
      "short" : "Due date of next dose (see element details)",
      "definition" : "Date on which the next 10 vaccination should be administered. The ISO8601 full date format YYYY-MM-DD MUST be used.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "CertICAO.sig",
      "path" : "CertICAO.sig",
      "short" : "Signature",
      "definition" : "Signature",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CertICAO.sig.alg",
      "path" : "CertICAO.sig.alg",
      "short" : "SignatureAlgo",
      "definition" : "SignatureAlgo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.sig.cer",
      "path" : "CertICAO.sig.cer",
      "short" : "Certificate (X.509 signer certificate in base64url [RFC 4648])",
      "definition" : "Certificate (X.509 signer certificate in base64url [RFC 4648])",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CertICAO.sig.sigvl",
      "path" : "CertICAO.sig.sigvl",
      "short" : "SignatureValue (Signature value signed over the Data in base64url [RFC 4648])",
      "definition" : "SignatureValue (Signature value signed over the Data in base64url [RFC 4648])",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
