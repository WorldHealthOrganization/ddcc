Instance: SVC-LM-QR-UVCI
InstanceOf: StructureDefinition
Description: "Data elements from SVC Bundle identified by the UVCI to be QR encoded"
Title: "SVC UVCI QR" // user-friendly name
Usage: #definition

* name = "SVC-LM-QR-UVCI" // computer ready name
* title = "SVC Logical Model for UVC QR code"
* description = "SVC QR Code for an Immunization card."
* url = "http://who-int.github.io/svc/refs/heads/rc2/SVC-LM-QR-UVCI"
* version = "0.1.0"
* kind = #logical
* abstract = false
* status = #draft
* type = "SVC-LM-QR-UVCI"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* derivation = #specialization

* differential.element[+].id = "SVC-LM-QR-UVCI"
* differential.element[=].path = "SVC-LM-QR-UVCI"
* differential.element[=].definition = "QR code associated to an SVC UVCI"
* differential.element[=].min = 0
* differential.element[=].max = "*"


* differential.element[+].id = "SVC-LM-QR-UVCI.version"
* differential.element[=].path = "SVC-LM-QR-UVCI.version"
* differential.element[=].short = "Version"
* differential.element[=].definition = "Version/type of the [SVC Compostion](StructureDefinition-svc-composition.html) document"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "RC-2-draft"

* differential.element[+].id = "SVC-LM-QR-UVCI.name"
* differential.element[=].path = "SVC-LM-QR-UVCI.name"
* differential.element[=].short = "Name"
* differential.element[=].definition = "Name of the [SVC Patient](StructureDefinition-svc-patient.html), if provided"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "Felix Cat"

* differential.element[+].id = "SVC-LM-QR-UVCI.birthDate"
* differential.element[=].path = "SVC-LM-QR-UVCI.birthDate"
* differential.element[=].short = "Date of Birth"
* differential.element[=].definition = "Date of birth of the [SVC Patient](StructureDefinition-svc-patient.html), if provided"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #date
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueDate = "2005-10-04"

* differential.element[+].id = "SVC-LM-QR-UVCI.patientid"
* differential.element[=].path = "SVC-LM-QR-UVCI.patientid"
* differential.element[=].short = "Paper SVC Patient Identifier"
* differential.element[=].definition = "Identifier of the [SVC Patient](StructureDefinition-svc-patient.html), if provided"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "NMCZ8B1KwsMgVo64bDn2"

* differential.element[+].id = "SVC-LM-QR-UVCI.paperid"
* differential.element[=].path = "SVC-LM-QR-UVCI.paperid"
* differential.element[=].short = "Paper SVC Bundle Identifier"
* differential.element[=].definition = "Identifier of the [SVC Bundle](StructureDefinition-svc-bunclde.html) that represents the Paper SVC Card"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "bMlJkAt0V92RYhhG3fNt"

 
* differential.element[+].id = "SVC-LM-QR-UVCI.digitalid"
* differential.element[=].path = "SVC-LM-QR-UVCI.digitalid"
* differential.element[=].short = "Digital SVC Composition Identifier"
* differential.element[=].definition = "Identifier of the [SVC Composition](StructureDefinition-svc-composition.html) that represents the Digital SVC Card"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "h1dZ75FMdY9EQQjE64O4"

* differential.element[+].id = "SVC-LM-QR-UVCI.pha"
* differential.element[=].path = "SVC-LM-QR-UVCI.pha"
* differential.element[=].short = "Public Health Authority"
* differential.element[=].definition = "ID of the Public Health Authority"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "cvm6wAX7QCop8ueK7vkPYp"

* differential.element[+].id = "SVC-LM-QR-UVCI.signature"
* differential.element[=].path = "SVC-LM-QR-UVCI.signature"
* differential.element[=].short = "SVC Signature"
* differential.element[=].definition = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCI Example"
* differential.element[=].example.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"




