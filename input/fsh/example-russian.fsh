Instance:     DDCC-Patient-Russian
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Авл Агерий"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCC-Organization-Russian
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Государственная больница"

Instance: DDCC-ImmunizationRecommendation-Russian
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-Russian)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-Russian)

Instance: DDCC-Immunization-Russian
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[vaccineMarketAuthorization].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#RUS
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Russian)
* location.display = "Сайт вакцинации"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-Russian)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Russian)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-Russian
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-Russian)
* date = "2020-05-06"
* author = Reference(DDCC-Organization-Russian)
* attester.party = Reference(DDCC-Organization-Russian)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-Russian)
* section[vaccination].entry[+] = Reference(DDCC-Immunization-Russian)
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-Russian)



Instance: Example-Russian
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"


* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCC-Composition-Example-Russian"
* entry[ddccComposition].resource = DDCC-Composition-Example-Russian

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Russian"
* entry[ddccPatient].resource = DDCC-Patient-Russian

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-Russian"
* entry[ddccOrganization].resource = DDCC-Organization-Russian

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-Russian"
* entry[ddccImmunization].resource = DDCC-Immunization-Russian

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCC-ImmunizationRecommendation-Russian"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-Russian
