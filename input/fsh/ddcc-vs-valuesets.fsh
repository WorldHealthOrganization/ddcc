Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct


ValueSet:      WHO_DDCC_Vaccines_COVID_19
Id:	       who-ddcc-vaccines-covid-19
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

