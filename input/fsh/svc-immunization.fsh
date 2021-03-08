Profile:        SVC_Immunization
Parent:         Immunization
Id:             svc-immunization
Title:          "SVC Immunization"
Description:    """ 
An SVC Immunization contains the content to be encoded in a QR-code on a row in the Vaccination Events section of the Paper SVC. While this is not a further profile of the IPS Immunization (due to the requirement of gender/sex in IPS in the IPS Patient profile), this is intended to map onto an IPS Immunization.

"""
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = true
* identifier contains Identifier_URN 1..1
* identifier[Identifier_URN].system 1..1
* identifier[Identifier_URN].value 1..1
* identifier[Identifier_URN].system = "urn:uuid"
* vaccineCode.coding 1..1
* vaccineCode.coding.system 1..1 MS
* vaccineCode.coding.code 1..1 MS
* vaccineCode.coding.system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
* vaccineCode.coding.code from who-svc-vaccines (required)
* ^abstract = true
* expirationDate MS
* lotNumber MS
* patient only Reference(SVC_Patient_Updated)
* occurrence[x] only dateTime
* performer 1.. MS
* performer.actor only Reference(SVC_Practitioner)
* protocolApplied 1.. MS
* protocolApplied ^slicing.discriminator.type = #type
* protocolApplied ^slicing.discriminator.path = "authority"
* protocolApplied ^slicing.rules = #open
* protocolApplied ^slicing.ordered = true
* protocolApplied contains ProtocolApplied_Authority 1.. MS
* protocolApplied[ProtocolApplied_Authority].authority  only Reference(SVC_Organization)
* protocolApplied[ProtocolApplied_Authority].targetDisease from WHO_SVC_Vaccines (required)
* ^abstract = false

