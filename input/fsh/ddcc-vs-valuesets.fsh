Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct
Alias: $CVX = http://hl7.org/fhir/sid/cvx
Alias: $DIVOC = http://smart.who.int/ddcc/DIVOC
Alias: $EUDCC = https://ec.europa.eu/health/documents/community-register/html/
Alias: $ICAOV1 = http://smart.who.int/ddcc/ICAOV1


ValueSet:      WHODDCCVaccinesCOVID19
Title:	       "WHO Vaccine List (COVID-19)"
Description:   """
WHO Vaccine List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#XM68M6 "COVID-19 vaccine"

* include $ICD11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $ICD11#XM7HT3 "CoronaVac®"
* include $ICD11#XM8866 "BBIBP-CorV"
* include $ICD11#XM9TQ1 "KCONVAC"
* include $ICD11#XM1G90 "Covaxin"
* include $ICD11#XM85P5 "Covi-Vac"
* include $ICD11#XM9FQ7 "Hayat-Vax"
* include $ICD11#XM97N6 "QazVac"
* include $ICD11#XM2YG8 "COVIran Barakat"
* include $ICD11#XM3U61 "Inactivated SARS-CoV-2 vaccine"

* include $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"

* include $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $ICD11#XM4YL8 "COVID-19 Vaccine AstraZeneca"
* include $ICD11#XM97T2 "Covishield®"
* include $ICD11#XM6QV1 "COVID-19 Vaccine Janssen"
* include $ICD11#XM1AG7 "Convidecia"
* include $ICD11#XM5ZJ4 "Gam-Covid-Vac"
* include $ICD11#XM5QM6 "Sputnik-Light"

* include $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"

* include $ICD11#XM5JC5 "COVID-19 vaccine, virus protein subunit"
* include $ICD11#XM3CT4 "Recombinant SARS-CoV-2 vaccine"
* include $ICD11#XM3PG0 "Soberana-02"
* include $ICD11#XM4EC8 "MVC-COV1901"
* include $ICD11#XM6SZ8 "EpiVacCorona"

* include $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"

* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $ICD11#XM52P3 "ZyCov-D"

* include $ICD11#XM0GQ8 "COVID-19 vaccine, RNA based"
* include $ICD11#XM8NQ0 "Comirnaty®"
* include $ICD11#XM3DT5 "COVID-19 Vaccine Moderna"

ValueSet:      WHODDCCBrandsCOVID19
Title:	       "WHO DDCC Brand List (COVID-19)"
Description:   """
WHO DDCC Brand List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft

* include $ICD11#XM7HT3 "CoronaVac®"
* include $ICD11#XM8866 "BBIBP-CorV"
* include $ICD11#XM9TQ1 "KCONVAC"
* include $ICD11#XM1G90 "Covaxin"
* include $ICD11#XM85P5 "Covi-Vac"
* include $ICD11#XM9FQ7 "Hayat-Vax"
* include $ICD11#XM97N6 "QazVac"
* include $ICD11#XM2YG8 "COVIran Barakat"

* include $ICD11#XM4YL8 "AstraZeneca"
* include $ICD11#XM97T2 "Covishield®"
* include $ICD11#XM6QV1 "Janssen"
* include $ICD11#XM1AG7 "Convidecia"
* include $ICD11#XM5ZJ4 "Gam-Covid-Vac"
* include $ICD11#XM5QM6 "Sputnik-Light"

* include $ICD11#XM3PG0 "Soberana-02"
* include $ICD11#XM4EC8 "MVC-COV1901"
* include $ICD11#XM6SZ8 "EpiVacCorona"

* include $ICD11#XM52P3 "ZyCov-D"

* include $ICD11#XM8NQ0 "Comirnaty®"
* include $ICD11#XM3DT5 "Moderna"



CodeSystem:     DDCCICD11CodeSystem
Title:          "DDCC Codes for ICD11"
Description:    "ICD11 codes for DDCC so the FHIR server can perform expansions."
* ^experimental = false
* ^caseSensitive = true
* ^url = $ICD11

* #1334426561 "Viral nucleic acid amplification test or NAAT"
* #2056159157 "Rapid immunoassay detecting viral proteins or Ag-RDT"
* #JAM.AH.XF  "Nasopharyngeal swab"
* #KAR.AH.XF "Oropharyngeal swab"
* #JAE.AH.XF "Swab from nasal sinus"
* #KAZ.AH.XD "Saliva specimen"
* #DIA.AH.XA "Blood specimen"
* #RA01   "COVID-19 Disease"

* #XM68M6 "COVID-19 vaccines"

