# Vaccine - COVID-19 - Mapping EUDCC to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccine - COVID-19 - Mapping EUDCC to ICD-11**

## ConceptMap: Vaccine - COVID-19 - Mapping EUDCC to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-euur-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-15 | *Computable Name*:VaccineCovid19EuurToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Vaccine - COVID-19 - EU Union Register of Medicinial Products](ValueSet-vaccine-covid19-euur.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "vaccine-covid19-euur-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-euur-to-icd11",
  "version" : "1.0.0",
  "name" : "VaccineCovid19EuurToIcd11ConceptMap",
  "title" : "Vaccine - COVID-19 - Mapping EUDCC to ICD-11",
  "status" : "draft",
  "date" : "2023-02-15",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "[Vaccine - COVID-19 - EU Union Register of Medicinial Products](ValueSet-vaccine-covid19-euur.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "https://ec.europa.eu/health/documents/community-register/html/",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "EU/1/20/1528",
      "display" : "Comirnaty",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EU/1/20/1507",
      "display" : "Spikevax",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EU/1/21/1529",
      "display" : "Vaxzevria",
      "target" : [{
        "code" : "XM4YL8",
        "display" : "COVID-19 Vaccine AstraZeneca",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EU/1/20/1525",
      "display" : "Jcovden",
      "target" : [{
        "code" : "XM6QV1",
        "display" : "COVID-19 Vaccine Janssen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "CVnCoV",
      "display" : "CVnCoV",
      "target" : [{
        "code" : "XM0GQ8",
        "display" : "COVID-19 vaccine, RNA based",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "NVX-CoV2373",
      "display" : "NVX-CoV2373",
      "target" : [{
        "code" : "XM9T65",
        "display" : "Novavax COVID-19 vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Sputnik-V",
      "display" : "Sputnik V",
      "target" : [{
        "code" : "XM5ZJ4",
        "display" : "Gam-Covid-Vac",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Convidecia",
      "display" : "Convidecia",
      "target" : [{
        "code" : "XM1AG7",
        "display" : "Convidecia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EpiVacCorona",
      "display" : "EpiVacCorona",
      "target" : [{
        "code" : "XM6SZ8",
        "display" : "EpiVacCorona",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "BBIBP-CorV",
      "display" : "BBIBP-CorV",
      "target" : [{
        "code" : "XM8866",
        "display" : "BBIBP-CorV",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Inactivated-SARS-CoV-2-Vero-Cell",
      "display" : "Inactivated SARS-CoV-2 (Vero Cell)",
      "target" : [{
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "CoronaVac",
      "display" : "CoronaVac",
      "target" : [{
        "code" : "XM7HT3",
        "display" : "CoronaVac®",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Covaxin",
      "display" : "Covaxin",
      "target" : [{
        "code" : "XM1G90",
        "display" : "Covaxin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Covishield",
      "display" : "Covishield",
      "target" : [{
        "code" : "XM97T2",
        "display" : "Covishield®",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Covid-19-recombinant",
      "display" : "Covid-19 (recombinant)",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R-COVI",
      "display" : "R-COVI",
      "target" : [{
        "code" : "XM4YL8",
        "display" : "COVID-19 Vaccine AstraZeneca",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "CoviVac",
      "display" : "CoviVac",
      "target" : [{
        "code" : "XM85P5",
        "display" : "Covi-Vac",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Sputnik-Light",
      "display" : "Sputnik Light",
      "target" : [{
        "code" : "XM5QM6",
        "display" : "Sputnik-Light",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Hayat-Vax",
      "display" : "Hayat-Vax",
      "target" : [{
        "code" : "XM9FQ7",
        "display" : "Hayat-Vax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Abdala",
      "display" : "Abdala",
      "target" : [{
        "code" : "XM5JC5",
        "display" : "COVID-19 vaccine, virus protein subunit",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "WIBP-CorV",
      "display" : "WIBP-CorV",
      "target" : [{
        "code" : "XM1AU2",
        "display" : "Sinopharm WIBP-CorV",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "MVC-COV1901",
      "display" : "MVC COVID-19 vaccine",
      "target" : [{
        "code" : "XM4EC8",
        "display" : "MVC-COV1901",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EU/1/21/1618",
      "display" : "Nuvaxovid",
      "target" : [{
        "code" : "XM9T65",
        "display" : "Novavax COVID-19 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Covovax",
      "display" : "Covovax",
      "target" : [{
        "code" : "XM9T65",
        "display" : "Novavax COVID-19 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Vidprevtyn",
      "display" : "Vidprevtyn",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "VLA2001",
      "display" : "VLA2001",
      "target" : [{
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "EpiVacCorona-N",
      "display" : "EpiVacCorona- N",
      "target" : [{
        "code" : "XM3SK8",
        "display" : "EpiVacCorona-N",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Sputnik-M",
      "display" : "Sputnik M",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Covid-19-adsorvida-inativada",
      "display" : "Vacina adsorvida covid-19 (inativada)",
      "target" : [{
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "NVSI-06-08",
      "display" : "NVSI-06-08",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "YS-SC2-010",
      "display" : "YS-SC2-010",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "SCTV01C",
      "display" : "SCTV01C",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "Covifenz",
      "display" : "Covifenz",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "AZD2816",
      "display" : "AZD2816",
      "target" : [{
        "code" : "XM4YL8",
        "display" : "COVID-19 Vaccine AstraZeneca",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Soberana-02",
      "display" : "Soberana 02",
      "target" : [{
        "code" : "XM3PG0",
        "display" : "Soberana-02",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Soberana-Plus",
      "display" : "Soberana Plus",
      "target" : [{
        "code" : "XM0RV9",
        "display" : "Soberana Plus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EU/1/21/1624",
      "display" : "COVID-19 Vaccine Valneva",
      "target" : [{
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "EU/1/21/1580",
      "display" : "VidPrevtyn Beta",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
