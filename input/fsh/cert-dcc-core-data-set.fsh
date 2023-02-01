Logical:         CertDCC
Title:           "Certificate - EU DCC CBOR Web Token Logical Model"
Description:     "Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads <https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf> as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1>."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/CertDCC"
* ^version = "1"
* ^abstract = true
* ^status = #draft

/*
Per https://health.ec.europa.eu/system/files/2022-02/digital-covid-certificates_v1_en.pdf,
the payload structure and CWT Claims are described in "Implementing Decision (EU) 2021/1073, Annex 1".

This can be accessed here:
https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1

This says:

    The payload is structured and encoded as a CBOR with a COSE digital signature. This is commonly known as a "CBOR Web Token" (CWT), and is defined in RFC 8392 (1). The payload, as defined in the following sections, is transported in a hcert claim.

    ...

    Payload
    — Issuer (iss, claim key 1, optional, ISO 3166-1 alpha-2 of issuer)
    — Issued At (iat, claim key 6)
    — Expiration Time (exp, claim key 4)
    — Health Certificate (hcert, claim key -260)
    — EU Digital COVID Certificate v1 (eu_DCC_v1, claim key 1)

Related to `exp` and `iat`, the spec says:

    ...shall hold a timestamp in the integer NumericDate format (as specified in RFC 8392 (5), section 2) indicating...

RFC8392 (https://www.rfc-editor.org/rfc/rfc8392.html) says:

    NumericDate
      The "NumericDate" term in this specification has the same meaning
      and processing rules as the JWT "NumericDate" term defined in
      Section 2 of [RFC7519], except that it is represented as a CBOR
      numeric date (from Section 2.4.1 of [RFC7049]) instead of a JSON
      number.  The encoding is modified so that the leading tag 1
      (epoch-based date/time) MUST be omitted.

RFC7049 says:

    2.4.1.  Date and Time

      Tag value 0 is for date/time strings that follow the standard format
      described in [RFC3339], as refined by Section 3.3 of [RFC4287].

      Tag value 1 is for numerical representation of seconds relative to
      1970-01-01T00:00Z in UTC time.  (For the non-negative values that the
      Portable Operating System Interface (POSIX) defines, the number of
      seconds is counted in the same way as for POSIX "seconds since the
      epoch" [TIME_T].)  The tagged item can be a positive or negative
      integer (major types 0 and 1), or a floating-point number (major type
      7 with additional information 25, 26, or 27).  Note that the number
      can be negative (time before 1970-01-01T00:00Z) and, if a floating-
      point number, indicate fractional seconds.

The example EU-DCC credentials we have use epoch times for iat and exp.

It seems like epochs are inconsistent with the RFC8392 spec, but it's clear the EU DCC spec wants
to use epochs so that's what we're doing here.
*/

// Claim key=1; name=iss
// TODO: Replace `iss` with `1` below once allowed by SUSHI
* iss 0..1 string "Issuer"

// Claim key=6; name=iat
// TODO: Replace `iat` with `6` below once allowed by SUSHI
* iat 1..1 positiveInt "Issued At (epoch)"

// Claim key=4; name=exp
// TODO: Replace `exp` with `4` below once allowed by SUSHI
// Unclear if this is required or not in the spec.
* exp 0..1 positiveInt "Expiration Time (epoch)"

