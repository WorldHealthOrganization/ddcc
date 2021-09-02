Instance:     DDCC-Patient-Spanish
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulo Agerio"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCC-Organization-Spanish
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Hospital del Gobierno"

Instance: DDCC-ImmunizationRecommendation-Spanish
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-Spanish)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-Spanish)

Instance: DDCC-Immunization-Spanish
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[vaccineMarketAuthorization].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#ESP
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Spanish)
* location.display = "Sitio de vacunación"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-Spanish)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Spanish)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-Spanish
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-Spanish)
* date = "2020-05-06"
* author = Reference(DDCC-Organization-Spanish)
* attester.party = Reference(DDCC-Organization-Spanish)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-Spanish)
* section[vaccination].entry[+] = Reference(DDCC-Immunization-Spanish)
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-Spanish)



Instance: Example-Spanish
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCC-Composition-Example-Spanish"
* entry[ddccComposition].resource = DDCC-Composition-Example-Spanish

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Spanish"
* entry[ddccPatient].resource = DDCC-Patient-Spanish

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-Spanish"
* entry[ddccOrganization].resource = DDCC-Organization-Spanish

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-Spanish"
* entry[ddccImmunization].resource = DDCC-Immunization-Spanish

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCC-ImmunizationRecommendation-Spanish"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-Spanish
