


Profile:      DDCCDocumentReferenceQR
Parent:       DocumentReference
Id:           DDCCDocumentReferenceQR
Title:        "DDCC DocumentReference return for QR"
* category 1.. MS
* category from DDCC_QR_Category_Usage_ValueSet (extensible)
* subject only Reference(DDCCPatient)
* authenticator 1.. MS
* authenticator only Reference(DDCCOrganization)
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "format"
* content ^slicing.rules = #closed
* content ^slicing.ordered = true
* content.format 1.. MS
* content.format from DDCC_QR_Format_ValueSet (extensible)
* content contains qrImage 1..1 MS and qrContent 1..1 MS
* content[qrImage].attachment.data 1..1 MS
* content[qrImage].attachment.contentType 1..1 MS
* content[qrImage].format = DDCC_QR_Format_CodeSystem#image
* content[qrContent].attachment.data 1..1 MS
* content[qrContent].attachment.contentType 1..1 MS
* content[qrContent].format = DDCC_QR_Format_CodeSystem#serialized


CodeSystem:     DDCC_QR_Category_Usage_CodeSystem
Id:             DDCC-QR-Category-Usage-CodeSystem
Title:          "DDCC QR Category Usage Codes"
Description:    "Possible formats available for QR usage."
* #who          "WHO SVC"
* #dgc          "EU DGC"
* #icao         "ICAO"
* #au           "AU"

ValueSet:       DDCC_QR_Category_Usage_ValueSet
Id:             DDCC-QR-Category-Usage-ValueSet
Description: 	"Categorization of QR codes by their business usage"
* include codes from system DDCC_QR_Category_Usage_CodeSystem


CodeSystem:     DDCC_QR_Format_CodeSystem
Id:             DDCC-QR-Format-CodeSystem
Title:          "DDCC QR Format Codes"
Description:    "Possible formats available for QR data."
* #image        "Image"
* #serialized   "Serialized QR Content"

ValueSet:       DDCC_QR_Format_ValueSet
Id:             DDCC-QR-Format-ValueSet
Description: 	"Format of the representation of QR code"
* include codes from system DDCC_QR_Format_CodeSystem
