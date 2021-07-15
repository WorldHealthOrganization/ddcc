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


Profile:        SHC_Binary_QR
Parent: 	Binary
Id:		shc-binary-qr
Title:		"SHC Binary return for QR"
* ^abstract = true
* data 1..1 MS
//* extension contains SHCCertificateUsage named usage 1..1 MS

Profile:        SHC_Binary_QRPNG
Parent: 	SHC_Binary_QR
Id:		shc-binary-qrpng
Title:		"SHC Binary for QR (PNG representation)"
Description:	"""
PNG representation of the QR code returned under the [Register Health Certificate](transactions.html#register-health-certificate-message-semantics-response)
"""
* contentType = #image/png


Profile:        SHC_Binary_QRContent
Parent: 	SHC_Binary_QR
Id:		shc-binary-qrcontent
Title:		"SHC Binary for QR Content"
Description:	"""
PNG representation of the QR code returned under the [Register Health Certificate](transactions.html#register-health-certificate-message-semantics-response)
"""
* contentType = #application/octet-stream
* data 1..1 MS
