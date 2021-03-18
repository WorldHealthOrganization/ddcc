Alias: $ICD11 = https://icd.who.int/browse11


ValueSet:      WHO_SVC_Vaccinable_Conditions
Id:	       who-svc-vaccinable-confitions
Title:	       "WHO List of Vaccinable Conditions"
Description:   """
The WHO Vaccinable Conditions List from [ICD 11](https://icd.who.int/browse11) is used by:
 *  the [SVC Immunization](StructureDefinition-svc-immunization.html) 
 
""" 
* ^status = #draft



ValueSet:      WHO_SVC_Vaccines
Id:	       who-svc-vaccines
Title:	       "WHO Vaccine List"
Description:   """
The WHO Vaccine List from [ICD 11](https://icd.who.int/browse11) is used by:
 *  the [SVC Immunization](StructureDefinition-svc-immunization.html) 
 
""" 
* ^status = #draft
* include $ICD11#XM29K4	"Cholera vaccines"
* include $ICD11#XM11V3	"Haemophilus influenzae B vaccines"
* include $ICD11#XM18Y8 "Meningococcal conjugate (Strain C) vaccine"
* include $ICD11#XM2280	"Menningovax (-AC) (-C)"
* include $ICD11#XM43M9	"Pertussis vaccines"
* include $ICD11#XM9G97	"Pneumococcal conjugate (13-valent) vaccine"
* include $ICD11#XM2249	"Pneumococcal polysaccharide 23-valent vaccine"
* include $ICD11#XM29H5 "Tetanus toxoid"
* include $ICD11#XM1G86	"Tetanus toxoid, combinations with diphtheria toxoid"
* include $ICD11#XM8BU8	"Typhoid vaccines"
* include $ICD11#XM8AW3 "Diphtheria vaccine"
* include $ICD11#XM8142	"BCG vaccine"
* include $ICD11#XM8ZX8 "Plague vaccine"
* include $ICD11#XM9SW5	"Vaccine bacterial with other bacterial component"
* include $ICD11#XM3VD2	"Vaccine TAB"
* include $ICD11#XM95H3	"Paratyphoid vaccine"
* include $ICD11#XM2ZE3	"Vaccine bacterial with pertussis component"
* include $ICD11#XM3JJ2	"Typhus vaccine"
* include $ICD11#XM4F19	"Vaccine rickettsial with bacterial component"
* include $ICD11#XM0E84	"Rocky Mountain spotted fever vaccine"
* include $ICD11#XM5926	"Vaccine bacterial mixed, not elsewhere classified"
* include $ICD11#XM0RC1	"Encephalitis vaccines"
* include $ICD11#XM8858	"Influenza vaccine, inactivated, whole virus"
* include $ICD11#XM5V65	"Influenza vaccine, live attenuated"
* include $ICD11#XM8MP3	"Influenza vaccine, inactivated, split virus or surface antigen"
* include $ICD11#XM9E17 "Influenza vaccine, virus like particle"
* include $ICD11#XM9V38	"Hepatitis B vaccine"
* include $ICD11#XM2A14	"Hepatitis A vaccine, inactivated whole virus"
* include $ICD11#XM8L15	"Measles, live attenuated"
* include $ICD11#XM2KH7 "Diplovax"
* include $ICD11#XM4KG4 "Orimune"
* include $ICD11#XM1Y59	"Vaccine sabin oral"
* include $ICD11#XM1CE0 "Rotavirus diarrhoea vaccines"
* include $ICD11#XM9PS9 "Meruvax"
* include $ICD11#XM8DG3	"Varicella zoster vaccines"
* include $ICD11#XM9QP0	"Human Papillomarvirus vaccine"
* include $ICD11#XM0GW0	"Herpes zoster (Shingles) vaccine"
* include $ICD11#XM2340	"Mumpsvax"
* include $ICD11#XM95R0 "Smallpox vaccine"
* include $ICD11#XM6T09	"Rabies vaccine"
* include $ICD11#XM69P6	"Synagis"
* include $ICD11#XM0N24	"Yellow fever vaccine"
* include $ICD11#XM1NL1	"COVID-19 vaccine, inactivated virus"
* include $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* include $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $ICD11#XM0CX4	"COVID-19 vaccine, replicating viral vector"
* include $ICD11#XM5JC5	"COVID-19 vaccine, virus protein subunit"
* include $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $ICD11#XM0GQ8 "COVID-19 vaccine, RNA based"
* include $ICD11#XM21E6 "Diptheria, Tetanus, acellular Pertussis, Inactivated Polio Virus, Haemophilus Influenzae type B"
* include $ICD11#XM84S1 "Diptheria, Hepatitis B,Tetanus, acellular Pertussis, Inactivated Polio Virus, Haemophilus Influenzae type B"
* include $ICD11#XM9JP8	"Diptheria, Tetanus, acellular Pertussis, Inactivated Polio Virus"
* include $ICD11#XM44M4	"Tetanus, diphtheria, acellular Pertussis, Inactivated Polio Virus"
* include $ICD11#XM1PB8	"Triple vaccine DPT"
* include $ICD11#XM9ZL9	"Pertussis vaccine (with diphtheria toxoid) (with tetanus toxoid)"
* include $ICD11#XM9YH9	"Diphtheria toxoid with tetanus toxoid with pertussis component"
* include $ICD11#XM4039	"Vaccine diphtheria with tetanus"
* include $ICD11#XM8XH5	"Tetanus toxoid or vaccine toxoid with diphtheria toxoid"
* include $ICD11#XM8TF3	"Measles, mumps rubella	http://id.who.int/icd/entity/87842213"
* include $ICD11#XM46V1	"Diphtheria vaccine combination including pertussis"
* include $ICD11#XM39K8	"Diphtheria vaccine combination without pertussis"
* include $ICD11#XM8YP9 "Diphtheria vaccine combination"
* include $ICD11#XM3JG2	"Toxoid combined"
* include $ICD11#XM25U9	"Vaccine pertussis with other component"
* include $ICD11#XM5KN5	"Vaccine bacterial with viral-rickettsial component"


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
* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $ICD11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* include $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $ICD11#XM0CX4	"COVID-19 vaccine, replicating viral vector"
* include $ICD11#XM5JC5	"COVID-19 vaccine, virus protein subunit"
* include $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
