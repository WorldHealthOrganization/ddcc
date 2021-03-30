Instance: svc-qr-uvci
InstanceOf: StructureDefinition
Description: "Data elements from SVC Bundle identified by the UVCI to be QR encoded"
Title: "SVC UVCI QR" // user-friendly name
Usage: #definition

* name = "svc-qr-uvci" // computer ready name
* url = "http://who-int.github.io/svc/StructureDefinition/svc-qr-uvci"
* version = "0.1.0"
* kind = #logical
* abstract = false
* status = #draft
* type = "svc-qr-uvci"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "svc-qr-uvci"
* differential.element[0].path = "svc-qr-uvci"
* differential.element[0].definition = "QR code associated to an SVC UVCI"
* differential.element[0].min = 0
* differential.element[0].max = "*"

* differential.element[1].id = "svc-qr-uvci.elements"
* differential.element[1].path = "svc-qr-uvci.elements"
* differential.element[1].short = "QR Encoded Elements of SVC UVCI"
* differential.element[1].definition = "Elements of the [SVC Bundle](StructureDefinition-svc-bundle.html) which are QR-Encoded"
* differential.element[1].type.code = #BackboneElement
* differential.element[1].min = 0
* differential.element[1].max = "1"

* differential.element[2].id = "svc-qr-uvci.elements.name"
* differential.element[2].path = "svc-qr-uvci.elements.name"
* differential.element[2].short = "Name"
* differential.element[2].definition = "Name of SVC holder"
* differential.element[2].type.code = #string
* differential.element[2].min = 0
* differential.element[2].max = "1"

* differential.element[3].id = "svc-qr-uvci.elements.birthDate"
* differential.element[3].path = "svc-qr-uvci.elements.birthDate"
* differential.element[3].short = "Date of Birth"
* differential.element[3].definition = "Date of birth of SVC holder"
* differential.element[3].type.code = #date
* differential.element[3].min = 0
* differential.element[3].max = "1"

* differential.element[4].id = "svc-qr-uvci.elements.patientid"
* differential.element[4].path = "svc-qr-uvci.elements.patientid"
* differential.element[4].short = "Paper SVC Patient Identifier"
* differential.element[4].definition = "Identifier of the [SVC Patient](StructureDefinition-svc-patient.html) that represents the Paper SVC Card"
* differential.element[4].type.code = #string
* differential.element[4].min = 0
* differential.element[4].max = "1"

* differential.element[5].id = "svc-qr-uvci.elements.paperid"
* differential.element[5].path = "svc-qr-uvci.elements.paperid"
* differential.element[5].short = "Paper SVC Composition Identifier"
* differential.element[5].definition = "Identifier of the [SVC Composition](StructureDefinition-svc-composition.html) that represents the Paper SVC Card"
* differential.element[5].type.code = #string
* differential.element[5].min = 0
* differential.element[5].max = "1"

 
* differential.element[6].id = "svc-qr-uvci.elements.digitalid"
* differential.element[6].path = "svc-qr-uvci.elements.digitalid"
* differential.element[6].short = "Digital SVC Composition Identifier"
* differential.element[6].definition = "Identifier of the [SVC Composition](StructureDefinition-svc-composition.html) that represents the Digital SVC Card"
* differential.element[6].type.code = #string
* differential.element[6].min = 0
* differential.element[6].max = "1"


* differential.element[7].id = "svc-qr-uvci.elements.signature"
* differential.element[7].path = "svc-qr-uvci.elements.signature"
* differential.element[7].short = "SVC Signature "
* differential.element[7].definition = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"
* differential.element[7].type.code = #string
* differential.element[7].min = 0
* differential.element[7].max = "1"

* differential.element[8].id = "svc-qr-uvci.elements.version"
* differential.element[8].path = "svc-qr-uvci.elements.version"
* differential.element[8].short = "SVC Signature"
* differential.element[8].definition = "Version of the [SVC Bundle](StructureDefinition-svc-bundle.html) "
* differential.element[8].type.code = #string
* differential.element[8].min = 0
* differential.element[8].max = "1"




