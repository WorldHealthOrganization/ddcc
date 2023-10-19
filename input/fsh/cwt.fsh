

Logical:        COSE_Header
Title:          "COSE Headers"
Description:    "Data elements for COSE Headers https://www.iana.org/assignments/cose/cose.xhtml#header-parameters"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/COSE_Header"
* ^version = "RC2"
* ^status = #draft

* 1 0..1 string "Encryption Algorithm" "alg(1)"
* 4 0..1 string "Key ID used to verify the signature of the certificate" "keyid (4)"

Logical:        CWT
Title:          "CBOR Web Token (CWT) Claim"
Description:    "Data elements for CWT"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft
* header 0..1 COSE_Header "COSE Header" "Header"


Logical:       CWT_Payload
Title:	       "CWT Payload (Common)"
Description:   "Common feilds in DDCC CWT Payload https://www.iana.org/assignments/cwt/cwt.xhtml"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_Payload"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft

* 1 0..1 Coding "Issuer Code (iss)" "Issuer"
* 4 0..1 dateTime "Expiration Date Time(exp)" "Expiration Time"
* 6 0..1 dateTime "Issued At (iat)" "Issued At"



Logical:        CWT_Payload_DDCC_VS
Parent: 	CWT_Payload
Title:          "DDCC CBOR Web Token (CWT) Claim for VS"
Description:    "Data elements for the DDCC Core Data Set as CWT for Vaccination."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_Payload_DDCC_VS"
* ^version = "RC2"
* ^status = #draft

* -255 1..1 DDCCCoreDataSet_VS "Vaccination Core Data Set claim" "Vaccination claim"


Logical:        CWT_Payload_DDCC_TR
Parent: 	CWT_Payload
Title:          "DDCC CBOR Web Token (CWT) Claim for TR"
Description:    "Data elements for the DDCC Core Data Set as CWT for Test Results."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_Payload_TR"
* ^version = "RC2"
* ^status = #draft

* -254 1..1 DDCCCoreDataSet_TR "Test Result Core Data Set claim" "Test Result claim"

Logical:        CWT_Payload_HCert
Parent: 	CWT_Payload
Title:          "DDCC CBOR Web Token (CWT) Claim for EU DCC"
Description:  "See https://github.com/ehn-dcc-development/eu-dcc-hcert-spec/blob/main/hcert_spec.md  Note: it seems like epochs are inconsistent with the RFC8392 spec, but it's clear the EU DCC spec wants to use epochs so that's what we're doing here. "

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_Payload_HCert"
* ^version = "RC2"
* ^status = #draft

* -260 1..1 HCertDCC "HCert" "EU DCC HCert"




Logical:      CWT_DDCC_VS
Parent:	      CWT
Title:	      "DDCC CWT for Vaccination Status"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_DDCC_VS"
* ^version = "RC2"
* ^status = #draft
* payload 0..1 CWT_Payload_DDCC_VS "DDCC VS Payload"

Logical:      CWT_DDCC_TR
Parent:	      CWT
Title:	      "DDCC CWT for Test Results"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_DDCC_TR"
* ^version = "RC2"
* ^status = #draft
* payload 0..1 CWT_Payload_DDCC_TR "DDCC TR Payload"

Logical:      CWT_HCert
Parent:	      CWT
Title:	      "DDCC CWT for Test Results"

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CWT_HCert"
* ^version = "RC2"
* ^status = #draft
* payload 0..1 CWT_Payload_HCert "HCert Payload"

