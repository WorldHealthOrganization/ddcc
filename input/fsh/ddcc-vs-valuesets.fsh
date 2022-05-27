Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct
Alias: $CVX = http://hl7.org/fhir/sid/cvx


ValueSet:      WHO_DDCC_Vaccines_COVID_19
Id:	           who-ddcc-vaccines-covid-19
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

ValueSet:      WHO_DDCC_Brands_COVID_19
Id:	           who-ddcc-brands-covid-19
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

ValueSet:      WHO_DDCC_Allowed_Vaccines_COVID_19
Id:	           who-ddcc-allowed-vaccines-covid-19
Title:	       "WHO DDCC Allowed Vaccine List (COVID-19)"
Description:   """
WHO DDCC Allowed Vaccine List (COVID-19) for importing from other valuesets.  Any not
in who-ddcc-vaccines-covid-19 should be included in the ConceptMap so it can be
translated into an ICD-11 code.
"""
* ^status = #draft
* include codes from valueset WHO_DDCC_Vaccines_COVID_19
* include $CVX#208



CodeSystem:     DDCC_ICD11_CodeSystem
Id:             DDCC-ICD11-CodeSystem
Title:          "DDCC Codes for ICD11"
Description:    "ICD11 codes for DDCC so the FHIR server can perform expansions."
* ^url = $ICD11
* #RA01   "COVID-19 Disease"

* #XM68M6 "COVID-19 vaccine"

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

* #XM1J92 "COVID-19 vaccine, virus like particle (VLP)"

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
* #RA01.0 "Detected"
* #QA02 "Not Detected"

ValueSet:      WHO_DDCC_Disease_Targeted_COVID_19
Id:	       who-ddcc-disease-targeted-covid-19
Title:	       "WHO Disease or Agent Targeted (COVID-19)"
Description:   """
WHO Disease or Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#RA01 "COVID-19"


Instance:       WHO_DDCC_Map_ICD11_to_SCT_Vaccines
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
* sourceCanonical = $ICD11
* targetCanonical = SCT

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

Instance:       WHO_DDCC_Map_CVX_To_ICD11_Vaccines
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
* sourceCanonical = $CVX
* targetCanonical = $ICD11

* group[+]
  * source = $CVX
  * target = $ICD11

  * element[+]
    * code = #208
    * target[+]
      * code = #XM0GQ8
      * equivalence = #equivalent
  * unmapped.mode = #provided

Instance:       WHO_DDCC_Map_CVX_To_ICD11_Brands
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
* sourceCanonical = $CVX
* targetCanonical = $ICD11

* group[+]
  * source = $CVX
  * target = $ICD11

  * element[+]
    * code = #208
    * target[+]
      * code = #XM8NQ0
      * equivalence = #equivalent
  * unmapped.mode = #provided

Instance:       WHO_DDCC_Map_ICD11_to_SCT_Disease_Targeted
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
* sourceCanonical = $ICD11
* targetCanonical = SCT

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #RA01
    * target[+]
      * code = #840539006
      * equivalence = #equivalent


Instance:       WHO_DDCC_Map_ICD11_to_ICD10_Disease_Targeted
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
* sourceCanonical = $ICD11
* targetCanonical = $ICD10

* group[+]
  * source = $ICD11
  * target = $ICD10

  * element[+]
    * code = #RA01
    * target[+]
      * code = #U07.1
      * equivalence = #equivalent

