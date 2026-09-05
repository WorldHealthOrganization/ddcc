# Vaccine - COVID-19 - CVX - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccine - COVID-19 - CVX**

## ValueSet: Vaccine - COVID-19 - CVX (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ValueSet/VaccineCovid19CvxValueSet | *Version*:1.0.0 |
| Draft as of 2026-09-05 | *Computable Name*:VaccineCovid19CvxValueSet |

 
This is a one-time snapshot of the allowed CVX codes for vaccines, retrieved in February 2023. Contents may need to be updated and readers should consult the credential documentation, found here http://hl7.org/fhir/uv/shc-vaccination/2021Sep/ValueSet-vaccine-cvx.html. More information on the CVX value set can be found here, [https://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx](https://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VaccineCovid19CvxValueSet",
  "url" : "http://smart.who.int/ddcc/ValueSet/VaccineCovid19CvxValueSet",
  "version" : "1.0.0",
  "name" : "VaccineCovid19CvxValueSet",
  "title" : "Vaccine - COVID-19 - CVX",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-05T20:45:54+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This is a one-time snapshot of the allowed CVX codes for vaccines, retrieved in February 2023. Contents may need to be updated and readers should consult the credential documentation, found here http://hl7.org/fhir/uv/shc-vaccination/2021Sep/ValueSet-vaccine-cvx.html. More information on the CVX value set can be found here, <https://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx>",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/sid/cvx",
      "concept" : [{
        "code" : "207",
        "display" : "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5mL dose or 50 mcg/0.25mL dose"
      },
      {
        "code" : "208",
        "display" : "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose"
      },
      {
        "code" : "210",
        "display" : "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL "
      },
      {
        "code" : "211",
        "display" : "COVID-19, subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL"
      },
      {
        "code" : "212",
        "display" : "COVID-19 vaccine, vector-nr, rS-Ad26, PF, 0.5 mL"
      },
      {
        "code" : "213",
        "display" : "SARS-COV-2 (COVID-19) vaccine, UNSPECIFIED"
      },
      {
        "code" : "217",
        "display" : "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose"
      },
      {
        "code" : "218",
        "display" : "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose"
      },
      {
        "code" : "219",
        "display" : "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose"
      },
      {
        "code" : "221",
        "display" : "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose"
      },
      {
        "code" : "225",
        "display" : "COVID-19, D614, recomb, preS dTM, AS03 adjuvant add, PF, 5mcg/0.5mL"
      },
      {
        "code" : "226",
        "display" : "COVID-19, D614, recomb, preS dTM, AS03 adjuvant add, PF, 10mcg/0.5mL"
      },
      {
        "code" : "227",
        "display" : "COVID-19, mRNA, LNP-S, PF, pediatric 50 mcg/0.5 mL dose"
      },
      {
        "code" : "228",
        "display" : "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose"
      },
      {
        "code" : "229",
        "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose"
      },
      {
        "code" : "230",
        "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 10 mcg/0.2 mL"
      },
      {
        "code" : "300",
        "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 30 mcg/0.3 mL dose"
      },
      {
        "code" : "301",
        "display" : "COVID-19, mRNA, LNP-S, bivalent booster, PF, 10 mcg/0.2 mL dose"
      },
      {
        "code" : "302",
        "display" : "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose"
      },
      {
        "code" : "500",
        "display" : "COVID-19 Non-US Vaccine, Product Unknown"
      },
      {
        "code" : "501",
        "display" : "COVID-19 IV Non-US Vaccine (QAZCOVID-IN)"
      },
      {
        "code" : "502",
        "display" : "COVID-19 IV Non-US Vaccine (COVAXIN)"
      },
      {
        "code" : "503",
        "display" : "COVID-19 LAV Non-US Vaccine (COVIVAC)"
      },
      {
        "code" : "504",
        "display" : "COVID-19 VVnr Non-US Vaccine (Sputnik Light)"
      },
      {
        "code" : "505",
        "display" : "COVID-19 VVnr Non-US Vaccine (Sputnik V)"
      },
      {
        "code" : "506",
        "display" : "COVID-19 VVnr Non-US Vaccine (CanSino Biological Inc./Beijing Institute of Biotechnology)"
      },
      {
        "code" : "507",
        "display" : "COVID-19 PS Non-US Vaccine (Anhui Zhifei Longcom Biopharm + Inst of Micro, Chinese Acad of Sciences)"
      },
      {
        "code" : "508",
        "display" : "COVID-19 PS Non-US Vaccine (Jiangsu Province Centers for Disease Control and Prevention)"
      },
      {
        "code" : "509",
        "display" : "COVID-19 PS Non-US Vaccine (EpiVacCorona)"
      },
      {
        "code" : "510",
        "display" : "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)"
      },
      {
        "code" : "511",
        "display" : "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)"
      },
      {
        "code" : "512",
        "display" : "SARS-COV-2 COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)"
      },
      {
        "code" : "513",
        "display" : "SARS-COV-2 COVID-19 PS Non-US Vaccine (Anhui Zhifei Longcom, Zifivax)"
      },
      {
        "code" : "514",
        "display" : "SARS-COV-2 COVID-19 DNA Non-US Vaccine (Zydus Cadila, ZyCoV-D)"
      },
      {
        "code" : "515",
        "display" : "SARS-COV-2 COVID-19 PS Non-US Vaccine (Medigen, MVC-COV1901)"
      },
      {
        "code" : "516",
        "display" : "COV-2 COVID-19 Inactivated Non-US Vaccine Product (Minhai Biotechnology Co, KCONVAC)"
      },
      {
        "code" : "517",
        "display" : "SARS-COV-2 COVID-19 PS Non-US Vaccine (Biological E Limited, Corbevax)"
      },
      {
        "code" : "518",
        "display" : "COVID-19 Inactivated, Non-US Vaccine (VLA2001, Valneva)"
      },
      {
        "code" : "519",
        "display" : "COVID-19 mRNA, bivalent, original/Omicron BA.1, Non-US Vaccine (Spikevax Bivalent), Moderna"
      },
      {
        "code" : "520",
        "display" : "COVID-19 mRNA, bivalent, original/Omicron BA.1, Non-US Vaccine Product, Pfizer-BioNTech"
      }]
    }]
  }
}

```
