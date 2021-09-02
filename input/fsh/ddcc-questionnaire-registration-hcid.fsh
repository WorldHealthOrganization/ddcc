Alias: $extractionContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext
Alias: $launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $populationContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext
Alias: $hiddenItem = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
Alias: $itemContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext
Alias: $DDCCHCIDRegistrationQuestionnaireURL = http://worldhealthorganization.github.io/ddcc/Questionnaire/DDCCHCIDRegistrationQuestionnaire

//see: https://developer.commure.com/docs/apis/sdc/examples/#retaining-ids-through-the-populate-and-extract-lifecycle

Profile:        DDCCQuestionnaireSDC
Parent:         sdc-questionnaire-pop-exp //see http://build.fhir.org/ig/HL7/sdc/StructureDefinition-sdc-questionnaire-pop-exp.html
Id:             DDCCQuestionnaireSDC
Title:          "DDCC Questionnaire based on SDC"
Description:    "DDCC Questionniare based on SDC Populatable Questionnaire with additional extension"

* item.extension contains $extractionContext named extractionContext 0..1
* item.item.extension contains $extractionContext named extractionContext 0..1 and 
            $populationContext named populationContext 0..1 and 
            $hiddenItem named hiddenItem 0..1

Instance:        DDCCHCIDRegistrationQuestionnaire
InstanceOf:         DDCCQuestionnaireSDC 
Usage: #definition
* id = "DDCCHCIDRegistrationQuestionnaire"
* url = $DDCCHCIDRegistrationQuestionnaireURL
* name = "DDCCHCIDRegistrationQuestionnaire" // computer ready name
* title = "DDCC HCID Registration Questionnaire"
* description = "DDCC HCID Registration Questionnaire"
* version = "0.1.0"
* status = #draft
* experimental = true
* date = "2021-06-03"
* extension[$launchContext].extension[name].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[$launchContext].extension[type].valueCode = #patient
* extension[$launchContext].extension[description].valueString = "Patient used in form pre-population"

* item[+].linkId = "name"
* item[=].text = "Patient Name"
* item[=].type = #string
* item[=].extension[$populationContext].valueExpression.description = "Patient Name"
* item[=].extension[$populationContext].valueExpression.language = #text/fhirpath
* item[=].extension[$populationContext].valueExpression.expression = "%patient.name"


* item[+].linkId = "birthDate"
* item[=].text = "Patient Date of Birth"
* item[=].type = #date
* item[=].extension[$populationContext].valueExpression.description = "Patient Date of Birth"
* item[=].extension[$populationContext].valueExpression.language = #text/fhirpath
* item[=].extension[$populationContext].valueExpression.expression = "%patient.birthDate"




* item[+].linkId = "hcid"
* item[=].text = "Health Certificate ID"
* item[=].type = #string
* item[=].required = true
* item[=].extension[extractionContext].valueExpression.description = "Health Certificate Identifier"
* item[=].extension[extractionContext].valueExpression.language = #text/fhirpath
* item[=].extension[extractionContext].valueExpression.expression = "http://hl7.org/fhir/StructureDefinition/List#List.identifier.system.value"

* item[=].item[+].linkId = "patientid"
* item[=].item[=].text = "Patient ID (internal)"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].extension[hiddenItem].valueBoolean = true
* item[=].item[=].extension[populationContext].valueExpression.description = "Health Certificate Identifier"
* item[=].item[=].extension[populationContext].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[populationContext].valueExpression.expression = "%patient.id"
* item[=].item[=].extension[extractionContext].valueExpression.description = "Health Certificate Identifier"
* item[=].item[=].extension[extractionContext].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[extractionContext].valueExpression.expression = "http://hl7.org/fhir/StructureDefinition/List#List.subject.reference"



