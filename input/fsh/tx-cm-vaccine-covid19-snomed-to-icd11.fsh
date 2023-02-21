
Instance: vaccine-covid19-snomed-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "VaccineCovid19SnomedToIcd11ConceptMap"
* title = "Vaccine - COVID-19 - Mapping SNOMED to ICD-11"
* description = "[Vaccine - COVID-19 - SNOMED CT](ValueSet-vaccine-covid19-snomed.html) mapped to ICD-11"
* status = #draft
* date = "2023-02-20"
// * publisher = "TBD"
// * url = "https://github.com/ddcc/TBD"
// * version = "TBD"
// * contact.name = "TBD"
// * contact.telecom.system = 
// * contact.telecom.value = 
// * jurisdiction =

* copyright = "TODO: provide copyright information"

* group[+]
  * source = "http://snomed.info/sct"
  * target = "http://id.who.int/icd11/mms"
  * element[+]
    * code = #1031000172108
    * display = "COVID-19 mRNA vaccine (BNT162b2) of Pfizer-BioNTech"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #equivalent

  * element[+]
    * code = #10871000172106
    * display = "COVID-19 mRNA vaccine (mRNA-1273) of Moderna"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #equivalent

  * element[+]
    * code = #10891000172107
    * display = "COVID-19 viral vector vaccine (AZD1222 (ChAdOx1-S recombinant)) of AstraZeneca, Oxford"
    * target[+]
      * code = #XM4YL8
      * display = "COVID-19 Vaccine AstraZeneca"
      * equivalence = #equivalent

  * element[+]
    * code = #10901000172106
    * display = "COVID-19 viral vector vaccine (JNJ-78436735( Ad26.COV2-S recombinant)) of Johnson and Johnson, Janssens"
    * target[+]
      * code = #XM6QV1
      * display = "COVID-19 Vaccine Janssen"
      * equivalence = #equivalent

  * element[+]
    * code = #125071000220108
    * display = "COVID-19 mRNA Vaccine Pfizer-BioNTech 10 micrograms/dose concentrate for dispersion for injection"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #125081000220106
    * display = "COVID-19 mRNA Vaccine Ready to Use Pfizer-BioNTech 30 micrograms/ 0.3 milliliter dose dispersion for injection"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #125091000220109
    * display = "COVID-19 mRNA Ready to Use Adapted BA.1 Vaccine Pfizer-BioNTech 15 / 15 micrograms/ 0.3 milliliter dose dispersion for injection"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #125101000220104
    * display = "COVID-19 mRNA Ready to Use Adapted BA.4 and BA.5 Vaccine Pfizer-BioNTech 15 / 15 micrograms/ 0.3 milliliter dose dispersion for injection"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #125111000220101
    * display = "COVID-19 mRNA Adapted BA.1 Vaccine Moderna (50 micrograms/50 micrograms) / milliliter dispersion for injection"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #125121000220108
    * display = "COVID-19 mRNA Adapted BA.4 nd BA.5 Vaccine Moderna (50 micrograms/50 micrograms) / milliliter dispersion for injection"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #1401000220108
    * display = "COVID-19 Vaccine AstraZeneca 5 x10,000,000,000 viral particles/per 0.5ml dose for injection multidose vials"
    * target[+]
      * code = #XM4YL8
      * display = "COVID-19 Vaccine AstraZeneca"
      * equivalence = #wider

  * element[+]
    * code = #1411000220106
    * display = "COVID-19 mRNA Vaccine Pfizer-BioNTech 30 micrograms per 0.3ml dose concentrate for suspension for injection multidose vials"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #1421000220104
    * display = "COVID-19 mRNA Vaccine Moderna 0.1mg per 0.5mL dose dispersion for injection multidose vials"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #28571000087109
    * display = "COVID-19 SPIKEVAX 0.20 mg/mL mRNA Mod"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #28581000087106
    * display = "COVID-19 COMIRNATY 30 mcg/0.3 ml mRNA PB"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #28761000087108
    * display = "COVID-19 VAXZEVRIA AZC"
    * target[+]
      * code = #XM4YL8
      * display = "COVID-19 Vaccine AstraZeneca"
      * equivalence = #equivalent

  * element[+]
    * code = #28951000087107
    * display = "COVID-19 JANSSEN COVID-19 VACCINE Jan"
    * target[+]
      * code = #XM6QV1
      * display = "COVID-19 Vaccine Janssen"
      * equivalence = #equivalent

  * element[+]
    * code = #28961000087105
    * display = "COVID-19 COVISHIELD VP"
    * target[+]
      * code = #XM97T2
      * display = "Covishield®"
      * equivalence = #equivalent

  * element[+]
    * code = #29171000087106
    * display = "COVID-19 NUVAXOVID NOV"
    * target[+]
      * code = #XM5JC5
      * display = "COVID-19 vaccine, virus protein subunit"
      * equivalence = #wider

  * element[+]
    * code = #30151000087105
    * display = "COVID-19 COVIFENZ VLP MED"
    * target[+]
      * code = #XM3CT4
      * display = "Recombinant SARS-CoV-2 vaccine"
      * equivalence = #wider

  * element[+]
    * code = #31301000087101
    * display = "COVID-19 SINOPHARM-BIBP"
    * target[+]
      * code = #XM8866
      * display = "BBIBP-CorV"
      * equivalence = #equivalent

  * element[+]
    * code = #31311000087104
    * display = "COVID-19 CoronaVac"
    * target[+]
      * code = #XM7HT3
      * display = "CoronaVac®"
      * equivalence = #equivalent

  * element[+]
    * code = #31341000087103
    * display = "COVID-19 Sputnik V"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #equivalent

  * element[+]
    * code = #31431000087100
    * display = "COVID-19 Convidecia"
    * target[+]
      * code = #XM1AG7
      * display = "Convidecia"
      * equivalence = #equivalent

  * element[+]
    * code = #33201000087108
    * display = "COVID-19 SINOPHARM-WIBP"
    * target[+]
      * code = #XM1AU2
      * display = "Sinopharm WIBP-CorV"
      * equivalence = #equivalent

  * element[+]
    * code = #33211000087105
    * display = "COVID-19 COVAXIN"
    * target[+]
      * code = #XM1G90
      * display = "Covaxin"
      * equivalence = #equivalent

  * element[+]
    * code = #33221000087102
    * display = "COVID-19 mRNA CureVac"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #equivalent

  * element[+]
    * code = #33361000087101
    * display = "COVID-19 COMIRNATY pediatric 10 mcg/0.2 ml mRNA PB"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #33391000087109
    * display = "COVID-19 Abdala"
    * target[+]
      * code = #XM5JC5
      * display = "COVID-19 vaccine, virus protein subunit"
      * equivalence = #wider

  * element[+]
    * code = #33401000087107
    * display = "COVID-19 COVIran Barekat"
    * target[+]
      * code = #XM2YG8
      * display = "COVIran Barakat"
      * equivalence = #equivalent

  * element[+]
    * code = #33411000087109
    * display = "COVID-19 CoviVac"
    * target[+]
      * code = #XM85P5
      * display = "Covi-Vac"
      * equivalence = #equivalent

  * element[+]
    * code = #33421000087101
    * display = "COVID-19 EpiVacCorona"
    * target[+]
      * code = #XM6SZ8
      * display = "EpiVacCorona"
      * equivalence = #equivalent

  * element[+]
    * code = #33431000087104
    * display = "COVID-19 KCONVAC"
    * target[+]
      * code = #XM9TQ1
      * display = "KCONVAC"
      * equivalence = #equivalent

  * element[+]
    * code = #33441000087105
    * display = "COVID-19 Medgen-Dynavax-NIAID"
    * target[+]
      * code = #XM3CT4
      * display = "Recombinant SARS-CoV-2 vaccine"
      * equivalence = #wider

  * element[+]
    * code = #33451000087108
    * display = "COVID-19 QazCovid-in"
    * target[+]
      * code = #XM1NL1
      * display = "COVID-19 vaccine, inactivated virus"
      * equivalence = #wider

  * element[+]
    * code = #33461000087106
    * display = "COVID-19 Sputnik Light"
    * target[+]
      * code = #XM5QM6
      * display = "Sputnik-Light"
      * equivalence = #equivalent

  * element[+]
    * code = #33471000087102
    * display = "COVID-19 ZIFIVAX"
    * target[+]
      * code = #XM5JC5
      * display = "COVID-19 vaccine, virus protein subunit"
      * equivalence = #wider

  * element[+]
    * code = #33581000087104
    * display = "COVID-19 pediatric mRNA unspecified"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #wider

  * element[+]
    * code = #33881000087102
    * display = "COVID-19 COMIRNATY tris-sucrose 30 mcg/0.3 ml mRNA PB"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #34591000087100
    * display = "COVID-19 Soberana 02"
    * target[+]
      * code = #XM3PG0
      * display = "Soberana-02"
      * equivalence = #equivalent

  * element[+]
    * code = #34601000087108
    * display = "COVID-19 SpikoGen"
    * target[+]
      * code = #XM9P21
      * display = "SpikoGen"
      * equivalence = #equivalent

  * element[+]
    * code = #34611000087105
    * display = "COVID-19 COMIRNATY pediatric 3 mcg/0.2 ml mRNA PB"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #34921000087108
    * display = "COVID-19 COVOVAX"
    * target[+]
      * code = #XM9T65
      * display = "Novavax COVID-19 vaccine"
      * equivalence = #equivalent

  * element[+]
    * code = #35651000087105
    * display = "COVID-19 SPIKEVAX 0.10 mg/mL mRNA Mod"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #37311000087109
    * display = "COVID-19 SPIKEVAX Bivalent (Original / Omicron BA.1) 0.10 mg/mL mRNA Mod"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #37651000087101
    * display = "COVID-19 SPIKEVAX Bivalent (Original / Omicron BA.4/BA.5) 0.10 mg/mL mRNA Mod"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #384671000221101
    * display = "SINOPHARM - BIBP vacuna COVID-19 [SARS-COV-2 (cÃ©lulas Vero) inactivado 1 dosis/0,5 ml] suspensiÃ³n inyectable, vial de 0,5 ml (1 dosis), Sinopharm - Beijing Institute"
    * target[+]
      * code = #XM8866
      * display = "BBIBP-CorV"
      * equivalence = #wider

  * element[+]
    * code = #399651000221108
    * display = "vacuna COVID-19 virus entero inactivado 1 dosis/0,5 ml, suspensiÃ³n inyectable, vial de 0,5 ml (1 dosis)"
    * target[+]
      * code = #XM1NL1
      * display = "COVID-19 vaccine, inactivated virus"
      * equivalence = #wider

  * element[+]
    * code = #399661000221105
    * display = "vacuna COVID-19 vector no replicante adenovirus de chimpancÃ© 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 5 ml (10 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #399681000221103
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 5 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 3 ml (5 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #399691000221100
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 26 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 3 ml (5 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #399701000221100
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 26 1 dosis/0,5 ml, suspensiÃ³n inyectable, vial de 3 ml (5 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #399771000221108
    * display = "COVISHIELD vacuna COVID-19 [ChAdOx1 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 5 ml (10 dosis), Serum Institute of India"
    * target[+]
      * code = #XM97T2
      * display = "Covishield®"
      * equivalence = #wider

  * element[+]
    * code = #399781000221106
    * display = "VAXZEVRIA vacuna COVID-19 [ChAdOx1 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 5 ml (10 dosis), Astrazeneca"
    * target[+]
      * code = #XM4YL8
      * display = "COVID-19 Vaccine AstraZeneca"
      * equivalence = #wider

  * element[+]
    * code = #399801000221105
    * display = "SPUTNIK V vacuna COVID-19 componente I [rAd 26 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 3 ml (5 dosis), Instituto Gamaleya"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #399811000221108
    * display = "SPUTNIK V vacuna COVID-19 componente II [rAd 5 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 3 ml (5 dosis), Instituto Gamaleya"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #399821000221103
    * display = "JANSSEN vacuna COVID-19 [rAd 26 SARS-CoV-2 S 1 dosis/0,5 ml] suspensiÃ³n inyectable, vial de 3 ml (5 dosis), Janssen"
    * target[+]
      * code = #XM6QV1
      * display = "COVID-19 Vaccine Janssen"
      * equivalence = #equivalent

  * element[+]
    * code = #399861000221106
    * display = "vacuna COVID-19 ARNm 100 mcg/ml, suspensiÃ³n inyectable, vial de 5,5 ml (10 dosis de 0,5 ml)"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #wider

  * element[+]
    * code = #399871000221102
    * display = "vacuna COVID-19 ARNm 100 mcg/ml, suspensiÃ³n inyectable, vial de 7,5 ml (15 dosis de 0,5 ml)"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #wider

  * element[+]
    * code = #399881000221104
    * display = "vacuna COVID-19 ARNm 30 mcg/0,3 ml, suspensiÃ³n inyectable, vial de 0,45 ml (6 dosis de 0,3 ml luego de diluciÃ³n)"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #wider

  * element[+]
    * code = #399891000221101
    * display = "SPIKEVAX vacuna COVID-19 [SARS-CoV-2 S ARNm 100 mcg/0,5 ml] suspensiÃ³n inyectable, vial de 5.5 ml (10 dosis), Moderna"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #399901000221102
    * display = "SPIKEVAX vacuna COVID-19 [SARS-CoV-2 S ARNm 100 mcg/0,5 ml] suspensiÃ³n inyectable, vial de 7,5 ml (15 dosis de 0,5 ml), Moderna"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #wider

  * element[+]
    * code = #399911000221104
    * display = "COMIRNATY vacuna COVID-19 [SARS-CoV-2 S ARNm 30 mcg/0,3 ml] suspensiÃ³n inyectable, vial de 0,45 ml (6 dosis de 0,3 ml luego de diluciÃ³n), Pfizer"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #wider

  * element[+]
    * code = #424531000221101
    * display = "vacuna COVID-19 virus entero inactivado 1 dosis/0,5 ml, suspensiÃ³n inyectable"
    * target[+]
      * code = #XM1NL1
      * display = "COVID-19 vaccine, inactivated virus"
      * equivalence = #wider

  * element[+]
    * code = #424541000221108
    * display = "vacuna COVID-19 virus entero inactivado 1 dosis/0,5 ml, suspensiÃ³n inyectable, vial de 1 ml (2 dosis)"
    * target[+]
      * code = #XM1NL1
      * display = "COVID-19 vaccine, inactivated virus"
      * equivalence = #wider

  * element[+]
    * code = #424551000221105
    * display = "SINOPHARM - BIBP vacuna COVID-19 [SARS-COV-2 (cÃ©lulas Vero) inactivado 1 dosis/0,5 ml] suspensiÃ³n inyectable, vial de 1 ml (2 dosis), Sinopharm - Beijing Institute"
    * target[+]
      * code = #XM8866
      * display = "BBIBP-CorV"
      * equivalence = #wider

  * element[+]
    * code = #424561000221107
    * display = "vacuna COVID-19 vector no replicante adenovirus de chimpancÃ© 1 dosis/0,5 ml, soluciÃ³n inyectable"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424571000221103
    * display = "VAXZEVRIA vacuna COVID-19 vector viral no replicante"
    * target[+]
      * code = #XM4YL8
      * display = "COVID-19 Vaccine AstraZeneca"
      * equivalence = #equivalent

  * element[+]
    * code = #424581000221100
    * display = "COVISHIELD vacuna COVID-19 vector viral no replicante"
    * target[+]
      * code = #XM97T2
      * display = "Covishield®"
      * equivalence = #equivalent

  * element[+]
    * code = #424591000221102
    * display = "JANSSEN vacuna COVID-19 vector viral no replicante"
    * target[+]
      * code = #XM6QV1
      * display = "COVID-19 Vaccine Janssen"
      * equivalence = #equivalent

  * element[+]
    * code = #424601000221107
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 26 1 dosis/0,5 ml, suspensiÃ³n inyectable"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424611000221105
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 26 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 0,5 ml (1 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424621000221100
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 26 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 1 ml (2 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424631000221102
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 26 1 dosis/0,5 ml, soluciÃ³n inyectable"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424641000221109
    * display = "SPUTNIK V vacuna COVID-19 componente I [rAd 26 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 0,5 ml (1 dosis), Instituto Gamaleya"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #424651000221106
    * display = "SPUTNIK V vacuna COVID-19 componente I [rAd 26 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 1 ml (2 dosis), Instituto Gamaleya"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #424661000221108
    * display = "SPUTNIK V vacuna COVID-19 componente II [rAd 5 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 1 ml (2 dosis), Instituto Gamaleya"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #424671000221104
    * display = "SPUTNIK V vacuna COVID-19 componente II [rAd 5 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 0,5 ml (1 dosis), Instituto Gamaleya"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #424681000221101
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 5 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 1 ml (2 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424691000221103
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 5 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 0,5 ml (1 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424701000221103
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 5 1 dosis/0,5 ml, soluciÃ³n inyectable"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424711000221100
    * display = "SPUTNIK V vacuna COVID-19 vector viral no replicante"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #equivalent

  * element[+]
    * code = #424721000221105
    * display = "vacuna COVID-19 ARNm 100 mcg/0,5 ml, suspensiÃ³n inyectable"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #wider

  * element[+]
    * code = #424731000221108
    * display = "SPIKEVAX vacuna COVID-19 ARNm"
    * target[+]
      * code = #XM3DT5
      * display = "COVID-19 Vaccine Moderna"
      * equivalence = #equivalent

  * element[+]
    * code = #424741000221101
    * display = "vacuna COVID-19 ARNm 30 mcg/0,3 ml, suspensiÃ³n inyectable"
    * target[+]
      * code = #XM0GQ8
      * display = "COVID-19 vaccine, RNA based"
      * equivalence = #wider

  * element[+]
    * code = #424751000221104
    * display = "COMIRNATY vacuna COVID-19 ARNm"
    * target[+]
      * code = #XM8NQ0
      * display = "Comirnaty"
      * equivalence = #equivalent

  * element[+]
    * code = #424781000221109
    * display = "CONVIDECIA vacuna COVID-19 [rAd 5 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 0,5 ml, (1 dosis), Cansino"
    * target[+]
      * code = #XM1AG7
      * display = "Convidecia"
      * equivalence = #wider

  * element[+]
    * code = #424791000221107
    * display = "CONVIDECIA vacuna COVID-19 [rAd 5 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 1,5 ml (3 dosis), Cansino"
    * target[+]
      * code = #XM1AG7
      * display = "Convidecia"
      * equivalence = #wider

  * element[+]
    * code = #424801000221108
    * display = "vacuna COVID-19 vector no replicante Adenovirus humano 5 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 1,5 ml (3 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #424821000221101
    * display = "SPUTNIK LIGTH vacuna COVID-19 vector viral no replicante"
    * target[+]
      * code = #XM5QM6
      * display = "Sputnik-Light"
      * equivalence = #equivalent

  * element[+]
    * code = #424831000221103
    * display = "NOVAVAX vacuna COVID-19 proteÃ­na de espiga recombinante"
    * target[+]
      * code = #XM9T65
      * display = "Novavax COVID-19 vaccine"
      * equivalence = #equivalent

  * element[+]
    * code = #424971000221108
    * display = "ZYDUS CADILA vacuna COVID-19 ADN"
    * target[+]
      * code = #XM52P3
      * display = "ZvCov-D"
      * equivalence = #equivalent

  * element[+]
    * code = #425001000221100
    * display = "SPUTNIK V componente I vacuna COVID-19 vector viral no replicante rAd 26"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #425011000221102
    * display = "SPUTNIK V componente II vacuna COVID-19 vector viral no replicante rAd 5"
    * target[+]
      * code = #XM5ZJ4
      * display = "Gam-Covid-Vac"
      * equivalence = #wider

  * element[+]
    * code = #425031000221105
    * display = "VAXZEVRIA vacuna COVID-19 [ChAdOx1 SARS-CoV-2 S 1 dosis/0,5 ml] soluciÃ³n inyectable, vial de 4 ml (8 dosis), Astrazeneca"
    * target[+]
      * code = #XM4YL8
      * display = "COVID-19 Vaccine AstraZeneca"
      * equivalence = #wider

  * element[+]
    * code = #425051000221101
    * display = "vacuna que contiene vector adenovirus de chimpancÃ© no replicante que codifica proteÃ­na de espiga de SARS-CoV-2 1 dosis/0,5 ml, soluciÃ³n inyectable, vial de 4 ml (8 dosis)"
    * target[+]
      * code = #XM9QW8
      * display = "COVID-19 vaccine, non-replicating viral vector"
      * equivalence = #wider

  * element[+]
    * code = #62051000220105
    * display = "Janssen COVID-19 Vaccine 0.5 millilitre suspension injection Janssen Inc"
    * target[+]
      * code = #XM6QV1
      * display = "COVID-19 Vaccine Janssen"
      * equivalence = #wider

