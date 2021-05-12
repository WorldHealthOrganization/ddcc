
Extension:    SHCCertificateUsage
Id:           SHC-CertificateUsage
Title:        "SHC Certificate Usage Extension"
Description:  "SHC Certificate Usage Extension"
* ^context.type = #element
* ^context.expression = "SHC_DocumentReference_QR"
* value[x] only code
* valueCode 1..1 MS


Profile:        SHC_DocumentReference_QR
Parent: 	DocumentReference
Id:		shc-documentreference-qr
Title:		"SHC DocumentReference return for QR"
* ^abstract = true
* extension contains SHCCertificateUsage named usage 1..1 MS
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "format"
* content ^slicing.rules = #closed
* content ^slicing.ordered = true
* content contains qrImage 1..1 MS and qrContent 1..1 MS
* content[qrImage].attachment.data 1..1 MS
* content[qrImage].attachment.contentType 1..1 MS
* content[qrImage].format = SHC_QR_Format_CodeSystem#image
* content[qrContent].attachment.data 1..1 MS
* content[qrContent].attachment.contentType 1..1 MS
* content[qrContent].format = SHC_QR_Format_CodeSystem#serialized



CodeSystem:     SHC_QR_Format_CodeSystem
Id:             SHC-QR-Format-CodeSystem
Title:          "SHC QR Format Codes"
Description:    "Possible formats available for QR data."
* #image        "Image"
* #serialized   "Serialized QR Content"

ValueSet:       SHC_QR_Format_ValueSet
Id:             SHC-QR-Format-ValueSet
* include codes from system SHC_QR_Format_CodeSystem
