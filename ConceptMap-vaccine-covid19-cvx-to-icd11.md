# Vaccine - COVID-19 - Mapping CVX to ICD-11 - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccine - COVID-19 - Mapping CVX to ICD-11**

## ConceptMap: Vaccine - COVID-19 - Mapping CVX to ICD-11 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-cvx-to-icd11 | *Version*:1.0.0 |
| Draft as of 2023-02-15 | *Computable Name*:VaccineCovid19CvxToIcd11ConceptMap |
| **Copyright/Legal**: TODO: provide copyright information | |

 
[Vaccine - COVID-19 - CVX](ValueSet-vaccine-covid19-cvx.md) mapped to ICD-11 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "vaccine-covid19-cvx-to-icd11",
  "url" : "http://smart.who.int/ddcc/ConceptMap/vaccine-covid19-cvx-to-icd11",
  "version" : "1.0.0",
  "name" : "VaccineCovid19CvxToIcd11ConceptMap",
  "title" : "Vaccine - COVID-19 - Mapping CVX to ICD-11",
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
  "description" : "[Vaccine - COVID-19 - CVX](ValueSet-vaccine-covid19-cvx.html) mapped to ICD-11",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "TODO: provide copyright information",
  "group" : [{
    "source" : "http://hl7.org/fhir/sid/cvx",
    "target" : "http://id.who.int/icd11/mms",
    "element" : [{
      "code" : "207",
      "display" : "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5mL dose or 50 mcg/0.25mL dose",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "208",
      "display" : "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "210",
      "display" : "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL ",
      "target" : [{
        "code" : "XM4YL8",
        "display" : "COVID-19 Vaccine AstraZeneca",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "211",
      "display" : "COVID-19, subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
      "target" : [{
        "code" : "XM9T65",
        "display" : "Novavax COVID-19 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "212",
      "display" : "COVID-19 vaccine, vector-nr, rS-Ad26, PF, 0.5 mL",
      "target" : [{
        "code" : "XM6QV1",
        "display" : "COVID-19 Vaccine Janssen",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "213",
      "display" : "SARS-COV-2 (COVID-19) vaccine, UNSPECIFIED",
      "target" : [{
        "code" : "XM68M6",
        "display" : "COVID-19 vaccines",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "217",
      "display" : "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "218",
      "display" : "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "219",
      "display" : "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "221",
      "display" : "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "225",
      "display" : "COVID-19, D614, recomb, preS dTM, AS03 adjuvant add, PF, 5mcg/0.5mL",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "226",
      "display" : "COVID-19, D614, recomb, preS dTM, AS03 adjuvant add, PF, 10mcg/0.5mL",
      "target" : [{
        "code" : "XM3CT4",
        "display" : "Recombinant SARS-CoV-2 vaccine",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "227",
      "display" : "COVID-19, mRNA, LNP-S, PF, pediatric 50 mcg/0.5 mL dose",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "228",
      "display" : "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "229",
      "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "230",
      "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 10 mcg/0.2 mL",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "300",
      "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 30 mcg/0.3 mL dose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "301",
      "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 10 mcg/0.2 mL dose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "302",
      "display" : "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "500",
      "display" : "COVID-19 Non-US Vaccine, Product Unknown",
      "target" : [{
        "code" : "XM68M6",
        "display" : "COVID-19 vaccines",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "501",
      "display" : "COVID-19 IV Non-US Vaccine (QAZCOVID-IN)",
      "target" : [{
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "502",
      "display" : "COVID-19 IV Non-US Vaccine (COVAXIN)",
      "target" : [{
        "code" : "XM1G90",
        "display" : "Covaxin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "503",
      "display" : "COVID-19 LAV Non-US Vaccine (COVIVAC)",
      "target" : [{
        "code" : "XM85P5",
        "display" : "Covi-Vac",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "504",
      "display" : "COVID-19 VVnr Non-US Vaccine (Sputnik Light)",
      "target" : [{
        "code" : "XM5QM6",
        "display" : "Sputnik-Light",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "505",
      "display" : "COVID-19 VVnr Non-US Vaccine (Sputnik V)",
      "target" : [{
        "code" : "XM5ZJ4",
        "display" : "Gam-Covid-Vac",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "506",
      "display" : "COVID-19 VVnr Non-US Vaccine (CanSino Biological Inc./Beijing Institute of Biotechnology)",
      "target" : [{
        "code" : "XM1AG7",
        "display" : "Convidecia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "507",
      "display" : "COVID-19 PS Non-US Vaccine (Anhui Zhifei Longcom Biopharm + Inst of Micro, Chinese Acad of Sciences)",
      "target" : [{
        "code" : "XM5JC5",
        "display" : "COVID-19 vaccine, virus protein subunit",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "508",
      "display" : "COVID-19 PS Non-US Vaccine (Jiangsu Province Centers for Disease Control and Prevention)",
      "target" : [{
        "code" : "XM5JC5",
        "display" : "COVID-19 vaccine, virus protein subunit",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "509",
      "display" : "COVID-19 PS Non-US Vaccine (EpiVacCorona)",
      "target" : [{
        "code" : "XM6SZ8",
        "display" : "EpiVacCorona",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "510",
      "display" : "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
      "target" : [{
        "code" : "XM8866",
        "display" : "BBIBP-CorV",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "511",
      "display" : "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
      "target" : [{
        "code" : "XM7HT3",
        "display" : "CoronaVac®",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "512",
      "display" : "SARS-COV-2 COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
      "target" : [{
        "code" : "XM1J92",
        "display" : "COVID-19 vaccine, virus like particle",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "513",
      "display" : "SARS-COV-2 COVID-19 PS Non-US Vaccine (Anhui Zhifei Longcom, Zifivax)",
      "target" : [{
        "code" : "XM5JC5",
        "display" : "COVID-19 vaccine, virus protein subunit",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "514",
      "display" : "SARS-COV-2 COVID-19 DNA Non-US Vaccine (Zydus Cadila, ZyCoV-D)",
      "target" : [{
        "code" : "XM52P3",
        "display" : "ZvCov-D",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "515",
      "display" : "SARS-COV-2 COVID-19 PS Non-US Vaccine (Medigen, MVC-COV1901)",
      "target" : [{
        "code" : "XM4EC8",
        "display" : "MVC-COV1901",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "516",
      "display" : "COV-2 COVID-19 Inactivated Non-US Vaccine Product (Minhai Biotechnology Co, KCONVAC)",
      "target" : [{
        "code" : "XM9TQ1",
        "display" : "KCONVAC",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "517",
      "display" : "SARS-COV-2 COVID-19 PS Non-US Vaccine (Biological E Limited, Corbevax)",
      "target" : [{
        "code" : "XM5JC5",
        "display" : "COVID-19 vaccine, virus protein subunit",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "518",
      "display" : "COVID-19 Inactivated, Non-US Vaccine (VLA2001, Valneva)",
      "target" : [{
        "code" : "XM1NL1",
        "display" : "COVID-19 vaccine, inactivated virus",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "519",
      "display" : "COVID-19 mRNA, bivalent, original/Omicron BA.1, Non-US Vaccine (Spikevax Bivalent), Moderna",
      "target" : [{
        "code" : "XM3DT5",
        "display" : "COVID-19 Vaccine Moderna",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "520",
      "display" : "COVID-19 mRNA, bivalent, original/Omicron BA.1, Non-US Vaccine Product, Pfizer-BioNTech",
      "target" : [{
        "code" : "XM8NQ0",
        "display" : "Comirnaty",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
