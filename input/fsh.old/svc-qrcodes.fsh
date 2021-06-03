Profile:      SVCBasicQRCode
Parent:       Basic
Id:           SVC-Basic-QRCode
Title:        "SVC Basic QR Code resource"
Description:  "SVC Profile of Basic resource for QR Code."
* code = #adminact
* extension contains SVCQRCode named qrcode 1..1 MS

Extension:    SVCQRCode
Id:           SVC-QRCode
Title:        "SVC QRCode Extension"
Description:  "SVC QRCode Extension"
* ^context.type = #element
* ^context.expression = "SVCBasicQRCode"
* extension contains 
            version 0..1 MS and
            name 0..1 MS and
            birthDate 0..1 MS and
            patientid 0..1 MS and
            paperid 0..1 MS and
            digitalid 0..1 MS and
            signature 0..1 MS 

* extension[version].value[x] only string
* extension[version].valueString 1..1 MS
* extension[version].valueString ^label = "Version of the [SVC Bundle](StructureDefinition-svc-bundle.html) "

* extension[name].value[x] only string
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Name of Subject of Care"

* extension[birthDate].value[x] only date
* extension[birthDate].valueDate 1..1 MS
* extension[birthDate].valueDate ^label = "Date of birth of Subject of Care"

* extension[patientid].value[x] only string
* extension[patientid].valueString 1..1 MS
* extension[patientid].valueString ^label = "Paper SVC Patient Identifier"

* extension[paperid].value[x] only string
* extension[paperid].valueString 1..1 MS
* extension[paperid].valueString ^label = "Identifier of the [SVC Composition](StructureDefinition-svc-composition.html) that represents the Paper SVC Card"

* extension[digitalid].value[x] only string
* extension[digitalid].valueString 1..1 MS
* extension[digitalid].valueString ^label = "Identifier of the [SVC Composition](StructureDefinition-svc-composition.html) that represents the Digital SVC Card"

* extension[signature].value[x] only string
* extension[signature].valueString 1..1 MS
* extension[signature].valueString ^label = "Signature of the [SVC Bundle](StructureDefinition-svc-bundle.html) using a PHA's DSC"


Instance: svc-basic-qrcode-example
InstanceOf: SVCBasicQRCode
Description: "Example of data elements from SVC Bundle identified to be QR encoded"
Title: "SVC QR Example" // user-friendly name
Usage: #example

* code = #adminact
* extension[qrcode].extension[version].valueString = "RC-2-draft"
* extension[qrcode].extension[name].valueString = "Felix Cat"
* extension[qrcode].extension[birthDate].valueDate = "2003-01-02"
* extension[qrcode].extension[patientid].valueString = "NMCZ8B1KwsMgVo64bDn2"
* extension[qrcode].extension[digitalid].valueString = "h1dZ75FMdY9EQQjE64O4"
* extension[qrcode].extension[paperid].valueString = "bMlJkAt0V92RYhhG3fNt"
* extension[qrcode].extension[signature].valueString = "SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"

