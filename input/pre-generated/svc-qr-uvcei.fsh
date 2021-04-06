Instance: svc-qr-uvcei
InstanceOf: StructureDefinition
Description: "Data elements from an immunuzation event identified by the UVCEI to be QR encoded"
Title: "SVC UVCEI QR" // user-friendly name
Usage: #definition

* name = "svc-qr-uvcei" // computer ready name
* url = "http://who-int.github.io/svc/refs/heads/rc2/svc-qr-uvcei"
* version = "0.1.0"
* kind = #resource
* abstract = false
* status = #draft
* type = "svc-qr-uvcei"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* derivation = #specialization

* differential.element[0].id = "svc-qr-uvcei"
* differential.element[0].path = "svc-qr-uvcei"
* differential.element[0].definition = "QR code associated to an SVC UVCEI"
* differential.element[0].min = 0
* differential.element[0].max = "*"


* differential.element[1].id = "svc-qr-uvcei.version"
* differential.element[1].path = "svc-qr-uvcei.version"
* differential.element[1].short = "Version"
* differential.element[1].definition = "Version/type of the SVC UVCEI"
* differential.element[1].type.code = #string
* differential.element[1].min = 0
* differential.element[1].max = "1"

* differential.element[2].id = "svc-qr-uvcei.vaccinecode"
* differential.element[2].path = "svc-qr-uvcei.vaccinecode"
* differential.element[2].short = "Vaccine Code"
* differential.element[2].definition = "Vaccine Code"
* differential.element[2].type.code = #code
* differential.element[2].min = 0
* differential.element[2].max = "1"

* differential.element[3].id = "svc-qr-uvcei.occurence"
* differential.element[3].path = "svc-qr-uvcei.occurence"
* differential.element[3].short = "Occurence"
* differential.element[3].definition = "Date vaccine was administered"
* differential.element[3].type.code = #date
* differential.element[3].min = 0
* differential.element[3].max = "1"

* differential.element[4].id = "svc-qr-uvcei.status"
* differential.element[4].path = "svc-qr-uvcei.status"
* differential.element[4].short = "Status"
* differential.element[4].definition = "Status of course of vacccination"
* differential.element[4].type.code = #code
* differential.element[4].min = 0
* differential.element[4].max = "1"


* differential.element[5].id = "svc-qr-uvcei.protocol"
* differential.element[5].path = "svc-qr-uvcei.protocol"
* differential.element[5].short = "Vaccination Protocol"
* differential.element[5].definition = "Vaccination Protocol"
* differential.element[5].type.code = #code
* differential.element[5].min = 0
* differential.element[5].max = "1"

* differential.element[6].id = "svc-qr-uvcei.lot"
* differential.element[6].path = "svc-qr-uvcei.lot"
* differential.element[6].short = "Lot Number"
* differential.element[6].definition = "Lot number of the adminstered vaccine"
* differential.element[6].type.code = #string
* differential.element[6].min = 0
* differential.element[6].max = "1"

* differential.element[7].id = "svc-qr-uvcei.expiry"
* differential.element[7].path = "svc-qr-uvcei.expiry"
* differential.element[7].short = "Expiration Date"
* differential.element[7].definition = "Expiration Date of the vaccine"
* differential.element[7].type.code = #date
* differential.element[7].min = 0
* differential.element[7].max = "1"



* differential.element[8].id = "svc-qr-uvcei.paperid"
* differential.element[8].path = "svc-qr-uvcei.paperid"
* differential.element[8].short = "Paper SVC Bundle Identifier"
* differential.element[8].definition = "Identifier of the [SVC Bundle](StructureDefinition-svc-bunclde.html) that represents the Paper SVC Card"
* differential.element[8].type.code = #string
* differential.element[8].min = 0
* differential.element[8].max = "1"

* differential.element[9].id = "svc-qr-uvcei.pha"
* differential.element[9].path = "svc-qr-uvcei.pha"
* differential.element[9].short = "Public Health Authority"
* differential.element[9].definition = "ID of the Public Health Authority"
* differential.element[9].type.code = #code
* differential.element[9].min = 0
* differential.element[9].max = "1"

* differential.element[10].id = "svc-qr-uvcei.hw"
* differential.element[10].path = "svc-qr-uvcei.hw"
* differential.element[10].short = "Health Worker"
* differential.element[10].definition = "ID of the Health Worker"
* differential.element[10].type.code = #code
* differential.element[10].min = 0
* differential.element[10].max = "1"


* differential.element[10].id = "svc-qr-uvcei.patientid"
* differential.element[10].path = "svc-qr-uvcei.patientid"
* differential.element[10].short = "Patient ID"
* differential.element[10].definition = "ID of the Patient"
* differential.element[10].type.code = #string
* differential.element[10].min = 0
* differential.element[10].max = "1"

* differential.element[11].id = "svc-qr-uvcei.signature"
* differential.element[11].path = "svc-qr-uvcei.signature"
* differential.element[11].short = "SVC Signature"
* differential.element[11].definition = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* differential.element[11].type.code = #string
* differential.element[11].min = 0
* differential.element[11].max = "1"