* #XM1NL1 "COVID-19 vaccine, inactivated virus"
* #XM7HT3 "CoronaVac®"
* #XM8866 "BBIBP-CorV"
* #XM9TQ1 "KCONVAC"
* #XM1G90 "Covaxin"
* #XM85P5 "Covi-Vac"
* #XM9FQ7 "Hayat-Vax"
* #XM97N6 "QazVac"
* #XM2YG8 "COVIran Barakat"
* #XM3U61 "Inactivated SARS-CoV-2 vaccine"

* #XM5DF6 "COVID-19 vaccine, live attenuated virus"

* #XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* #XM4YL8 "COVID-19 Vaccine AstraZeneca"
* #XM97T2 "Covishield®"
* #XM6QV1 "COVID-19 Vaccine Janssen"
* #XM1AG7 "Convidecia"
* #XM5ZJ4 "Gam-Covid-Vac"
* #XM5QM6 "Sputnik-Light"

* #XM0CX4 "COVID-19 vaccine, replicating viral vector"

* #XM5JC5 "COVID-19 vaccine, virus protein subunit"
* #XM3CT4 "Recombinant SARS-CoV-2 vaccine"
* #XM3PG0 "Soberana-02"
* #XM4EC8 "MVC-COV1901"
* #XM6SZ8 "EpiVacCorona"

* #XM6AT1 "COVID-19 vaccine, DNA based"
* #XM52P3 "ZyCov-D"

* #XM0GQ8 "COVID-19 vaccine, RNA based"
* #XM8NQ0 "Comirnaty®"
* #XM3DT5 "COVID-19 Vaccine Moderna"

* #XN109 "SARS-CoV-2"
* #XN0HL "SARS-CoV-2 Alpha"
* #XN4Q7 "SARS-CoV-2 Beta"
* #XN5BQ "SARS-CoV-2 Gamma"
* #XN8V6 "SARS-CoV-2 Delta"
* #XN1GK "SARS-CoV-2 Epsilon"
* #XN3ZE "SARS-CoV-2 Zeta"
* #XN2V4 "SARS-CoV-2 Eta"
* #XN4Q1 "SARS-CoV-2 Theta"
* #XN3UD "SARS-CoV-2 Iota"
* #XN9L8 "SARS-CoV-2 Kappa"
* #XN6AM "SARS-CoV-2 Lambda"
* #XN39J "SARS-CoV-2 Mu"
* #XN161 "SARS-CoV-2 Omicron"

* #MG71 "Abnormal laboratory results, not elsewhere classified"
* #RA01.0 "COVID-19, virus identified"
* #RA01.1 "COVID-19, virus not identified"
* #QA02 "Medical observation or evaluation for suspected diseases or conditions, ruled out"
* #XM1AU2 "Sinopharm WIBP-CorV"
* #XM1J92 "COVID-19 vaccine, virus like particle"
* #XM3SK8 "EpiVacCorona-N"
* #XM9N08 "Razi COV PARS"
* #XM9P21 "SpikoGen"
* #XM9T65 "Novavax COVID-19 vaccine"
* #XM0K39 "Covidful"
* #XM0RV9 "Soberana Plus"


