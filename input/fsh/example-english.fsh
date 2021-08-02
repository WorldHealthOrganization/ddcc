Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org



Instance:     DDCC-Patient-English
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "Aulus Agerius"
* name[=].use = #official
* birthDate = "2003-03-03"


Instance: DDCC-Organization-English
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"

Instance: DDCC-ImmunizationRecommendation-English
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCC-Patient-English)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion[nextDose].value = "2021-05-20"
* recommendation.dateCriterion[nextDose].code.coding = http://loinc.org#30980-7
* recommendation.forecastStatus.coding = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCC-Immunization-English)

Instance: DDCC-Immunization-English
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding.system = "http://EXAMPLE.ORG/brands"
* extension[vaccineBrand].valueCoding.code = #VAX-BRAND-EX
* extension[vaccineMarketAuthorization].valueCoding.system = "http://EXAMPLE.ORG/mahs"
* extension[vaccineMarketAuthorization].valueCoding.code = #VAX-MAH-EX
* extension[validFrom].valueDateTime = "2021-05-30"
* extension[country].valueCode = #CHE
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-English)
* location.display = "Vaccination Site"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCC-Organization-English)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-English)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01.0
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCC-Composition-Example-English
InstanceOf:   DDCCComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCC-Patient-English)
* date = "2020-05-06"
* author = Reference(DDCC-Organization-English)
* title = "Digital Documentation of COVID-19 Certificate (DDCC)"
* attester.party = Reference(DDCC-Organization-English)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCC-Immunization-English)
* section[vaccination].entry[+] = Reference(DDCC-Immunization-English)
* section[vaccination].entry[+] = Reference(DDCC-ImmunizationRecommendation-English)



Instance: Example-English
InstanceOf: DDCCDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"


* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Organization/DDCCComposition"
* entry[ddccComposition].resource = DDCC-Composition-Example-English

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-English"
* entry[ddccPatient].resource = DDCC-Patient-English

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCC-Organization-English"
* entry[ddccOrganization].resource = DDCC-Organization-English

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCC-Immunization-English"
* entry[ddccImmunization].resource = DDCC-Immunization-English

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationReccomendation/DDCC-ImmunizationRecommendation-English"
* entry[ddccImmunizationRecommendation].resource = DDCC-ImmunizationRecommendation-English
