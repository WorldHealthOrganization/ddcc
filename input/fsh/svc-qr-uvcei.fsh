Instance: SVC-QR-UVCEI
InstanceOf: StructureDefinition
Description: "Data elements from an immunuzation event identified by the UVCEI to be QR encoded"
Title: "SVC UVCEI QR" // user-friendly name
Usage: #definition

* name = "SVC-QR-UVCEI" // computer ready name
* url = "http://who-int.github.io/svc/refs/heads/rc2/SVC-QR-UVCEI"
* version = "0.1.0"
* kind = #resource
* abstract = false
* status = #draft
* type = "SVC-QR-UVCEI"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* derivation = #specialization

* differential.element[+].id = "SVC-QR-UVCEI"
* differential.element[=].path = "SVC-QR-UVCEI"
* differential.element[=].definition = "QR code associated to an SVC UVCEI"
* differential.element[=].min = 0
* differential.element[=].max = "*"


* differential.element[+].id = "SVC-QR-UVCEI.version"
* differential.element[=].path = "SVC-QR-UVCEI.version"
* differential.element[=].short = "Version"
* differential.element[=].definition = "Version/type of the SVC UVCEI"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string

* differential.element[+].id = "SVC-QR-UVCEI.vaccinecode"
* differential.element[=].path = "SVC-QR-UVCEI.vaccinecode"
* differential.element[=].short = "Vaccine Code"
* differential.element[=].definition = "Vaccine Code"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code

* differential.element[+].id = "SVC-QR-UVCEI.occurence"
* differential.element[=].path = "SVC-QR-UVCEI.occurence"
* differential.element[=].short = "Occurence"
* differential.element[=].definition = "Date vaccine was administered"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #date

* differential.element[+].id = "SVC-QR-UVCEI.status"
* differential.element[=].path = "SVC-QR-UVCEI.status"
* differential.element[=].short = "Status"
* differential.element[=].definition = "Status of course of vacccination"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code


* differential.element[+].id = "SVC-QR-UVCEI.protocol"
* differential.element[=].path = "SVC-QR-UVCEI.protocol"
* differential.element[=].short = "Vaccination Protocol"
* differential.element[=].definition = "Vaccination Protocol"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code

* differential.element[=].id = "SVC-QR-UVCEI.lot"
* differential.element[=].path = "SVC-QR-UVCEI.lot"
* differential.element[=].short = "Lot Number"
* differential.element[=].definition = "Lot number of the adminstered vaccine"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string

* differential.element[+].id = "SVC-QR-UVCEI.expiry"
* differential.element[=].path = "SVC-QR-UVCEI.expiry"
* differential.element[=].short = "Expiration Date"
* differential.element[=].definition = "Expiration Date of the vaccine"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #date

* differential.element[+].id = "SVC-QR-UVCEI.paperid"
* differential.element[=].path = "SVC-QR-UVCEI.paperid"
* differential.element[=].short = "Paper SVC Bundle Identifier"
* differential.element[=].definition = "Identifier of the [SVC Bundle](StructureDefinition-svc-bunclde.html) that represents the Paper SVC Card"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string

* differential.element[+].id = "SVC-QR-UVCEI.pha"
* differential.element[=].path = "SVC-QR-UVCEI.pha"
* differential.element[=].short = "Public Health Authority"
* differential.element[=].definition = "ID of the Public Health Authority"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code

* differential.element[+].id = "SVC-QR-UVCEI.hw"
* differential.element[=].path = "SVC-QR-UVCEI.hw"
* differential.element[=].short = "Health Worker"
* differential.element[=].definition = "ID of the Health Worker"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #code


* differential.element[+].id = "SVC-QR-UVCEI.patientid"
* differential.element[=].path = "SVC-QR-UVCEI.patientid"
* differential.element[=].short = "Patient ID"
* differential.element[=].definition = "ID of the Patient"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string

* differential.element[+].id = "SVC-QR-UVCEI.signature"
* differential.element[=].path = "SVC-QR-UVCEI.signature"
* differential.element[=].short = "SVC Signature"
* differential.element[=].definition = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type.code = #string




