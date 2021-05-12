Alias $certificateUsage = http://who-int.github.io/svc/StructureDefinition/shc-binary-qr-certificateUsage


Instance:       SHC_Binary_QR_CertificateUsage
InstanceOf:     StructureDefinition
Description:    "Extension indicating intended usage of QR content"
Title:          "Usage extension for SHC"
Usage:          #definition



Profile:        SHC_Binary_QR
Parent: 	Binary
Id:		shc-binary-qr
Title:		"SHC Binary return for QR"
* ^abstract = true
* data 1..1 MS
* extension[$SHCCertificateUsage].valueCode 1.. MS


Profile:        SHC_Binary_QRPNG
Parent: 	SHC_Binary_QR
Id:		shc-binary-qrpng
Title:		"SHC Binary for QR (PNG representation)"
Description:	"""
PNG representation of the QR code returned under the [Register Health Certificate](transactions.html#register-health-certificate-message-semantics-response)
"""
* contentType = "image/png"


Profile:        SHC_Binary_QRContent
Parent: 	SHC_Binary_QR
Id:		shc-binary-qrpng
Title:		"SHC Binary for QR Content"
Description:	"""
PNG representation of the QR code returned under the [Register Health Certificate](transactions.html#register-health-certificate-message-semantics-response)
"""
* contentType = "image/png"
* data 1..1 MS
