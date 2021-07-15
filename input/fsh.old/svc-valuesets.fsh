Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: SCT = http://snomed.info/sct


ValueSet:      WHO_SVC_Vaccinable_Conditions
Id:	       who-svc-vaccinable-conditions
Title:	       "WHO List of Vaccinable Conditions"
Description:   """
The WHO Vaccinable Conditions List from [ICD 11](https://icd.who.int/browse11) is used by:
 *  the [SVC Immunization](StructureDefinition-svc-immunization.html) 
 
""" 
* ^status = #draft
* include $ICD11#RA01.0 "COVID-19, virus identified"
* include $ICD11#RA01.1 "COVID-19, virus not identified"

ValueSet:      WHO_SVC_Vaccines
Id:	       who-svc-vaccines
Title:	       "WHO Vaccine List"
Description:   """
The WHO Vaccine List from [ICD 11](https://icd.who.int/browse11) is used by:
 *  the [SVC Immunization](StructureDefinition-svc-immunization.html) 
 
""" 
* ^status = #draft
* include $ICD11#XM68M6 "COVID-19 vaccine"
* include $ICD11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* include $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"
* include $ICD11#XM5JC5 "COVID-19 vaccine, virus protein subunit"
* include $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $ICD11#XM0GQ8 "COVID-19 vaccine, RNA based"
* include $ICD11#XM3KV2 "Bacterial vaccines"
* include $ICD11#XM29K4 "Cholera vaccines"
* include $ICD11#XM11V3 "Haemophilus influenzae B vaccines"
* include $ICD11#XM2WV4 "Meningococcal vaccines"
* include $ICD11#XM18Y8 "Meningococcal conjugate (Strain C) vaccine"
* include $ICD11#XM2280 "Menningovax (-AC) (-C)"
* include $ICD11#XM43M9 "Pertussis vaccines"
* include $ICD11#XM9EM7 "Pneumococcal vaccines"
* include $ICD11#XM9G97 "Pneumococcal conjugate (13-valent) vaccine"
* include $ICD11#XM2249 "Pneumococcal polysaccharide 23-valent vaccine"
* include $ICD11#XM5L44 "Tetanus vaccines"
* include $ICD11#XM29H5 "Tetanus toxoid"
* include $ICD11#XM1G86 "Tetanus toxoid, combinations with diphtheria toxoid"
* include $ICD11#XM8BU8 "Typhoid vaccines"
* include $ICD11#XM86V7 "Diphtheria toxoid"
* include $ICD11#XM8AW3 "Diphtheria vaccine"
* include $ICD11#XM8142 "BCG vaccine"
* include $ICD11#XM8ZX8 "Plague vaccine"
* include $ICD11#XM9SW5 "Vaccine bacterial with other bacterial component"
* include $ICD11#XM9UB1 "Typhoid-paratyphoid vaccine"
* include $ICD11#XM3VD2 "Vaccine TAB"
* include $ICD11#XM95H3 "Paratyphoid vaccine"
* include $ICD11#XM2ZE3 "Vaccine bacterial with pertussis component"
* include $ICD11#XM91J8 "Vaccine rickettsial"
* include $ICD11#XM3JJ2 "Typhus vaccine"
* include $ICD11#XM4F19 "Vaccine rickettsial with bacterial component"
* include $ICD11#XM0E84 "Rocky Mountain spotted fever vaccine"
* include $ICD11#XM5926 "Vaccine bacterial mixed, not elsewhere classified"
* include $ICD11#XM61M7 "Viral vaccines"
* include $ICD11#XM0RC1 "Encephalitis vaccines"
* include $ICD11#XM1LR5 "Influenza vaccines"
* include $ICD11#XM8858 "Influenza vaccine, inactivated, whole virus"
* include $ICD11#XM5V65 "Influenza vaccine, live attenuated"
* include $ICD11#XM8MP3 "Influenza vaccine, inactivated, split virus or surface antigen"
* include $ICD11#XM9E17 "Influenza vaccine, virus like particle"
* include $ICD11#XM6LL6 "Hepatitis vaccine"
* include $ICD11#XM9V38 "Hepatitis B vaccine"
* include $ICD11#XM2A14 "Hepatitis A vaccine, inactivated whole virus"
* include $ICD11#XM28X5 "Measles vaccines"
* include $ICD11#XM8L15 "Measles, live attenuated"
* include $ICD11#XM2KH7 "Diplovax"
* include $ICD11#XM0N50 "Poliomyelitis vaccines"
* include $ICD11#XM4KG4 "Orimune"
* include $ICD11#XM1Y59 "Vaccine sabin oral"
* include $ICD11#XM1CE0 "Rotavirus diarrhoea vaccines"
* include $ICD11#XM7PP1 "Rubella vaccine"
* include $ICD11#XM9PS9 "Meruvax"
* include $ICD11#XM8DG3 "Varicella zoster vaccines"
* include $ICD11#XM9QP0 "Human Papillomarvirus vaccine"
* include $ICD11#XM0GW0 "Herpes zoster (Shingles) vaccine"
* include $ICD11#XM1131 "Mumps vaccine"
* include $ICD11#XM2340 "Mumpsvax"
* include $ICD11#XM95R0 "Smallpox vaccine"
* include $ICD11#XM6T09 "Rabies vaccine"
* include $ICD11#XM02Y0 "Vaccine respiratory syncytial virus"
* include $ICD11#XM69P6 "Synagis"
* include $ICD11#XM0N24 "Yellow fever vaccine"
* include $ICD11#XM4W25 "Combination vaccines"
* include $ICD11#XM21E6 "Diptheria, Tetanus, acellular Pertussis, Inactivated Polio Virus, Haemophilus Influenzae type B"
* include $ICD11#XM84S1 "Diptheria, Hepatitis B,Tetanus, acellular Pertussis, Inactivated Polio Virus, Haemophilus Influenzae type B"
* include $ICD11#XM9JP8 "Diptheria, Tetanus, acellular Pertussis, Inactivated Polio Virus"
* include $ICD11#XM44M4 "Tetanus, diphtheria, acellular Pertussis, Inactivated Polio Virus"
* include $ICD11#XM31Q8 "Tetanus, diptheria, acellular pertussis"
* include $ICD11#XM1PB8 "Triple vaccine DPT"
* include $ICD11#XM9ZL9 "Pertussis vaccine (with diphtheria toxoid) (with tetanus toxoid)"
* include $ICD11#XM9YH9 "Diphtheria toxoid with tetanus toxoid with pertussis component"
* include $ICD11#XM32Q5 "Tetanus and diphtheria"
* include $ICD11#XM4039 "Vaccine diphtheria with tetanus"
* include $ICD11#XM8XH5 "Tetanus toxoid or vaccine toxoid with diphtheria toxoid"
* include $ICD11#XM8TF3 "Measles, mumps rubella"
* include $ICD11#XM46V1 "Diphtheria vaccine combination including pertussis"
* include $ICD11#XM39K8 "Diphtheria vaccine combination without pertussis"
* include $ICD11#XM8YP9 "Diphtheria vaccine combination"
* include $ICD11#XM3JG2 "Toxoid combined"
* include $ICD11#XM25U9 "Vaccine pertussis with other component"
* include $ICD11#XM2CV8 "Vaccine pertussis with diphtheria"
* include $ICD11#XM7C66 "Bacterial and viral vaccines, combined"
* include $ICD11#XM5KN5 "Vaccine bacterial with viral-rickettsial component"


