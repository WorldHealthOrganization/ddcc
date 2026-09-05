# DDCC Codes for ICD11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DDCC Codes for ICD11**

## CodeSystem: DDCC Codes for ICD11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/CodeSystem/DDCCICD11CodeSystem | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:DDCCICD11CodeSystem |

 
ICD11 codes for DDCC so the FHIR server can perform expansions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DDCCICD11CodeSystem",
  "url" : "http://smart.who.int/ddcc/CodeSystem/DDCCICD11CodeSystem",
  "version" : "1.0.0",
  "name" : "DDCCICD11CodeSystem",
  "title" : "DDCC Codes for ICD11",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ICD11 codes for DDCC so the FHIR server can perform expansions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 64,
  "concept" : [{
    "code" : "1334426561",
    "display" : "Viral nucleic acid amplification test or NAAT"
  },
  {
    "code" : "2056159157",
    "display" : "Rapid immunoassay detecting viral proteins or Ag-RDT"
  },
  {
    "code" : "JAM.AH.XF",
    "display" : "Nasopharyngeal swab"
  },
  {
    "code" : "KAR.AH.XF",
    "display" : "Oropharyngeal swab"
  },
  {
    "code" : "JAE.AH.XF",
    "display" : "Swab from nasal sinus"
  },
  {
    "code" : "KAZ.AH.XD",
    "display" : "Saliva specimen"
  },
  {
    "code" : "DIA.AH.XA",
    "display" : "Blood specimen"
  },
  {
    "code" : "RA01",
    "display" : "COVID-19 Disease"
  },
  {
    "code" : "XM68M6",
    "display" : "COVID-19 vaccines"
  },
  {
    "code" : "XM1NL1",
    "display" : "COVID-19 vaccine, inactivated virus"
  },
  {
    "code" : "XM7HT3",
    "display" : "CoronaVac®"
  },
  {
    "code" : "XM8866",
    "display" : "BBIBP-CorV"
  },
  {
    "code" : "XM9TQ1",
    "display" : "KCONVAC"
  },
  {
    "code" : "XM1G90",
    "display" : "Covaxin"
  },
  {
    "code" : "XM85P5",
    "display" : "Covi-Vac"
  },
  {
    "code" : "XM9FQ7",
    "display" : "Hayat-Vax"
  },
  {
    "code" : "XM97N6",
    "display" : "QazVac"
  },
  {
    "code" : "XM2YG8",
    "display" : "COVIran Barakat"
  },
  {
    "code" : "XM3U61",
    "display" : "Inactivated SARS-CoV-2 vaccine"
  },
  {
    "code" : "XM5DF6",
    "display" : "COVID-19 vaccine, live attenuated virus"
  },
  {
    "code" : "XM9QW8",
    "display" : "COVID-19 vaccine, non-replicating viral vector"
  },
  {
    "code" : "XM4YL8",
    "display" : "COVID-19 Vaccine AstraZeneca"
  },
  {
    "code" : "XM97T2",
    "display" : "Covishield®"
  },
  {
    "code" : "XM6QV1",
    "display" : "COVID-19 Vaccine Janssen"
  },
  {
    "code" : "XM1AG7",
    "display" : "Convidecia"
  },
  {
    "code" : "XM5ZJ4",
    "display" : "Gam-Covid-Vac"
  },
  {
    "code" : "XM5QM6",
    "display" : "Sputnik-Light"
  },
  {
    "code" : "XM0CX4",
    "display" : "COVID-19 vaccine, replicating viral vector"
  },
  {
    "code" : "XM5JC5",
    "display" : "COVID-19 vaccine, virus protein subunit"
  },
  {
    "code" : "XM3CT4",
    "display" : "Recombinant SARS-CoV-2 vaccine"
  },
  {
    "code" : "XM3PG0",
    "display" : "Soberana-02"
  },
  {
    "code" : "XM4EC8",
    "display" : "MVC-COV1901"
  },
  {
    "code" : "XM6SZ8",
    "display" : "EpiVacCorona"
  },
  {
    "code" : "XM6AT1",
    "display" : "COVID-19 vaccine, DNA based"
  },
  {
    "code" : "XM52P3",
    "display" : "ZyCov-D"
  },
  {
    "code" : "XM0GQ8",
    "display" : "COVID-19 vaccine, RNA based"
  },
  {
    "code" : "XM8NQ0",
    "display" : "Comirnaty®"
  },
  {
    "code" : "XM3DT5",
    "display" : "COVID-19 Vaccine Moderna"
  },
  {
    "code" : "XN109",
    "display" : "SARS-CoV-2"
  },
  {
    "code" : "XN0HL",
    "display" : "SARS-CoV-2 Alpha"
  },
  {
    "code" : "XN4Q7",
    "display" : "SARS-CoV-2 Beta"
  },
  {
    "code" : "XN5BQ",
    "display" : "SARS-CoV-2 Gamma"
  },
  {
    "code" : "XN8V6",
    "display" : "SARS-CoV-2 Delta"
  },
  {
    "code" : "XN1GK",
    "display" : "SARS-CoV-2 Epsilon"
  },
  {
    "code" : "XN3ZE",
    "display" : "SARS-CoV-2 Zeta"
  },
  {
    "code" : "XN2V4",
    "display" : "SARS-CoV-2 Eta"
  },
  {
    "code" : "XN4Q1",
    "display" : "SARS-CoV-2 Theta"
  },
  {
    "code" : "XN3UD",
    "display" : "SARS-CoV-2 Iota"
  },
  {
    "code" : "XN9L8",
    "display" : "SARS-CoV-2 Kappa"
  },
  {
    "code" : "XN6AM",
    "display" : "SARS-CoV-2 Lambda"
  },
  {
    "code" : "XN39J",
    "display" : "SARS-CoV-2 Mu"
  },
  {
    "code" : "XN161",
    "display" : "SARS-CoV-2 Omicron"
  },
  {
    "code" : "MG71",
    "display" : "Abnormal laboratory results, not elsewhere classified"
  },
  {
    "code" : "RA01.0",
    "display" : "COVID-19, virus identified"
  },
  {
    "code" : "RA01.1",
    "display" : "COVID-19, virus not identified"
  },
  {
    "code" : "QA02",
    "display" : "Medical observation or evaluation for suspected diseases or conditions, ruled out"
  },
  {
    "code" : "XM1AU2",
    "display" : "Sinopharm WIBP-CorV"
  },
  {
    "code" : "XM1J92",
    "display" : "COVID-19 vaccine, virus like particle"
  },
  {
    "code" : "XM3SK8",
    "display" : "EpiVacCorona-N"
  },
  {
    "code" : "XM9N08",
    "display" : "Razi COV PARS"
  },
  {
    "code" : "XM9P21",
    "display" : "SpikoGen"
  },
  {
    "code" : "XM9T65",
    "display" : "Novavax COVID-19 vaccine"
  },
  {
    "code" : "XM0K39",
    "display" : "Covidful"
  },
  {
    "code" : "XM0RV9",
    "display" : "Soberana Plus"
  }]
}

```
