// !!!!!!!!!!!!! Temporarily commented out !!!!!!!!!!!!!!!!

// This FSH is used to create input/resources StructureDefinition-CertDCC.json
// because SUSHI does not support root-level element names that begin with
// an integer or `-`, which are necessary for EU DCC.

// Once SUSHI supports this, this FSH file can be updated and used rather than
// the JSON.

// !!!!!!!!!!!!! Temporarily commented out !!!!!!!!!!!!!!!!




Logical:         HCertDCC
Title:           "Payload for Certificate - EU DCC CBOR Web Token Logical Model"
Description:     "Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads <https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf> as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1>."

* ^url = "http://smart.who.int/ddcc/StructureDefinition/HCertDCC"
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

*/



// TODO: Replace `eu_DCC_v1` with `1` once allowed by SUSHI
* 1 1..1 BackboneElement "EU Digital COVID Certificate v1"
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
  * v 0..* BackboneElement "Vaccination Group (see element details)"
  * v obeys OnlyOneAllowed
  * v ^comment = "According to the spec, \"Vaccination group, if present, MUST contain exactly 1 (one) entry describing exactly one vaccination event. All elements of the vaccination group are mandatory, empty values are not supported.\" It appears this means the maximum cardinality of the `v` element is 1, and all sub-elements have minimum cardinality of 1."
    * tg 1..1 string "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant; see element details)" "The selected codes shall refer to COVID-19 or, if more detailed information on the genetic variant of SARS-CoV-2 is needed, to these variants if such detailed information is needed due to epidemiological reasons. Example of a code that should be used is the SNOMED CT code `840539006` (COVID-19)."
    * vp 1..1 string "Vaccine or prophylaxis (e.g., 'SARS-CoV-2 mRNA vaccine'; SNOMED or ATC; see element details)" "Preferred Code System: SNOMED CT or ATC Classification. Examples of codes that should be used from the preferred code systems are the SNOMED CT code 1119305005 (SARS-CoV-2 antigen vaccine), 1119349007 (SARS-CoV-2 mRNA vaccine) or J07BX03 (covid-19 vaccines). The value set should be extended when new vaccine types are developed and put into use."
    * mp 1..1 string "Vaccine product (e.g., 'EU/1/20/1528 (Comirnaty)'; see element details)" "Preferred Code Systems (in the order of preference):

- Union Register of medicinal products for vaccines with EU-wide authorisation (authorisation numbers) - for example, `EU/1/20/1528` (Comirnaty)
- A global vaccine register such as one that could be established by the World Health Organisation
- Name of the vaccine medicinal product in other cases. If the name includes whitespaces, these should be replaced by a hyphen (-). For example, `Sputnik-V` (standing for Sputnik V)."
    * mp from VaccineCovid19EUUnionRegisterValueSet (preferred)
    * ma 1..1 string "Vaccine marketing authorisation holder or manufacturer (e.g., 'ORG-100030215' (Biontech Manufacturing GmbH))" "Preferred Code System:

- Organisation code from EMA (SPOR system for ISO IDMP)
- A global vaccine marketing authorisation holder or manufacturer register, such as one that could be established by the World Health Organisation
- Name of the organisation in other cases.

If the name includes whitespaces, these should be replaced by a hyphen (-).If marketing authorisation holder is not available, this will be the manufacturer."
    * dn 1..1 positiveInt "Number in a series of doses"
    * sd 1..1 positiveInt "The overall number of doses in the series"
    * dt 1..1 date "Date of vaccination, YYYY-MM-DD format"
    * co 1..1 string "Country where vaccine was administered (two letter ISo-3166)"
    * co from http://hl7.org/fhir/ValueSet/iso3166-1-2 (preferred)
    * is 1..1 string "Certificate issuer (organization name)"
    * ci 1..1 string "Unique certificate identifier (UVCI)"


    // Test group -------------------------------------------------------------
  * t 0..* BackboneElement "Test Group"
  * t obeys OnlyOneAllowed
  * t ^comment = "\"Test group, if present, MUST contain exactly 1 (one) entry describing exactly one test result.\""
    * tg 1..1 string "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant; see element details)" "The selected codes shall refer to COVID-19 or, if more detailed information on the genetic variant of SARS-CoV-2 is needed, to these variants if such detailed information is needed due to epidemiological reasons.

Example of a code that should be used is the SNOMED CT code `840539006` (COVID-19)."
    * tg from LabTestPathogenCovid19SnomedValueSet (preferred)
    * tt 1..1 string "Type of test (LOINC code; see element details)" "The codes in this value set shall refer to the method of the test and shall be selected at least to separate the NAAT tests from RAT tests as expressed in Regulation (EU) 2021/953.

An example of a code that should be used from the preferred code system is LP217198-3 (Rapid immunoassay)."
    * tt from LabTestTypeLoincValueSet (preferred)
    * nm 0..1 string "Name of the nucleic acid amplification test (NAAT) used"
    * nm ^comment = "From the spec: \"The name should include the name of the test manufacturer and the commercial name of the test, separated by a comma.\" Omit element for RAT test. MUST not be empty."
    * ma 0..1 string "Rapid antigen test (RAT) device identifier from the JRC database"
    * sc 1..1 dateTime "Date and time when test sample was collected in ISO 8601 format"
    * tr 1..1 string "Result of the test (preferred: SNOMED CT GPS code)" "The codes selected shall allow distinguishing between positive and negative test results (detected or not detected). Additional values (like undetermined) may be added if the use cases do require this.

Examples of codes that should be used from the preferred code system are `260415000` (Not detected) and `260373001` (Detected)."
    * tr from LabTestQualitativeResultSnomedValueSet (preferred)
    * tc 0..1 string "Testing centre or facility"
    * tc ^comment = "Required for NAAT tests. Optional for RAT tests. MUST not be empty (omit instead)."
    * co 1..1 string "Country of test (two letter ISo-3166)"
    * co from http://hl7.org/fhir/ValueSet/iso3166-1-2 (preferred)
    * is 1..1 string "Certificate issuer"
    * ci 1..1 string "Unique Certificate Identifier (UVCI)"


    // Recovery group -------------------------------------------------------------
  * r 0..* BackboneElement "Recovery Group"
  * r obeys OnlyOneAllowed
  * r ^comment = "\"Recovery group, if present, MUST contain exactly 1 (one) entry describing exactly one recovery statement.\""
    * tg 1..1 string "Disease or agent targeted (SNOMED CT GPS code for COVID-19 or variant)"
    * fr 1..1 date "The date when a sample for the NAAT test producing a positive result was collected, in the format YYYY-MM-DD (complete date without time)."
    * co 1..1 string "Country of test (two letter ISo-3166)"
    * co from http://hl7.org/fhir/ValueSet/iso3166-1-2 (preferred)
    * is 0..1 string "Certificate issuer"
    * df 1..1 date "The first date on which the certificate is considered to be valid, in YYYY-MM-DD format (complete date without time)."
    * du 1..1 date "The last date on which the certificate is considered to be valid, assigned by the certificate issuer, in YYYY-MM-DD format (complete date without time)."
    * ci 1..1 string "Unique certificate identifier (UVCI)"


Invariant: OnlyOneAllowed
Description:  "Only one allowed (cardinality of 0..* is necessary because this element is an array in the EU DCC JSON)."
Expression: "count() <= 1"
Severity: #error