ValueSet:      WHO_SVC_Vaccines_COVID_19
Id:	       who-svc-vaccines-covid-19
Title:	       "WHO Vaccine List (COVID-19)"
Description:   """
WHO Vaccine List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* include $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"
* include $ICD11#XM5JC5 "COVID-19 vaccine, virus protein subunit"
* include $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"

ValueSet:      WHO_SVC_Disease_Targeted_COVID_19
Id:	       who-svc-disease-targeted-covid-19
Title:	       "WHO Disease or Agent Targeted (COVID-19)"
Description:   """
WHO Disease or Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#RA01.0 "COVID-19, virus identified"
* include $ICD11#RA01.1 "COVID-19, virus not identified"


Instance:       WHO_SVC_Map_ICD11_to_SCT_Vaccines
InstanceOf:     ConceptMap
Title:          "ConceptMap from ICD-11 to SNOMED CT for Vaccines"
Usage:          #definition

* id = "who-svc-map-icd11-sct-vaccines"
* name = "ICD-11 to SNOMED CT mappings for COVID-19 vaccines"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Vaccines"
* sourceCanonical = $ICD11
* targetCanonical = SCT

* group[+].source = $ICD11
* group[=].target = SCT

* group[=].element[+].code = #XM68M6
* group[=].element[=].target[+].code = #111930505
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #XM0GQ8
* group[=].element[=].target[+].code = #1119349007
* group[=].element[=].target[=].equivalence = #equivalent



Instance:       WHO_SVC_Map_ICD11_to_SCT_Disease_Targeted
InstanceOf:     ConceptMap
Title:          "ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted"
Usage:          #definition

* id = "who-svc-map-icd11-sct-disease-targeted"
* name = "ICD-11 to SNOMED CT mappings for COVID-19 Disease or Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Disease or Agent Targeted"
* sourceCanonical = $ICD11
* targetCanonical = SCT

* group[+].source = $ICD11
* group[=].target = SCT

* group[=].element[+].code = #RA01.0
* group[=].element[=].target[+].code = #840539006
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #1119302008
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #RA01.1
* group[=].element[=].target[+].code = #840544004
* group[=].element[=].target[=].equivalence = #equivalent
