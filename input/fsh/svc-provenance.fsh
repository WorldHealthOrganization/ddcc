Profile:        SVC_Provenance
Parent:         Provenance 
Id:             svc-provenance
Title:          "Provenance of SVC"
Description:    """ 
Used to assert the provenance of a Public Health Auhority (PHA) over either a Paper or a Digital Smart Vaccination Card (SVC). This profile is not intended to be instantiated directly, rather a  [Provenance of an New Digital SVC](StructureDefinition-svc-provenance-digital-new.html), or a [Provenance of an Updated Digital SVC](StructureDefinition-svc-provenance-digital-updated.html), or a [Provenance of an Paper SVC](StructureDefinition-svc-provenance-paper.html) should be used.

"""
* reason = #PUBHLTH
* policy = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1"
* target 1..1
* entity 1..
* entity ^slicing.discriminator.type = #type
* entity ^slicing.discriminator.path = "what"
* entity ^slicing.rules = #open
* entity ^slicing.ordered = true
* entity contains Provenance_Entity 1.. MS
* entity[Provenance_Entity].what only Reference(SVC_Composition)
* agent 1..
* agent ^slicing.discriminator.type = #type
* agent ^slicing.discriminator.path = "who"
* agent ^slicing.rules = #open
* agent ^slicing.ordered = true
* agent contains Provenance_Agent 1.. MS
* agent[Provenance_Agent].who 1..1
* agent[Provenance_Agent].who only Reference(SVC_Organization)
* agent[Provenance_Agent].onBehalfOf 1..1 
* agent[Provenance_Agent].onBehalfOf only Reference(SVC_Patient)
* ^abstract = true




Profile:        SVC_Provenance_Paper
Parent:         SVC_Provenance
Id:             svc-provenance-paper
Title:		"Provenance of a Paper SVC"
Description:    """ 
The [Provenance of a Paper SVC](StructureDefinition-svc-provenance-paper.html) is used to assert the provenance of a Public Health Auhority (PHA) over a Paper SVC document at time of printing. A Paper SVC document may be a newly issued  or it may be a re-issue of an existing SVC document.

When a new Paper SVC is printed, the following rules apply:
 * generate a [New SVC Patient](StructureDefinition-svc-patient-new.html) and a [New SVC Composition](StructureDefinition-svc-composition-new.html) resource 
 * set the [agent.onBehalfOf](StructureDefinition-svc-provenance-paper-definitions.html#Provenance.agent.onBehalfOf) to reference the generated [New SVC Patient](StructureDefinition-svc-patient-new.html) resource 
 * set the [agent.who]](StructureDefinition-svc-provenance-paper-definitions.html#Provenance.agent.who) to reference the Organization resource associated to the PHA via the WHO Smart Directory
 * set the [entity.what](StructureDefinition-svc-provenance-paper-definitions.html#Provenance.entity.what) to reference the generated [New SVC Composition](StructureDefinition-svc-composition-new.html) resource

"""
* entity contains Provenance_Paper_Entity 1..1
* entity[Provenance_Paper_Entity].role = #derived
* entity[Provenance_Paper_Entity].what only Reference(SVC_Composition_New)
* agent.onBehalfOf only Reference(SVC_Patient_New)
* ^abstract = false





Profile:        SVC_Provenance_Digital
Parent:         SVC_Provenance
Id:             svc-provenance-digital
Title:          "Provenance of a Digital SVC"
Description:    """ 
Abstraction for the Provenance of a Digital SVC.  This profile is not intended to be instantiated directly, rather a   [Provenance of an New Digital SVC](StructureDefinition-svc-provenance-digital-new.html), or a [Provenance of an Updated Digital SVC](StructureDefinition-svc-provenance-digital-updated.html) should be used.

Non-digital content in a Paper SVC may be digitized by a PHA by any of the following methods:
  * Issue and print a QR-sticker which encodes an updated SVC Bundle  to place on the front page of the Paper SVC.  
  * The issuing PHA may re-issue and print a new Paper SVC such that:
      * the QR-code on the front page encodes an [Updated SVC Bundle](StructureDefinition-svc-bundle-updated.html).
      * the demographic content on the front page is printed with the content transferred from the Paper SVC to an [Updated SVC Patient](StructureDefinition-svc-bundle-updated.html).

"""
* ^abstract = true






Profile:        SVC_Provenance_Digital_New
Parent:         SVC_Provenance_Digital
Id:             svc-provenance-digital-new
Title:          "Provenance of a New Digital SVC"
Description:    """ 
The Provenance of a New Digital SVC is used to assert the provenance of a Public Health Auhority (PHA) over a new Digital SVC document.  

The [Provencance of a New Digital SVC](StructureDefinition-svc-provenance-digital-new.html)  should:
 * be generated at the time of printing a new Paper SVC
 * have as target a [New SVC Composition](StructureDefinition-svc-composition-new.html)
 * set the [role](StructureDefinition-svc-provenance-paper-definitions.html#role)  to #derived
 * set the [entity.what](StructureDefinition-svc-provenance-digital-new-definitions.html#Provenance.entity.what) to reference the generated [New SVC Composition](StructureDefinition-svc-composition-new.html) resource
 * set the [agent.onBehalfOf](StructureDefinition-svc-provenance-new-definitions.html#Provenance.agent.onBehalfOf) to reference the generated [New SVC Patient](StructureDefinition-svc-patient-new.html) resource 
"""
* entity contains Provenance_Digital_New_Entity 1..1
* entity[Provenance_Digital_New_Entity].role = #derived
* entity[Provenance_Digital_New_Entity].what only Reference(SVC_Composition_New)
* agent.onBehalfOf only Reference(SVC_Patient_New)
* target only Reference(SVC_Composition_New)
* ^abstract = false


Profile:        SVC_Provenance_Digital_Updated
Parent:         SVC_Provenance_Digital
Id:             svc-provenance-digital-updated
Title:          "Provenance of an Updated Digital SVC"
Description:    """ 
The Provenance of a Digital SVC is used to assert the provenance of a Public Health Auhority (PHA) over an updated Digital SVC document.  

The Provenance of an Updated Digital SVC should:
 * contain the [Updated SVC Patient](StructureDefinition-svc-patient-updated.html) demographic content tranferred from a Paper SVC
 * contain the [Updated SVC Immunization](StructureDefinition-svc-immunization.html) content tranferred from a Paper SVC 
 * be generated by a PHA when a Paper SVC document is printed by a PHA, in which case:
 * set the [entity.what](StructureDefinition-svc-provenance-digital-updated-definitions.html#Provenance.entity.what) to reference the generated [Updated SVC Composition](StructureDefinition-svc-composition-updated.html) resource associated to Paper SVC
 * set the [role](StructureDefinition-svc-provenance-digital-updated-definitions.html#role)  to #derived


"""
* entity ^slicing.discriminator.type = #type
* entity ^slicing.discriminator.path = "what"
* entity ^slicing.rules = #open
* entity ^slicing.ordered = true
* entity contains Provenance_Digital_Updated_Entity 1..1
* entity[Provenance_Digital_Updated_Entity].role =  #derived
* entity[Provenance_Digital_Updated_Entity].what only Reference(SVC_Composition_Updated)
* agent.onBehalfOf only Reference(SVC_Patient_Updated)
* ^abstract = false




