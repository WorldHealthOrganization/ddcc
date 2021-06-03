Alias: $certificateUsage = http://who-int.github.io/svc/StructureDefinition/shc-binary-qr-certificateUsage

/*
Extension:    SHCCertificateUsage
Id:           SHC-CertificateUsage
Title:        "SHC Certificate Usage Extension"
Description:  "SHC Certificate Usage Extension"
* ^context.type = #element
* ^context.expression = "SHC_Binary_QR"
* extension contains usage 0..1 MS 
* extension[usage].value[x] only code
* extension[usage].valueCode 1..1 MS
*/


Profile:        DDCCBinaryQR
Parent: 	Binary
Id:		DDCCBinaryQR
Title:		"DDCCC Binary return for QR"
* ^abstract = true
* data 1..1 MS
//* extension contains SHCCertificateUsage named usage 1..1 MS

Profile:        DDCCBinaryQRPNG
Parent: 	DDCCBinaryQR
Id:        DDCCBinaryQRPNG
Title:		"SHC Binary for QR (PNG representation)"
Description:	"""
PNG representation of the QR code returned under the [Register Health Certificate](transactions.html#register-health-certificate-message-semantics-response)
"""
* contentType = #image/png


Profile:        DDCCBinaryQRContent
Parent: 	DDCCBinaryQR
Id:        DDCCBinaryQRContent
Title:		"DDCC Binary for QR Content"
Description:	"""
PNG representation of the QR code returned under the [Register Health Certificate](transactions.html#register-health-certificate-message-semantics-response)
"""
* contentType = #application/octet-stream
* data 1..1 MS
