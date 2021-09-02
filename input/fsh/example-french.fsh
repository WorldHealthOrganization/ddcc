Instance:     DDCC-Patient-French
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulus Agerius"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCC-Organization-French
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Hôpital du gouvernement"

Instance: DDCC-ImmunizationRecommendation-French
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-French)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-French)

Instance: DDCC-Immunization-French
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[vaccineMarketAuthorization].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#FRA
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-French)
* location.display = "Site de vaccination"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-French)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-French)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-French
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-French)
* date = "2020-05-06"
* author = Reference(DDCC-Organization-French)
* attester.party = Reference(DDCC-Organization-French)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-French)
* section[vaccination].entry[+] = Reference(DDCC-Immunization-French)
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-French)



Instance: Example-French
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCC-Composition-Example-French"
* entry[ddccComposition].resource = DDCC-Composition-Example-French

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-French"
* entry[ddccPatient].resource = DDCC-Patient-French

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-French"
* entry[ddccOrganization].resource = DDCC-Organization-French

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-French"
* entry[ddccImmunization].resource = DDCC-Immunization-French

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCC-ImmunizationRecommendation-French"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-French

