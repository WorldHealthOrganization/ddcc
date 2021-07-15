


Profile:        SHC_DocumentReference_QR
Parent: 	DocumentReference
Id:		shc-documentreference-qr
Title:		"SHC DocumentReference return for QR"
* category 1.. MS
* category from SHC_QR_Category_Usage_ValueSet (extensible)
* subject only Reference(SHC_Patient)
* authenticator 1.. MS
* authenticator only Reference(SHC_Organization)
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "format"
* content ^slicing.rules = #closed
* content ^slicing.ordered = true
* content.format 1.. MS
* content.format from SHC_QR_Format_ValueSet (extensible)
* content contains qrImage 1..1 MS and qrContent 1..1 MS
* content[qrImage].attachment.data 1..1 MS
* content[qrImage].attachment.contentType 1..1 MS
* content[qrImage].format = SHC_QR_Format_CodeSystem#image
* content[qrContent].attachment.data 1..1 MS
* content[qrContent].attachment.contentType 1..1 MS
* content[qrContent].format = SHC_QR_Format_CodeSystem#serialized


CodeSystem:     SHC_QR_Category_Usage_CodeSystem
Id:             SHC-QR-Category-Usage-CodeSystem
Title:          "SHC QR Category Usage Codes"
Description:    "Possible formats available for QR usage."
* #who          "WHO SVC"
* #dgc          "EU DGC"
* #icao         "ICAO"
* #au           "AU"

ValueSet:       SHC_QR_Category_Usage_ValueSet
Id:             SHC-QR-Category-Usage-ValueSet
Description: 	"Categorization of QR codes by their business usage"
* include codes from system SHC_QR_Category_Usage_CodeSystem


CodeSystem:     SHC_QR_Format_CodeSystem
Id:             SHC-QR-Format-CodeSystem
Title:          "SHC QR Format Codes"
Description:    "Possible formats available for QR data."
* #image        "Image"
* #serialized   "Serialized QR Content"

ValueSet:       SHC_QR_Format_ValueSet
Id:             SHC-QR-Format-ValueSet
Description: 	"Format of the representation of QR code"
* include codes from system SHC_QR_Format_CodeSystem
