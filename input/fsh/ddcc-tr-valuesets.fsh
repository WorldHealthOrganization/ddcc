Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct

ValueSet:      WHO_DDCC_Agent_Targeted_COVID_19
Id:	           who-ddcc-agent-targeted-covid-19
Title:	       "WHO Agent Targeted (COVID-19)"
Description:   """
WHO Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#XN109 "SARS-CoV-2"
* include $ICD11#XN0HL "SARS-CoV-2 Alpha"
* include $ICD11#XN4Q7 "SARS-CoV-2 Beta"
* include $ICD11#XN5BQ "SARS-CoV-2 Gamma"
* include $ICD11#XN8V6 "SARS-CoV-2 Delta"
* include $ICD11#XN1GK "SARS-CoV-2 Epsilon"
* include $ICD11#XN3ZE "SARS-CoV-2 Zeta"
* include $ICD11#XN2V4 "SARS-CoV-2 Eta"
* include $ICD11#XN4Q1 "SARS-CoV-2 Theta"
* include $ICD11#XN3UD "SARS-CoV-2 Iota"
* include $ICD11#XN9L8 "SARS-CoV-2 Kappa"
* include $ICD11#XN6AM "SARS-CoV-2 Lambda"

ValueSet:     WHO_DDCC_Type_of_Test_COVID_19
Id:           who-ddcc-type-of-test-covid-19
Title:        "WHO Type of Covid-19 Test"
Description:  """
WHO Type of COVID-19 Test
"""

* ^status = #draft
* include $LOINC#LP6464-4 "NAAT with probe detection"
* include $LOINC#LP217198-3 "Rapid immunoassay"

ValueSet:     WHO_DDCC_Sample_Origin_COVID_19
Id:           who-ddcc-sample-origin-covid-19
Title:        "WHO Speciman Sample Origin (COVID-19)"
Description:  """
WHO Speciman Sample Origin List (COVID-19)
"""

* ^status = #draft
* include SCT#258500001 "Nasopharyngeal swab"
* include SCT#461911000124106 "Oropharyngeal swab"
* include SCT#472881004 "Pharyngeal swab"
* include SCT#472901003 "Swab from nasal sinus"
* include SCT#119342007 "Saliva specimen"
* include SCT#119297000 "Blood specimen"
* include SCT#119361006 "Plasma specimen"
* include SCT#119364003 "Serum specimen"
* include SCT#122592007 "Acellular blood (serum or plasma) specimen"

ValueSet:     WHO_DDCC_Test_Result_COVID_19
Id:           who-ddcc-test-result-covid-19
Title:        "WHO Test Result (COVID-19)"
Description:  """
WHO COVID-19 Test Result from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#RA01.0 "Detected"
* include $ICD11#QA02 "Not Detected"


Instance:       WHO_DDCC_Map_LOINC_to_SCT_Type_of_Test
InstanceOf:     ConceptMap
Description:    "Mapping from LOINC to SNOMED CT for COVID-19 Type of Test"
Usage:          #definition

* id = "who-ddcc-map-loinc-sct-type-of-test"
* name = "LOINC_SNOMED_CT_COVID19_Type_of_Test"
* title = "ConceptMap from LOINC to SNOMED CT for Type of Test"
* status = #draft
* experimental = true
* date = "2021-12-16"
* description = "Rule-based mappings between LOINC and SNOMED CT for COVID-19 Type of Test"
* sourceCanonical = $LOINC
* targetCanonical = SCT

* group[+]
  * source = $LOINC
  * target = SCT

  * element[+]
    * code = #LP6464-4 
    * target[+]
      * code = #117244003
      * equivalence = #equivalent

  * element[+]
    * code = #LP217198-3 
    * target[+]
      * code = #414464004
      * equivalence = #equivalent

Instance:       WHO_DDCC_Map_ICD11_to_SCT_Test_Result
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to SNOMED CT for COVID-19 Test Result"
Usage:          #definition

* id = "who-ddcc-map-icd11-sct-test-result"
* name = "ICD11_SNOMED_CT_COVID19_Test_Result"
* title = "ConceptMap from ICD-11 to SNOMED CT for Test Results"
* status = #draft
* experimental = true
* date = "2021-12-16"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Test Results"
* sourceCanonical = $ICD11
* targetCanonical = SCT

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #RA01.0
    * target[+]
      * code = #1240581000000104
      * equivalence = #equivalent

  * element[+]
    * code = #QA02
    * target[+]
      * code = #1240591000000102
      * equivalence = #equivalent

Instance:       WHO_DDCC_Map_ICD11_to_SCT_Agent_Targeted
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to SNOMED CT for COVID-19 Agent Targeted"
Usage:          #definition

* id = "who-ddcc-map-icd11-sct-agent-targeted"
* name = "ICD11_SNOMED_CT_COVID19_Agent_Targeted"
* title = "ConceptMap from ICD-11 to SNOMED CT for Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-12-16"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Agent Targeted"
* sourceCanonical = $ICD11
* targetCanonical = SCT

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #XN109
    * target[+]
      * code = #840533007
      * equivalence = #equivalent

  * element[+]
    * code = #XN0HL
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN4Q7
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN5BQ
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN8V6
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN1GK
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN3ZE
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN2V4
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN4Q1
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN3UD
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN9L8
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN6AM
    * target[+]
      * code = #840533007
      * equivalence = #wider
