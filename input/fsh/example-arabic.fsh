Instance:     DDCC-Patient-Arabic
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "أولوس أجيريوس"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCC-Organization-Arabic
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "مستشفى حكومي"

Instance: DDCC-ImmunizationRecommendation-Arabic
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-Arabic)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-Arabic)

Instance: DDCC-Immunization-Arabic
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[vaccineMarketAuthorization].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#SAU
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Arabic)
* location.display = "موقع التطعيم"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-Arabic)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Arabic)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-Arabic
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-Arabic)
* date = "2020-05-06"
* author = Reference(DDCC-Organization-Arabic)
* attester.party = Reference(DDCC-Organization-Arabic)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-Arabic)
* section[vaccination].entry[+] = Reference(DDCC-Immunization-Arabic)
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-Arabic)



Instance: Example-Arabic
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"


* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCC-Composition-Example-Arabic"
* entry[ddccComposition].resource = DDCC-Composition-Example-Arabic

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Arabic"
* entry[ddccPatient].resource = DDCC-Patient-Arabic

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-Arabic"
* entry[ddccOrganization].resource = DDCC-Organization-Arabic

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-Arabic"
* entry[ddccImmunization].resource = DDCC-Immunization-Arabic

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCC-ImmunizationRecommendation-Arabic"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-Arabic