ValueSet:      WHODDCCDiseaseTargetedCOVID19
Title:	       "WHO Disease or Agent Targeted (COVID-19)"
Description:   """
WHO Disease or Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#RA01 "COVID-19"


CodeSystem:     DIVOCCodeSystem
Title:          "COVID-19 Vaccine Codes for DIVOC"
Description:    "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions."
* ^experimental = false
* ^caseSensitive = true
* ^url = $DIVOC

* #DIVOC001 "Zycov-D"
* #DIVOC002 "Covaxin"
* #DIVOC003 "Covishield"
* #DIVOC004 "Sputnik V"
* #DIVOC005 "Pfizer-BioNTech or Comirnaty"
* #DIVOC006 "Janssen"
* #DIVOC007 "Moderna or Modema or Spikevax"
* #DIVOC008 "AstraZeneca or Vaxzevria"
* #DIVOC009 "Sinovac or Coronavac"
* #DIVOC010 "BBIBP- CorV or Sinopharm"
* #DIVOC011 "Convidecia"
* #DIVOC012 "Corbevax"
* #DIVOC013 "Novavax/Covovax NVX - CoV2373"

ValueSet:       DIVOCValueSet
Title:          "COVID-19 Vaccine Codes for DIVOC"
Description:    "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions."
* ^status = #draft
* include codes from system DIVOCCodeSystem

CodeSystem:     ICAOV1CodeSystem
Title:          "DDCC Codes for ICAO Vaccines"
Description:    "ICAO vaccines codes for DDCC so the FHIR server can perform expansions."
* ^experimental = false
* ^caseSensitive = true
* ^url = $ICAOV1
* #ICAO001 "Comirnaty"
* #ICAO002 "Tozinameran"
* #ICAO003 "Pfizer-BioNTech COVID-19 vaccine BNT162b2"
* #ICAO004 "3 LNP-mRNAS"
* #ICAO005 "Tozinameran (INN)"
* #ICAO006 "BNT162b2/COMIRNATY"
* #ICAO007 "Pfizer BioNTech-Comirnaty"
* #ICAO008 "BNT162"
* #ICAO009 "COVID-19 Vaccine Moderna"
* #ICAO010 "COVID-19 mRNA Vaccine Moderna mRNA-1273"
* #ICAO011 "Spikevax"
* #ICAO012 "Moderna-Spikevax"
* #ICAO013 "ZyCov-D"
* #ICAO014 "Zydus-ZyCov-D"
* #ICAO015 "Recombinant SARS-CoV-2 vaccine"
* #ICAO016 "Anhui ZL - Recombinant"
* #ICAO017 "Adjuvanted recombinant protein (RBD-DIMER)"
* #ICAO018 "ZF2001"
* #ICAO019 "ZF-UZ-VAC 2001"
* #ICAO020 "Soberana-02"
* #ICAO021 "Finlay - Soberana-02"
* #ICAO022 "RRBD produced in CHO-cell chemically conjugated to tetanus toxoid"
* #ICAO023 "FINLAY-FR2"
* #ICAO024 "PASTUCOVAC"
* #ICAO025 "MVC-COV1901"
* #ICAO026 "Medigen-MVC-COV1901"
* #ICAO027 "MVC COVID-19 vaccine"
* #ICAO028 "EpiVacCorona"
* #ICAO029 "SRCVB-EpiVacCorona"
* #ICAO030 "Soberana Plus"
* #ICAO031 "Finlay-Soberana Plus"
* #ICAO032 "EpiVacCorona-N"
* #ICAO033 "SRCVB-EpiVacCorona-N"
* #ICAO034 "SpikoGen"
* #ICAO035 "Vaxine-SpikoGen"
* #ICAO036 "COVAX-19"
* #ICAO037 "Novavax COVID-19 vaccine"
* #ICAO038 "Novavax-Covovax"
* #ICAO039 "Nuvaxovid"
* #ICAO040 "NVX-CoV2373"
* #ICAO041 "Covovax"
* #ICAO042 "Razi COV PARS"
* #ICAO043 "COVID-19 Vaccine AstraZeneca"
* #ICAO044 "Vaxzevria"
* #ICAO045 "COVID-19 Vaccine AstraZeneca AZD1222"
* #ICAO046 "COVID-19 Vaccine AstraZeneca ChAdOx1 nCoV-19"
* #ICAO047 "COVID-19 Vaccine AstraZeneca ChAdOx1-S"
* #ICAO048 "AstraZeneca-Vaxzevria"
* #ICAO049 "R-Covi"
* #ICAO050 "Covishield"
* #ICAO051 "Covishield AZD1222"
* #ICAO052 "Covishield ChAdOx1 nCoV-19"
* #ICAO053 "Covishield ChAdOx1-S"
* #ICAO054 "SII-Covishield"
* #ICAO055 "COVID-19 Vaccine Janssen"
* #ICAO056 "Ad26.COV 2.S"
* #ICAO057 "Johnson & Johnson COVID-19 vaccine"
* #ICAO058 "Janssen - Ad26.COV 2-S"
* #ICAO059 "Convidecia"
* #ICAO060 "CanSino-Convidecia"
* #ICAO061 "Ad5-nCOV"
* #ICAO062 "Gam-Covid-Vac"
* #ICAO063 "Gamaleya-Gam-Covid-Vac"
* #ICAO064 "Sputnik-V"
* #ICAO065 "Gam-KOVID-Vak"
* #ICAO066 "Sputnik-Light"
* #ICAO067 "Gamaleya-Sputnik-Light"
* #ICAO068 "CoronaVac"
* #ICAO069 "Sinovac COVID-19 Vaccine"
* #ICAO070 "PICOVACC"
* #ICAO071 "BBIBP-CorV"
* #ICAO072 "Sinopharm BBIBP-CorV"
* #ICAO073 "Sinopharm COVID-19 vaccine"
* #ICAO074 "Beijing CNBG - BBIBP-CorV"
* #ICAO075 "COVID-19 Vaccine BIBP"
* #ICAO076 "KCONVAC"
* #ICAO077 "Beijing Minhai-KCONVAC"
* #ICAO078 "Inactivated SARS-COV-2 vaccine, Vero cell"
* #ICAO079 "Covaxin"
* #ICAO080 "Bharat-Covaxin"
* #ICAO081 "BBV152"
* #ICAO082 "Covi-Vac"
* #ICAO083 "Chumakov-Covi-Vac"
* #ICAO084 "CoviVac"
* #ICAO085 "Hayat-Vax"
* #ICAO086 "Julphar-Hayat-Vax"
* #ICAO087 "QazVac"
* #ICAO088 "RIBSP-QazVac"
* #ICAO089 "QazCovid-in"
* #ICAO090 "COVIran Barakat"
* #ICAO091 "Shifa-COVIran Barakat"
* #ICAO092 "Covidful"
* #ICAO093 "IMB-inactivated"
* #ICAO094 "IMB-Covidful"
* #ICAO095 "Sinopharm WIBP-CorV"
* #ICAO096 "WIBP-CorV"
* #ICAO097 "Wuhan CNBG-Inactivated"

ValueSet:     ICAOV1ValueSet
Title:          "DDCC Codes for ICAO Vaccines"
Description:    "ICAO vaccines codes for DDCC so the FHIR server can perform expansions."
* ^status = #draft
* include codes from system ICAOV1CodeSystem


ValueSet:      EUDCCValueSet
Title:	       "EU DCC Allowed Vaccine List (COVID-19)"
Description:   """
EU DCC Allowed Vaccine List (COVID-19).
"""
* ^status = #draft
* ^date = 2022-09-13
* include codes from system WHODDCCeuur


Instance:       who-ddcc-map-icd11-sct-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to SNOMED CT for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-icd11-sct-vaccines"
* name = "ICD11_SNOMED_CT_COVID19_vaccines"
* title = "ConceptMap from ICD-11 to SNOMED CT for Vaccines"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Vaccines"

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #XM68M6
    * target[+]
      * code = #28531000087107
      * equivalence = #equivalent

  * element[+]
    * code = #XM0GQ8
    * target[+]
      * code = #1119349007
      * equivalence = #equivalent

  * element[+]
    * code = #XM1NL1
    * target[+]
      * code = #1157024006
      * equivalence = #equivalent

  * element[+]
    * code = #XM9QW8
    * target[+]
      * code = #29061000087103
      * equivalence = #equivalent


Instance:       who-ddcc-map-icd11-divoc-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to DIVOC for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-icd11-divoc-vaccines"
* name = "ICD11_DIVOC_COVID19_vaccines"
* title = "ConceptMap from ICD-11 to DIVOC for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-22"
* description = "Rule-based mappings between ICD-11 and DIVOC for COVID-19 Vaccines"

* group[+]
  * source = $ICD11
  * target = $DIVOC

  * element[+]
    * code = #XM6AT1
    * target[+]
      * code = #DIVOC001
      * equivalence = #equivalent

  * element[+]
    * code = #XM1NL1
    * target[+]
      * code = #DIVOC002
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC009
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC010
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."

  * element[+]
    * code = #XM9QW8
    * target[+]
      * code = #DIVOC003
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC004
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC008
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC011
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."

  * element[+]
    * code = #XM0GQ8
    * target[+]
      * code = #DIVOC005
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC007
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM0CX4
    * target[+]
      * code = #DIVOC006
      * equivalence = #equivalent

  * element[+]
    * code = #XM5JC5
    * target[+]
      * code = #DIVOC012
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC013
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."

Instance:       who-ddcc-map-divoc-icd11-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from DIVOC to ICD-11 for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-divoc-icd11-vaccines"
* name = "DIVOC_ICD11_COVID19_vaccines"
* title = "ConceptMap from DIVOC to ICD-11 for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-22"
* description = "Rule-based mappings between DIVOC and ICD-11 for COVID-19 Vaccines"

* group[+]
  * source = $DIVOC
  * target = $ICD11

  * element[+]
    * code = #DIVOC001
    * target[+]
      * code = #XM6AT1
      * equivalence = #equivalent

  * element[+]
    * code = #DIVOC002
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #DIVOC003
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC004
    * target[+]
      * code = #XM9QW8
      * equivalence = #equivalent

  * element[+]
    * code = #DIVOC005
    * target[+]
      * code = #XM0GQ8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC006
    * target[+]
      * code = #XM0CX4
      * equivalence = #wider

  * element[+]
    * code = #DIVOC007

    * target[+]
      * code = #XM0GQ8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC008
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC009
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #DIVOC010
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #DIVOC011
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC012
    * target[+]
      * code = #XM5JC5
      * equivalence = #wider
  * element[+]
    * code = #DIVOC013
    * target[+]
      * code = #XM5JC5
      * equivalence = #wider


Instance:       who-ddcc-map-icd11-eudcc-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to EU DCC for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-icd11-eudcc-vaccines"
* name = "ICD11_EU_DCC_COVID19_vaccines"
* title = "ConceptMap from ICD-11 to EU DCC for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-22"
* description = "Rule-based mappings between ICD-11 and EU DCC for COVID-19 Vaccines"

* group[+]
  * source = $ICD11
  * target = $EUDCC

  * element[+]
    * code = #XM0GQ8
    * target[+]
      * code = #EU/1/20/1528
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #EU/1/20/1507
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."

  * element[+]
    * code = #XM9QW8
    * target[+]
      * code = #EU/1/21/1529
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #Covishield
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #Sputnik-V
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #Convidecia
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM0CX4
    * target[+]
      * code = #EU/1/20/1525
      * equivalence = #equivalent

  * element[+]
    * code = #XM1NL1
    * target[+]
      * code = #Covaxin
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #CoronaVac
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #BBIBP-CorV
      * equivalence = #narrower
      * comment = "EU codes are brands and ICD11 is the generic type."

  * element[+]
    * code = #XM5JC5
    * target[+]
      * code = #NVX-CoV2373
      * equivalence = #equivalent

Instance:       who-ddcc-map-eudcc-icd11-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from EU DCC to ICD-11 for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-eudcc-icd11-vaccines"
* name = "EU_DCC_ICD11_COVID19_vaccines"
* title = "ConceptMap from EU DCC to ICD-11 for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-22"
* description = "Rule-based mappings between EU DCC and ICD11 for COVID-19 Vaccines"

* group[+]
  * source = $EUDCC
  * target = $ICD11

  * element[+]
    * code = #Covaxin
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #Covishield
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #Sputnik-V
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #EU/1/20/1528
    * target[+]
      * code = #XM0GQ8
      * equivalence = #wider

  * element[+]
    * code = #EU/1/20/1525
    * target[+]
      * code = #XM0CX4
      * equivalence = #equivalent

  * element[+]
    * code = #EU/1/20/1507
    * target[+]
      * code = #XM0GQ8
      * equivalence = #wider

  * element[+]
    * code = #EU/1/21/1529
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #CoronaVac
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #BBIBP-CorV
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #Convidecia
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #NVX-CoV2373
    * target[+]
      * code = #XM5JC5
      * equivalence = #equivalent

Instance:       who-ddcc-map-icd11-icao-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to ICAO for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-icd11-icao-vaccines"
* name = "ICD11_ICAO_COVID19_vaccines"
* title = "ConceptMap from ICD-11 to ICAO for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-23"
* description = "Rule-based mappings between ICD-11 and ICAO for COVID-19 Vaccines"

* group[+]
  * source = $ICD11
  * target = $ICAOV1

  * element[+]
    * code = #XM68M6
    * target[+]
      * code = #ICAO001
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO002
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO003
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO004
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO005
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO006
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO007
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO008
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM3DT5
    * target[+]
      * code = #ICAO009
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO010
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO011
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO012
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM52P3
    * target[+]
      * code = #ICAO013
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO014
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM3CT4
    * target[+]
      * code = #ICAO015
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO016
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO017
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO018
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO019
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM3PG0
    * target[+]
      * code = #ICAO020
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO021
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO022
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO023
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO024
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM4EC8
    * target[+]
      * code = #ICAO025
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO026
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO027
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM6SZ8
    * target[+]
      * code = #ICAO028
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO029
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM0RV9
    * target[+]
      * code = #ICAO030
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO031
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM3SK8
    * target[+]
      * code = #ICAO032
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO033
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM9P21
    * target[+]
      * code = #ICAO034
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO035
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO036
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM9T65
    * target[+]
      * code = #ICAO037
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO038
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO039
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO040
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO041
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM9N08
    * target[+]
      * code = #ICAO042
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM4YL8
    * target[+]
      * code = #ICAO043
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO044
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO045
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO046
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO047
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO048
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO049
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM97T2
    * target[+]
      * code = #ICAO050
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO051
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO052
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO053
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO054
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM6QV1
    * target[+]
      * code = #ICAO055
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO056
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO057
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO058
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM1AG7
    * target[+]
      * code = #ICAO059
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO060
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO061
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM5ZJ4
    * target[+]
      * code = #ICAO062
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO063
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO064
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO065
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM5QM6
    * target[+]
      * code = #ICAO066
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO067
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM7HT3
    * target[+]
      * code = #ICAO068
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO069
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO070
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM8866
    * target[+]
      * code = #ICAO071
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO072
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO073
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO074
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO075
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM9TQ1
    * target[+]
      * code = #ICAO076
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO077
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO078
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM1G90
    * target[+]
      * code = #ICAO079
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO080
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO081
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM85P5
    * target[+]
      * code = #ICAO082
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO083
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO084
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM9FQ7
    * target[+]
      * code = #ICAO085
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO086
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM97N6
    * target[+]
      * code = #ICAO087
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO088
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO089
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM2YG8
    * target[+]
      * code = #ICAO090
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO091
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM0K39
    * target[+]
      * code = #ICAO092
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO093
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO094
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM1AU2
    * target[+]
      * code = #ICAO095
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO096
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #ICAO097
      * equivalence = #narrower
      * comment = "ICAO codes are brands and ICD11 is the generic type."

Instance:       who-ddcc-map-icao-icd11-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from ICAO to ICD11 for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-icao-icd11-vaccines"
* name = "ICAO_ICD11_COVID19_vaccines"
* title = "ConceptMap from ICAO to ICD-11 for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-23"
* description = "Rule-based mappings between ICAO and ICD-11 for COVID-19 Vaccines"

* group[+]
  * source = $ICD11
  * target = $ICAOV1

  * element[+]
    * code = #ICAO001
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO002
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO003
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO004
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO005
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO006
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO007
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO008
    * target[+]
      * code = #XM68M6
      * equivalence = #wider
  * element[+]
    * code = #ICAO009
    * target[+]
      * code = #XM3DT5
      * equivalence = #wider
  * element[+]
    * code = #ICAO010
    * target[+]
      * code = #XM3DT5
      * equivalence = #wider
  * element[+]
    * code = #ICAO011
    * target[+]
      * code = #XM3DT5
      * equivalence = #wider
  * element[+]
    * code = #ICAO012
    * target[+]
      * code = #XM3DT5
      * equivalence = #wider
  * element[+]
    * code = #ICAO013
    * target[+]
      * code = #XM52P3
      * equivalence = #wider
  * element[+]
    * code = #ICAO014
    * target[+]
      * code = #XM52P3
      * equivalence = #wider
  * element[+]
    * code = #ICAO015
    * target[+]
      * code = #XM3CT4
      * equivalence = #wider
  * element[+]
    * code = #ICAO016
    * target[+]
      * code = #XM3CT4
      * equivalence = #wider
  * element[+]
    * code = #ICAO017
    * target[+]
      * code = #XM3CT4
      * equivalence = #wider
  * element[+]
    * code = #ICAO018
    * target[+]
      * code = #XM3CT4
      * equivalence = #wider
  * element[+]
    * code = #ICAO019
    * target[+]
      * code = #XM3CT4
      * equivalence = #wider
  * element[+]
    * code = #ICAO020
    * target[+]
      * code = #XM3PG0
      * equivalence = #wider
  * element[+]
    * code = #ICAO021
    * target[+]
      * code = #XM3PG0
      * equivalence = #wider
  * element[+]
    * code = #ICAO022
    * target[+]
      * code = #XM3PG0
      * equivalence = #wider
  * element[+]
    * code = #ICAO023
    * target[+]
      * code = #XM3PG0
      * equivalence = #wider
  * element[+]
    * code = #ICAO024
    * target[+]
      * code = #XM3PG0
      * equivalence = #wider
  * element[+]
    * code = #ICAO025
    * target[+]
      * code = #XM4EC8
      * equivalence = #wider
  * element[+]
    * code = #ICAO026
    * target[+]
      * code = #XM4EC8
      * equivalence = #wider
  * element[+]
    * code = #ICAO027
    * target[+]
      * code = #XM4EC8
      * equivalence = #wider
  * element[+]
    * code = #ICAO028
    * target[+]
      * code = #XM6SZ8
      * equivalence = #wider
  * element[+]
    * code = #ICAO029
    * target[+]
      * code = #XM6SZ8
      * equivalence = #wider
  * element[+]
    * code = #ICAO030
    * target[+]
      * code = #XM0RV9
      * equivalence = #wider
  * element[+]
    * code = #ICAO031
    * target[+]
      * code = #XM0RV9
      * equivalence = #wider
  * element[+]
    * code = #ICAO032
    * target[+]
      * code = #XM3SK8
      * equivalence = #wider
  * element[+]
    * code = #ICAO033
    * target[+]
      * code = #XM3SK8
      * equivalence = #wider
  * element[+]
    * code = #ICAO034
    * target[+]
      * code = #XM9P21
      * equivalence = #wider
  * element[+]
    * code = #ICAO035
    * target[+]
      * code = #XM9P21
      * equivalence = #wider
  * element[+]
    * code = #ICAO036
    * target[+]
      * code = #XM9P21
      * equivalence = #wider
  * element[+]
    * code = #ICAO037
    * target[+]
      * code = #XM9T65
      * equivalence = #wider
  * element[+]
    * code = #ICAO038
    * target[+]
      * code = #XM9T65
      * equivalence = #wider
  * element[+]
    * code = #ICAO039
    * target[+]
      * code = #XM9T65
      * equivalence = #wider
  * element[+]
    * code = #ICAO040
    * target[+]
      * code = #XM9T65
      * equivalence = #wider
  * element[+]
    * code = #ICAO041
    * target[+]
      * code = #XM9T65
      * equivalence = #wider
  * element[+]
    * code = #ICAO042
    * target[+]
      * code = #XM9N08
      * equivalence = #wider
  * element[+]
    * code = #ICAO043
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO044
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO045
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO046
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO047
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO048
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO049
    * target[+]
      * code = #XM4YL8
      * equivalence = #wider
  * element[+]
    * code = #ICAO050
    * target[+]
      * code = #XM97T2
      * equivalence = #wider
  * element[+]
    * code = #ICAO051
    * target[+]
      * code = #XM97T2
      * equivalence = #wider
  * element[+]
    * code = #ICAO052
    * target[+]
      * code = #XM97T2
      * equivalence = #wider
  * element[+]
    * code = #ICAO053
    * target[+]
      * code = #XM97T2
      * equivalence = #wider
  * element[+]
    * code = #ICAO054
    * target[+]
      * code = #XM97T2
      * equivalence = #wider
  * element[+]
    * code = #ICAO055
    * target[+]
      * code = #XM6QV1
      * equivalence = #wider
  * element[+]
    * code = #ICAO056
    * target[+]
      * code = #XM6QV1
      * equivalence = #wider
  * element[+]
    * code = #ICAO057
    * target[+]
      * code = #XM6QV1
      * equivalence = #wider
  * element[+]
    * code = #ICAO058
    * target[+]
      * code = #XM6QV1
      * equivalence = #wider
  * element[+]
    * code = #ICAO059
    * target[+]
      * code = #XM1AG7
      * equivalence = #wider
  * element[+]
    * code = #ICAO060
    * target[+]
      * code = #XM1AG7
      * equivalence = #wider
  * element[+]
    * code = #ICAO061
    * target[+]
      * code = #XM1AG7
      * equivalence = #wider
  * element[+]
    * code = #ICAO062
    * target[+]
      * code = #XM5ZJ4
      * equivalence = #wider
  * element[+]
    * code = #ICAO063
    * target[+]
      * code = #XM5ZJ4
      * equivalence = #wider
  * element[+]
    * code = #ICAO064
    * target[+]
      * code = #XM5ZJ4
      * equivalence = #wider
  * element[+]
    * code = #ICAO065
    * target[+]
      * code = #XM5ZJ4
      * equivalence = #wider
  * element[+]
    * code = #ICAO066
    * target[+]
      * code = #XM5QM6
      * equivalence = #wider
  * element[+]
    * code = #ICAO067
    * target[+]
      * code = #XM5QM6
      * equivalence = #wider
  * element[+]
    * code = #ICAO068
    * target[+]
      * code = #XM7HT3
      * equivalence = #wider
  * element[+]
    * code = #ICAO069
    * target[+]
      * code = #XM7HT3
      * equivalence = #wider
  * element[+]
    * code = #ICAO070
    * target[+]
      * code = #XM7HT3
      * equivalence = #wider
  * element[+]
    * code = #ICAO071
    * target[+]
      * code = #XM8866
      * equivalence = #wider
  * element[+]
    * code = #ICAO072
    * target[+]
      * code = #XM8866
      * equivalence = #wider
  * element[+]
    * code = #ICAO073
    * target[+]
      * code = #XM8866
      * equivalence = #wider
  * element[+]
    * code = #ICAO074
    * target[+]
      * code = #XM8866
      * equivalence = #wider
  * element[+]
    * code = #ICAO075
    * target[+]
      * code = #XM8866
      * equivalence = #wider
  * element[+]
    * code = #ICAO076
    * target[+]
      * code = #XM9TQ1
      * equivalence = #wider
  * element[+]
    * code = #ICAO077
    * target[+]
      * code = #XM9TQ1
      * equivalence = #wider
  * element[+]
    * code = #ICAO078
    * target[+]
      * code = #XM9TQ1
      * equivalence = #wider
  * element[+]
    * code = #ICAO079
    * target[+]
      * code = #XM1G90
      * equivalence = #wider
  * element[+]
    * code = #ICAO080
    * target[+]
      * code = #XM1G90
      * equivalence = #wider
  * element[+]
    * code = #ICAO081
    * target[+]
      * code = #XM1G90
      * equivalence = #wider
  * element[+]
    * code = #ICAO082
    * target[+]
      * code = #XM85P5
      * equivalence = #wider
  * element[+]
    * code = #ICAO083
    * target[+]
      * code = #XM85P5
      * equivalence = #wider
  * element[+]
    * code = #ICAO084
    * target[+]
      * code = #XM85P5
      * equivalence = #wider
  * element[+]
    * code = #ICAO085
    * target[+]
      * code = #XM9FQ7
      * equivalence = #wider
  * element[+]
    * code = #ICAO086
    * target[+]
      * code = #XM9FQ7
      * equivalence = #wider
  * element[+]
    * code = #ICAO087
    * target[+]
      * code = #XM97N6
      * equivalence = #wider
  * element[+]
    * code = #ICAO088
    * target[+]
      * code = #XM97N6
      * equivalence = #wider
  * element[+]
    * code = #ICAO089
    * target[+]
      * code = #XM97N6
      * equivalence = #wider
  * element[+]
    * code = #ICAO090
    * target[+]
      * code = #XM2YG8
      * equivalence = #wider
  * element[+]
    * code = #ICAO091
    * target[+]
      * code = #XM2YG8
      * equivalence = #wider
  * element[+]
    * code = #ICAO092
    * target[+]
      * code = #XM0K39
      * equivalence = #wider
  * element[+]
    * code = #ICAO093
    * target[+]
      * code = #XM0K39
      * equivalence = #wider
  * element[+]
    * code = #ICAO094
    * target[+]
      * code = #XM0K39
      * equivalence = #wider
  * element[+]
    * code = #ICAO095
    * target[+]
      * code = #XM1AU2
      * equivalence = #wider
  * element[+]
    * code = #ICAO096
    * target[+]
      * code = #XM1AU2
      * equivalence = #wider
  * element[+]
    * code = #ICAO097
    * target[+]
      * code = #XM1AU2
      * equivalence = #wider





Instance:       who-ddcc-map-cvx-icd11-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from CVX to ICD-11 for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-cvx-icd11-vaccines"
* name = "ICD11_SNOMED_CT_COVID19_vaccines"
* title = "ConceptMap from CVX to ICD-11 for Vaccines"
* status = #draft
* experimental = true
* date = "2022-05-23"
* description = "Rule-based mappings between CVX and ICD-11 and for COVID-19 Vaccines"

* group[+]
  * source = $CVX
  * target = $ICD11

  * element[+]
    * code = #208
    * target[+]
      * code = #XM0GQ8
      * equivalence = #equivalent
  * unmapped.mode = #provided

Instance:       who-ddcc-map-cvx-icd11-brands
InstanceOf:     ConceptMap
Description:    "Mapping from CVX to ICD-11 for COVID-19 Brands"
Usage:          #definition

* id = "who-ddcc-map-cvx-icd11-brands"
* name = "ICD11_SNOMED_CT_COVID19_brands"
* title = "ConceptMap from CVX to ICD-11 for Brands"
* status = #draft
* experimental = true
* date = "2022-05-23"
* description = "Rule-based mappings between CVX and ICD-11 and for COVID-19 Brands"

* group[+]
  * source = $CVX
  * target = $ICD11

  * element[+]
    * code = #208
    * target[+]
      * code = #XM8NQ0
      * equivalence = #equivalent
  * unmapped.mode = #provided

Instance:       who-ddcc-map-icd11-sct-disease-targeted
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to SNOMED CT for COVID-19 disease."
Usage:          #definition

* id = "who-ddcc-map-icd11-sct-disease-targeted"
* name = "ICD_11_SNOMED_CT_COVID19_Disease"
* title = "ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Disease or Agent Targeted"

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #RA01
    * target[+]
      * code = #840539006
      * equivalence = #equivalent


Instance:       who-ddcc-map-icd11-icd10-disease-targeted
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to ICD-10 for COVID-19 disease."
Usage:          #definition

* id = "who-ddcc-map-icd11-icd10-disease-targeted"
* name = "ICD_11_ICD_10_COVID19_Disease"
* title = "ConceptMap from ICD-10 to SNOMED CT for Disease or Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and ICD-10 for COVID-19 Disease or Agent Targeted"

* group[+]
  * source = $ICD11
  * target = $ICD10

  * element[+]
    * code = #RA01
    * target[+]
      * code = #U07.1
      * equivalence = #equivalent
