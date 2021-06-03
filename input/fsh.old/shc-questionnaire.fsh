Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap

Profile:        SHC_Questionnaire
Parent:         sdc-questionnaire-extr-smap
Id:             shc-questionnaire
Title:          "SHC Questionniare"
Description:    """ 
Describes the logical structure for a questionnaire associacted to a Smart Health Certificate which includes a Structure Map to generate the relevant SHC from a given [SHC QuestionnaireResponse](StructureDefintion-shc-questionnaire-response.html) which responds to the SHC Questionnaire.
"""
* ^abstract = true
* extension[$targetStructureMap] 1.. MS
// * extension[$targetStructureMap].valueCanonical = "http://who-int.github.io/svc/StructureMap/shc-bundle"

Profile:        SHC_QuestionnaireResponse
Parent:         sdc-questionnaireresponse
Id:             shc-questionnaireresponse
Title:          "SHC Questionnaire Response"
Description:    """ 
Describes the logical structure for a questionnaire response associacted to a [SHC Questionaire](StructureDefinition-shc-questionnaire.html). 
"""
* ^abstract = true





