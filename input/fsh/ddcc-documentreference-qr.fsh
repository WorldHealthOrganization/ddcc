Profile:      DDCCDocumentReferenceQR
Parent:       DocumentReference
Id:           DDCCDocumentReferenceQR
Title:        "DDCC DocumentReference return for QR"
Description:  "DDCC DocumentReference for QR codes including the QR image and the serialized content."
* type 1.. MS
* type from DDCC_QR_Type_ValueSet (extensible)
* subject only Reference(DDCCPatient)
* authenticator 1.. MS
* authenticator only Reference(DDCCOrganization)
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "format"
* content ^slicing.rules = #closed
* content 2..* MS
* content.format from DDCC_QR_Format_ValueSet (extensible)
* content contains qrImage 1..* MS and qrContent 1..1 MS and qrPDF 0..1 MS
* content[qrImage].attachment.data 1..1 MS
* content[qrImage].attachment.contentType 1..1 MS
* content[qrImage].format = DDCC_QR_Format_CodeSystem#image
* content[qrContent].attachment.data 1..1 MS
* content[qrContent].attachment.contentType 1..1 MS
* content[qrContent].format = DDCC_QR_Format_CodeSystem#serialized
* content[qrPDF].attachment.data 1..1 MS
* content[qrPDF].attachment.contentType 1..1 MS
* content[qrPDF].format = DDCC_QR_Format_CodeSystem#pdf


CodeSystem:     DDCC_QR_Type_CodeSystem
Id:             DDCC-QR-Type-CodeSystem
Title:          "DDCC QR Category Usage Codes"
Description:    "Possible formats available for QR usage."
* #who          "WHO DDCC"
* #dcc          "EU DCC"
* #icao         "ICAO"
* #au           "AU"
* #shc          "SMART Health Card"
* #divoc        "DIVOC"

ValueSet:       DDCC_QR_Type_ValueSet
Id:             DDCC-QR-Type-ValueSet
Title:          "DDCC QR Type Codes"
Description: 	"Type of QR codes by their business usage"
* include codes from system DDCC_QR_Type_CodeSystem


CodeSystem:     DDCC_QR_Format_CodeSystem
Id:             DDCC-QR-Format-CodeSystem
Title:          "DDCC QR Format Codes"
Description:    "Possible formats available for QR data."
* #image        "Image"
* #serialized   "Serialized QR Content"
* #pdf          "PDF version of the QR image"

ValueSet:       DDCC_QR_Format_ValueSet
Id:             DDCC-QR-Format-ValueSet
Title:          "DDCC QR Format Codes"
Description: 	"Format of the representation of QR code"
* include codes from system DDCC_QR_Format_CodeSystem
