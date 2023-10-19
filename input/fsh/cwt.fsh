

Logical:        COSE_Header
Title:          "COSE Headers"
Description:    "Data elements for COSE Headers https://www.iana.org/assignments/cose/cose.xhtml#header-parameters"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/COSE_Header"
* ^version = "RC2"
* ^status = #draft

* 1 0..1 string "Encryption Algorithm" "alg(1)"
* 4 0..1 string "Key ID used to verify the signature of the certificate" "keyid (4)"



Logical:        HCert
Title:          "Health Certificate"
Description:    "Data elements for the DDCC Core Data Set as CWT for Vaccination."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/HCert"
* ^version = "RC2"
* ^status = #draft
* 1 0..1 HCertDCC "EU DCC"  "EU DCC"
* 2 0..1 DDCCCoreDataSet_VS "Vaccination Core Data Set claim" "DDCC Vaccination claim"
* 3 0..1 DDCCCoreDataSet_TR "Vaccination Core Data Set claim" "DDCC Test Result claim"



Logical:       CWT_Payload
Title:	       "CWT Payload (Common)"
Description:   "Common feilds in DDCC CWT Payload https://www.iana.org/assignments/cwt/cwt.xhtml"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_Payload"
* ^version = "RC2"
* ^status = #draft

* 1 0..1 Coding "Issuer Code (iss)" "Issuer"
* 4 0..1 dateTime "Expiration Date Time(exp)" "Expiration Time"
* 6 0..1 dateTime "Issued At (iat)" "Issued At"
* -260 0..1 HCertDCC "Health Certificate" "HCert"


Logical:        CWT
Title:          "CBOR Web Token (CWT) Claim"
Description:    "Data elements for CWT"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft
* header 0..1 COSE_Header "COSE Header" "Header"
* payload 0..1 CWT_Payload "CWT Payload"  "Payload"
* signature 0..1 string "Signature" "Signature"
