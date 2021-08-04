Profile:        DDCCImmunization
//Parent:         http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Parent:         Immunization
Id:             DDCCImmunization
Title:          "DDCC Immunization"
Description:    """ 
A DDCC Immunization contains the content corresponding to a row in the Vaccination 
Events section of a Paper DDCC. While this is not a further profile of the International
Patient Summary (IPS) Immunization resouce, this is intended to map into an IPS 
Immunization resource.
"""

* extension contains DDCCVaccineBrand named vaccineBrand 1..1 MS
            and DDCCVaccineMarketAuthorization named vaccineMarketAuthorization 0..1 MS
            and DDCCCountryOfVaccination named country 1..1 MS
	    and DDCCVaccineValidFrom named validFrom 0..1 MS
// * extension[DDCCVaccineBrand] ^label = "Vaccine brand"
// * extension[DDCCVaccineMarketAuthorization] ^label = "Vaccine market authorization holder"
// * extension[DDCCCountryOfVaccination] ^label = "Country of vaccination"
// * extension[DDCCVaccineValidFrom] ^label = "Vaccination valid from"
* extension[vaccineBrand] ^label = "Vaccine brand"
* extension[vaccineMarketAuthorization] ^label = "Vaccine market authorization holder"
* extension[country] ^label = "Country of vaccination"
* extension[validFrom] ^label = "Vaccination valid from"
* vaccineCode 1..1 MS
* vaccineCode ^label = "Vaccine or prophylaxis"
* vaccineCode.coding ^slicing.discriminator[+].type = #exists
* vaccineCode.coding ^slicing.discriminator[=].path = "system"
* vaccineCode.coding ^slicing.discriminator[+].type = #exists
* vaccineCode.coding ^slicing.discriminator[=].path = "code"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains ddccVaccine 1..1 MS
* vaccineCode.coding[ddccVaccine].system 1..1 MS
* vaccineCode.coding[ddccVaccine].code 1..1 MS
* vaccineCode.coding[ddccVaccine] from WHO_DDCC_Vaccines_COVID_19 (example)
//  do we need this ?  * vaccineCode.coding[ddccVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
//  do we need this ?   * vaccineCode.coding[ddccVaccine].code from WHO_DDCC_Vaccines_COVID_19 (example)

* location 1..1 MS
* location ^label = "Administering centre"
* location.display 1..1 MS
* manufacturer 0..1 MS
* lotNumber MS
* lotNumber ^label = "Vaccine batch number"
* patient only Reference(DDCCPatient)
* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
* occurrence[x] ^label = "Date of vaccination"
* performer 0.. 
* performer.actor only Reference(DDCCPractitioner or DDCCOrganization)
* performer.actor ^label = "Health worker identifier"
* protocolApplied 1.. MS
* protocolApplied ^slicing.discriminator.type = #type
* protocolApplied ^slicing.discriminator.path = "authority"
* protocolApplied ^slicing.rules = #open
* protocolApplied contains protocolAppliedAuthority 1.. MS
* protocolApplied[protocolAppliedAuthority].authority only Reference(DDCCOrganization)
* protocolApplied[protocolAppliedAuthority].targetDisease from WHO_DDCC_Disease_Targeted_COVID_19 (example)
* protocolApplied[protocolAppliedAuthority].targetDisease ^label = "Disease or agent targeted"
* protocolApplied[protocolAppliedAuthority].doseNumber[x] 1..1 MS
* protocolApplied[protocolAppliedAuthority].doseNumber[x] only positiveInt
* protocolApplied[protocolAppliedAuthority].doseNumber[x] ^label = "Dose number"
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] 0..1 
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] only positiveInt
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] ^label = "Total doses"


Extension:      DDCCVaccineBrand
Id:             DDCCVaccineBrand
Title:          "DDCC Vaccine Brand for Immunization"
Description:    "DDCC Vaccine Brand for Immunization"
* ^context.type = #element
* ^context.expression = "Immunization"
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

Extension:      DDCCCountryOfVaccination
Id:             DDCCCountryOfVaccination
Title:          "DDCC Country Of Vaccination for Immunization"
Description:    "DDCC Country Of Vaccination for Immunization"
* ^context.type = #element
* ^context.expression = "Immunization"
* value[x] only code
* valueCode 1..1 MS
* valueCode from 	http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)

Extension:      DDCCVaccineValidFrom
Id:             DDCCVaccineValidFrom
Title:          "DDCC Vaccine Valid From"
Description:    "Date upon which provided vaccination is considered valid"
* ^context.type = #element
* ^context.expression = "Immunization"
* value[x] only dateTime
* valueDateTime 1..1 MS


Profile:        DDCCImmunizationRecommendation
Parent:         ImmunizationRecommendation
Id:             DDCCImmunizationRecommendation
Title:          "DDCC Immunization Recommendation"
Description:    """ 
A DDCC Immunization Recommendation contains the content corresponding to when
a patient should return for a booster shot.
"""
* patient 1..1 MS
* patient only Reference(DDCCPatient)
* date 1..1
* recommendation 1..1 MS
* recommendation.vaccineCode 1..1 MS
* recommendation.vaccineCode ^label = "Vaccine or prophylaxis"
* recommendation.vaccineCode.coding ^slicing.discriminator[+].type = #exists
* recommendation.vaccineCode.coding ^slicing.discriminator[=].path = "system"
* recommendation.vaccineCode.coding ^slicing.discriminator[+].type = #exists
* recommendation.vaccineCode.coding ^slicing.discriminator[=].path = "code"
* recommendation.vaccineCode.coding ^slicing.rules = #open
* recommendation.vaccineCode.coding contains ddccVaccine 1..1 MS
* recommendation.vaccineCode.coding[ddccVaccine].system 1..1 MS
* recommendation.vaccineCode.coding[ddccVaccine].code 1..1 MS
* recommendation.vaccineCode.coding[ddccVaccine] from WHO_DDCC_Vaccines_COVID_19 (example)
// do we need this? * recommendation.vaccineCode.coding[ddccVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
// do we need this? * recommendation.vaccineCode.coding[ddccVaccine].code from WHO_DDCC_Vaccines_COVID_19 (example)
* recommendation.targetDisease from WHO_DDCC_Disease_Targeted_COVID_19 (example)
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.dateCriterion 1..1 MS
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.dateCriterion.value 1..1 MS
* recommendation.supportingImmunization 1..1 MS
* recommendation.supportingImmunization only Reference(DDCCImmunization)


