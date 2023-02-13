Logical:        CertICAO
Title:          "Certificate - ICAO Visible Digital Seal Logical Model"
Description:    "Data elements for the ICAO Visible Digital Seal Core Data Set. Based on <https://www.icao.int/vdsnc-spec> as of 2023-02-02."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CertICAOVDS"
* ^version = "1"
* ^abstract = true
* ^status = #draft

* data 1..1 BackboneElement "Data"
  * hdr 1..1 BackboneElement "Header"
    * t 1..1 string "Type (either `icao.test` for proof of testing, or `icao.vacc` for proof of vaccination)"
    * v 1..1 integer "Version"
    * is 1..1 string "IssuingCountry (ISO-3166 three letter code; see element details)" "The three letter code is according to Doc 9303-3, which defines this as ISO-3166 country codes."
    * is from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)
  * msg 1..1 BackboneElement "Message"

    // pid used for both icao.test and icao.vacc
    * pid 1..1 BackboneElement "PersonalInformation (more info in element description)"
    * pid ^comment = "`pid.n`, `pid.dob`, `pid.dt`, and `pid.dn` are required for the `icao.test` type.\n\n`pid.n` and either `pid.i` or `pid.dob` are required for the `icao.vacc` type.\n\nCardinalities in the logical model for these elements are set to `0..1` to accommodate the different schemas for the two different credential types."
      * n 1..1 string "Name (Name of the holder (as specified in Doc 9303-3) MUST be used.)"
      * dob 0..1 date "Date of Birth (The DOB of the test subject. The [RFC 3339] full date format YYYY-MM- DD MUST be used.)"
      * dt 0..1 string "ID Document Type of the identity document (see element details)" "The ID Document Type of the identity document MUST be used. Only these values MUST be used:\n\n- `P` – Passport (Doc 9303-4)\n- `A` – ID Card (Doc 9303-5)\n- `C` – ID Card (Doc 9303-5)\n- `I` – ID Card Doc 9303-5)\n- `AC` - Crew Member Certificate (Doc 9303-5)\n- `V` – Visa (Doc 9303-7)\n- `D` – Driving License (ISO 18013-1)"
      * dn 1..1 string "ID Document Number of the identity document"
      * i 0..1 string "Travel Document Number"
      * ai 0..1 string "Other Document Number"
      * sex 0..1 string "Sex of the test subject (as specified in Doc 9303-4 Section 4.1.1.1 – Visual Inspection Zone)"


    // utci, sp, dat, and tr only used for icao.test
    * ucti 0..1 string "UTCI (Unique Test Certificate Identifier; used for `icao.test` only, not used of `icao.vacc`)"

    * sp 0..1 BackboneElement "ServiceProvider (Required for `icao.test` only, not used of `icao.vacc`)"
      * spn 1..1 string "Name of testing facility or service provider"
      * ctr 1..1 string "Country of test (spec does not indicate code system, but presumably this is ISO-3166 like the other country codes in the certificate)"
      * cd 1..1 BackboneElement "ContactDetails"
        * p 1..1 string "PhoneNumber"
        * e 1..1 string "Email"
        * a 1..1 string "Address"

    * dat 0..1 BackboneElement "DateTimeTestReport (Required for `icao.test` only, not used of `icao.vacc`)"
      * sc 1..1 dateTime  "SpecimenCollection (RFC3339)"
      * ri 1..1 dateTime  "ReportIssuance (RFC3339)"

    * tr 0..1 BackboneElement "TestResult (Required for `icao.test` only, not used of `icao.vacc`)"
      * tc 1..1 string  "TestConducted (see element details for allowed values)"
      * tc ^comment = "Allowed values:\n\n- `molecular(PCR)`\n- `molecular(other)\n-antigen`\n- `antibody`"
      * r 1..1 string  "Results (see element details for allowed values)"
      * r ^comment = "Allowed values:\n\n- `normal`\n- `abnormal`\n- `positive`\n- `negative`"
      * m 0..1 string  "Sampling method (see element details for allowed values)"
      * m ^comment = "Allowed values:\n\n- `nasopharyngeal`\n- `oropharyngeal`\n- `saliva`\n- `blood`\n- `other`"
    * opt 0..1 string "Optional data issued at the discretion of the issuing authority"


    // uvci and ve only used for icao.vacc
    * uvci 0..1 string "Unique Vaccination Certificate Identifier (Required for `icao.vacc` only, not used of `icao.test`)"

    * ve 0..* BackboneElement "VaccinationEvent (Required for `icao.vacc` only, not used of `icao.test`)"
      * des 1..1 string  "Vaccine or Prophylaxis (ICD-11 MMS code descending from http://id.who.int/icd/entity/164949870)"
      * des from WHO_DDCC_Vaccines_COVID_19 (required)
      * nam 1..1 string  "Vaccine Brand (medical product name)"
      * dis 0..1 string  "Disease or agent targeted (ICD-11 code)"
      * vd 1..* BackboneElement "VaccinationDetails"
        * dvc 1..1 date "Date of vaccination (see element details)" "Date on which the vaccine was administered. The ISO8601 full date format YYYY-MM-DD MUST be used."
        * seq 1..1 positiveInt "Dose number (vaccine dose number, integer between 1 and 99)"
        * ctr 1..1 string "Country of vaccination (ISO-3166 three letter code; see element details)" "The country in which the individual has been vaccinated. A three letter code identifying the issuing state or organization. The three letter code is according to Doc 9303-3, which defines this as ISO-3166 country codes."
        * ctr from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)
        * adm 1..1 string "Administering centre (The name or identifier of the vaccination facility)"
        * lot 1..1 string "Vaccine batch number"
        * dvn 0..1 date "Due date of next dose (see element details)" "Date on which the next 10 vaccination should be administered. The ISO8601 full date format YYYY-MM-DD MUST be used."

* sig 0..1 BackboneElement "Signature"
  * alg 1..1 string "SignatureAlgo"
  * cer 1..1 string "Certificate (X.509 signer certificate in base64url [RFC 4648])"
  * sigvl 1..1 string "SignatureValue (Signature value signed over the Data in base64url [RFC 4648])"