Extension:      DDCCEventBrand
Id:             DDCCEventBrand
Title:          "DDCC Event Brand for Immunization"
Description:    "DDCC Event Brand for Immunization"
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only Coding
* valueCoding 1..1 MS

Extension:      DDCCVaccineMarketAuthorization
Id:             DDCCVaccineMarketAuthorization
Title:          "DDCC Vaccine Market Authorization for Immunization"
Description:    "DDCC Vaccine Market Authorization for Immunization"
* ^context.type = #element
* ^context.expression = "Immunization"
* value[x] only Coding
* valueCoding 1..1 MS

Extension:      DDCCCountryOfEvent
Id:             DDCCCountryOfEvent
Title:          "DDCC Country Of Event for Immunization"
Description:    "DDCC Country Of Event for Immunization"
* ^context.type = #element
* ^context.expression = "Immunization"
* value[x] only code
* valueCode 1..1 MS
* valueCode from 	http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)

Extension:      DDCCVaccineValidFrom
Id:             DDCCVaccineValidFrom
Title:          "DDCC Vaccine Valid From"
Description:    "Date upon which provided vaccination is considered valid"
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only date
* valueDate 1..1 MS

Extension:      DDCCTestManufacturer
Id:             DDCCTestManufacturer
Title:          "DDCC Test Manufacturer for Observation"
Description:    "DDCC Test Manufacturer for Observation"
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only Coding
* valueCoding 1..1 MS

Extension:      DDCCTestPathogen
Id:             DDCCTestPathogen
Title:          "DDCC Test Pathogen for Observation"
Description:    "DDCC Test Pathogen for Observation"
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding from WHO_DDCC_Agent_Targeted_COVID_19 (preferred)

Extension:      DDCCTestCentre
Id:             DDCCTestCentre
Title:          "DDCC Test Centre for Observation"
Description:    "DDCC Test Centre for Observation"
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only Coding
* valueCoding 1..1 MS