// Claim key=-260; name=hcert; Defined at https://www.iana.org/assignments/cwt/cwt.xhtml
// TODO: Replace `hcert` with `-260` below once allowed by SUSHI
* hcert 1..1 BackboneElement "Health Certificate"

  // Claim key=1; name=eu_dgc_v1
  // TODO: Replace `eu_DCC_v1` with `1` once allowed by SUSHI
  * eu_DCC_v1 1..1 BackboneElement "EU Digital COVID Certificate v1"

    // https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf - page 5
    * ver 1..1 string "Schema version"
    * nam 1..1 BackboneElement "Person name"
      * fn 0..1 string "Surname/family name (separate multiple with spaces)"
      * fn ^comment = "Example from spec: \"Musterfrau-Gößinger Müller\""
      * fnt 1..1 string "Standardised surname"
      * fnt ^comment = "\"Surname(s) of the holder transliterated using the same convention as the one used in the holder’s machine readable travel documents (such as the rules defined in ICAO Doc 9303 Part 3). Exactly 1 (one) non-empty field MUST be provided, only including characters A-Z and <. Maximum length: 80 characters (as per ICAO 9303 specification).\""
      * gn 0..1 string "Forename/given name. Skip if no given name. Separate with spaces."
      * gnt 0..1 string "Standardised forename, same approach as fnt. Skip if no given name."
    * dob 0..1 date "Date of birth in YYYY-MM-DD format. Skip if missing. Fill unknown months or days with 'XX'."

    // Vaccination group -------------------------------------------------------
    * v 0..* BackboneElement "Vaccination Group"
    * v ^comment = "According to the spec, \"Vaccination group, if present, MUST contain exactly 1 (one) entry describing exactly one vaccination event. All elements of the vaccination group are mandatory, empty values are not supported.\" It appears this means the maximum cardinality of the `v` element is 1, and all sub-elements have minimum cardinality of 1."
      * tg 1..1 string "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant)"
      * vp 1..1 string "Vaccine or prophylaxis (e.g., 'SARS-CoV-2 mRNA vaccine')"
      * mp 1..1 string "Vaccine product (e.g., 'Comirnaty')"
      * ma 1..1 string "Vaccine marketing authorisation holder or manufacturer (e.g., 'ORG-100030215' (Biontech Manufacturing GmbH))"
      * ma ^comment = "If marketing authorisation holder is not available, this will be the manufacturer."
      * dn 1..1 positiveInt "Number in a series of doses"
      * sd 1..1 positiveInt "The overall number of doses in the series"
      * dt 1..1 date "Date of vaccination, YYYY-MM-DD format"
      * co 1..1 string "Country where vaccine was administered"
      * is 1..1 string "Certificate issuer (organization name)"
      * ci 1..1 string "Unique certificate identifier (UVCI)"


    // Test group -------------------------------------------------------------
    * t 0..* BackboneElement "Test Group"
    * t ^comment = "\"Test group, if present, MUST contain exactly 1 (one) entry describing exactly one test result.\""
      * tg 1..1 string "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant)"
      * tt 1..1 string "Type of test (LOINC code)"
      * nm 0..1 string "Name of the nucleic acid amplification test (NAAT) used"
      * nm ^comment = "From the spec: \"The name should include the name of the test manufacturer and the commercial name of the test, separated by a comma.\" Omit element for RAT test. MUST not be empty."
      * ma 0..1 string "Rapid antigen test (RAT) device identifier from the JRC database"
      * sc 1..1 dateTime "Date and time when test sample was collected in ISO 8601 format"
      * tr 1..1 string "Result of the test (SNOMED CT GPS code)"
      * tc 0..1 string "Testing centre or facility"
      * tc ^comment = "Required for NAAT tests. Optional for RAT tests. MUST not be empty (omit instead)."
      * co 1..1 string "Country of test"
      * is 1..1 string "Certificate issuer"
      * ci 1..1 string "Unique Certificate Identifier (UVCI)"


    // Recovery group -------------------------------------------------------------
    * r 0..* BackboneElement "Recovery Group"
    * r ^comment = "\"Recovery group, if present, MUST contain exactly 1 (one) entry describing exactly one recovery statement.\""
      * tg 1..1 string "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant)"
      * fr 1..1 date "The date when a sample for the NAAT test producing a positive result was collected, in the format YYYY-MM-DD (complete date without time)."
      * co 1..1 string "Country of test"
      * is 0..1 string "Certificate issuer"
      * df 1..1 date "The first date on which the certificate is considered to be valid, in YYYY-MM-DD format (complete date without time)."
      * du 1..1 date "The last date on which the certificate is considered to be valid, assigned by the certificate issuer, in YYYY-MM-DD format (complete date without time)."
      * ci 1..1 string "Unique certificate identifier (UVCI)"