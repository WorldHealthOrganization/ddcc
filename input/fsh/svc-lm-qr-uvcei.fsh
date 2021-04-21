Instance: SVC-LM-QR-UVCEI
InstanceOf: StructureDefinition
Description: "Data elements from an immunuzation event identified by the UVCEI to be QR encoded"
Title: "SVC UVCEI QR" // user-friendly name
Usage: #definition

* name = "SVC-LM-QR-UVCEI" // computer ready name
* title = "SVC Logical Model for UVCEI QR code"
* description = "SVC QR Code for an Immunization event."
* url = "http://who-int.github.io/svc/refs/heads/rc2/SVC-LM-QR-UVCEI"
* version = "0.1.0"
* kind = #logical
* abstract = false
* status = #draft
* type = "SVC-LM-QR-UVCEI"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* derivation = #specialization

* differential.element[+].id = "SVC-LM-QR-UVCEI"
* differential.element[=].path = "SVC-LM-QR-UVCEI"
* differential.element[=].definition = "QR code associated to an SVC UVCEI"
* differential.element[=].min = 0
* differential.element[=].max = "*"


* differential.element[+].id = "SVC-LM-QR-UVCEI.version"
* differential.element[=].path = "SVC-LM-QR-UVCEI.version"
* differential.element[=].short = "Version"
* differential.element[=].definition = "Version/type of the SVC UVCEI"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "RC-2-draft"

* differential.element[+].id = "SVC-LM-QR-UVCEI.vaccinecode"
* differential.element[=].path = "SVC-LM-QR-UVCEI.vaccinecode"
* differential.element[=].short = "Vaccine Code"
* differential.element[=].definition = "Vaccine Code"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code

* differential.element[+].id = "SVC-LM-QR-UVCEI.occurence"
* differential.element[=].path = "SVC-LM-QR-UVCEI.occurence"
* differential.element[=].short = "Occurence"
* differential.element[=].definition = "Date vaccine was administered"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #date
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueDate = "2021-04-01"

* differential.element[+].id = "SVC-LM-QR-UVCEI.status"
* differential.element[=].path = "SVC-LM-QR-UVCEI.status"
* differential.element[=].short = "Status"
* differential.element[=].definition = "Status of course of vacccination"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code


* differential.element[+].id = "SVC-LM-QR-UVCEI.protocol"
* differential.element[=].path = "SVC-LM-QR-UVCEI.protocol"
* differential.element[=].short = "Vaccination Protocol"
* differential.element[=].definition = "Vaccination Protocol"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code

* differential.element[=].id = "SVC-LM-QR-UVCEI.lot"
* differential.element[=].path = "SVC-LM-QR-UVCEI.lot"
* differential.element[=].short = "Lot Number"
* differential.element[=].definition = "Lot number of the adminstered vaccine"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "ER8732"

* differential.element[+].id = "SVC-LM-QR-UVCEI.expiry"
* differential.element[=].path = "SVC-LM-QR-UVCEI.expiry"
* differential.element[=].short = "Expiration Date"
* differential.element[=].definition = "Expiration Date of the vaccine"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #date
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueDate = "2021-06-30"

* differential.element[+].id = "SVC-LM-QR-UVCEI.paperid"
* differential.element[=].path = "SVC-LM-QR-UVCEI.paperid"
* differential.element[=].short = "Paper SVC Bundle Identifier"
* differential.element[=].definition = "Identifier of the [SVC Bundle](StructureDefinition-SVC-LM-bunclde.html) that represents the Paper SVC Card"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "bMlJkAt0V92RYhhG3fNt"

* differential.element[+].id = "SVC-LM-QR-UVCEI.pha"
* differential.element[=].path = "SVC-LM-QR-UVCEI.pha"
* differential.element[=].short = "Public Health Authority"
* differential.element[=].definition = "ID of the Public Health Authority"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "cvm6wAX7QCop8ueK7vkPYp"

* differential.element[+].id = "SVC-LM-QR-UVCEI.hw"
* differential.element[=].path = "SVC-LM-QR-UVCEI.hw"
* differential.element[=].short = "Health Worker"
* differential.element[=].definition = "ID of the Health Worker"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "dPD2PfwzBQyphcjeUiAdRP"


* differential.element[+].id = "SVC-LM-QR-UVCEI.patientid"
* differential.element[=].path = "SVC-LM-QR-UVCEI.patientid"
* differential.element[=].short = "Patient ID"
* differential.element[=].definition = "ID of the Patient"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "NMCZ8B1KwsMgVo64bDn2"

* differential.element[+].id = "SVC-LM-QR-UVCEI.signature"
* differential.element[=].path = "SVC-LM-QR-UVCEI.signature"
* differential.element[=].short = "SVC Signature"
* differential.element[=].definition = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string
* differential.element[=].example.label = "SVC QR UVCEI Example"
* differential.element[=].example.valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"




