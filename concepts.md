# Concepts - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Concepts**

## Concepts

 Key concepts are described here. Definitions come from the Glossary and "Key settings, personas and digital services" sections of the [Digital Documentation of COVID-19 Certificates: Vaccination Status (DDCC:VS) — Technical Specifications and Implementation Guidance](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates-vaccination-2021.1) and the [DDCC: Test Result (DDCC:TR) — Technical Specifications and Implementation Guidance](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates_diagnostic_test_results-2022.1). 

 For the latest published definitions, refer to the Digital Documentation of COVID-19 Certificates guidance. 

### Certificate

A document attesting a fact. In the context of the vaccination certificate, it attests to the fact that a vaccine has been administered to an individual. In the context of the test result certificate, it attests to the fact that a SARS-CoV-2 diagnostic test has been conducted and the test result has been provided to an individual. 

### Certificate Authority (CA)

Also known as a "certification authority" in the context of a public key infrastructure, is an entity or organization that issues digital certificates.

### Data Entry Personnel

The person who enters the information about the Subject of Care (as outlined in the core data set) that has been manually recorded at care sites into a digital system. Health workers can also be the Data Entry Personnel if a point-of-care system is in place that allows health workers to digitally document a vaccination event right away.

### DDCC Generation Service

The service that is responsible for generating a digitally signed representation, the DDCC, of the information concerning a SARS-CoV-2 vaccination or test. This service can be used for the generation of both vaccination status and test result certificates.

### DDCC Holder

The person who has the Vaccinated Person's vaccination certificate or the Tested Person's test result certificate. The person is usually the Vaccinated or Tested Person, but does not have to be. For example, a caregiver may hold the DDCC for a child or other dependant.

### DDCC Registry Service

The service that can be used to request and receive metadata associated with a DDCC. This service can be used for both vaccination status and test result certificates.

### DDCC Repository Service

A, potentially federated, service that serves as a repository, or database, of the health content associated to DDCC. This service can be used as a repository for both vaccination status and test result certificates.

### Digital Documentation of COVID-19 Certificate(s) (DDCC)

A digitally signed HL7 FHIR document that represents the core data set for the relevant COVID-19 certificate.

### Digital Documentation of COVID-19 Certificate(s):Test Result (DDCC:TR)

A type of DDCC that is used to represent the SARS-CoV-2 diagnostic test result(s) of an individual. Specifically, the DDCC:TR is a digitally signed Health Level Seven (HL7) Fast Healthcare Interoperability Resources (FHIR) Document containing the data elements included in the DDCC:TR core data set.

### Digital Documentation of COVID-19 Certificate(s):Vaccination Status (DDCC:VS)

A type of DDCC that is used to represent the COVID-19 vaccination status of an individual. Specifically, the DDCC:VS is a digitally signed Health Level Seven (HL7) Fast Healthcare Interoperability Resources (FHIR) Document containing the data elements included in the DDCC:VS core data set.

### Digital Health Solution

A secure system that is used to capture and/or manage a digital record of the DDCC core data elements, such as an electronic immunization registry (EIR), an electronic medical record, a Laboratory Information System (LIS), or a shared health record (SHR).

### Digital representation

A virtual representation of a physical object or system. In this context, the digital representation must be a digitally signed FHIR document or a digitally signed two-dimensional (2D) barcode (e.g. a QR code).

### Digital signature

In the context of this guidance document, it is a hash generated from the HL7 FHIR data concerning a vaccination or a test, signed with a private key from a public–private key pair using standard encryption techniques.

### Digitally signed

A digital document is digitally signed when plain-text health content is "hashed" with an algorithm, and that hash is encrypted, or "signed", with a private key.

### Encryption

A security procedure that translates electronic data in plain text into a cipher code, by means of either a code or a cryptographic system, to render it incomprehensible without the aid of the original code or cryptographic system.

### Health certificate identifier (HCID)

An alphanumeric identifier (ID) for a physical and/or digital health folder which contains one or more test or vaccination events and associated certificates of a Person. Each test event corresponds to a DDCC:TR. Each vaccination event corresponds to a DDCC:VS. It is up to the Member State to determine whether the HCID will be associated with a single event or multiple events. A Member State may determine, as per its policy, that there may be only one DDCC per HCID.

### Identification document

A document that attests the identity of or a linkage to someone, for example a passport or a national identity card.

### Identifier

A name that labels the identity of an object or individual. For example, it can be a unique alphanumeric string that is associated with an individual, such as a passport number or medical record ID. Other types of identifiers include a document identifier, a facility identifier, and a health worker identifier.

### Laboratory Information System (LIS)

Sometimes also referred to as a laboratory information management system, is a software system that supports the laboratory activities. Key functionality includes receiving and storing requests for tests and test results. Test results can be made available via paper reports and/or electronic formats, both to human users and to other health information systems (e.g. electronic medical record systems, billing systems, etc.).

### MAY

MAY is used to describe technical features and functions that are optional, and it is the implementer’s decision on whether to include that feature or function based on the implementation context. This definition is based on the definition published by the Internet Engineering Task Force (IETF) (https://www.ietf.org/rfc/rfc2119.txt, accessed 30 June 2021).

### Paper Certificate

A SARS-CoV-2 vaccination status or test result certificate that is either handwritten or printed on paper, with a barcode. This barcode can be generated in real time or it can be pre-printed directly onto the certificate or on a barcode sticker.

### Personal data

Any information relating to an individual who is or can be identified, directly or indirectly, from that information. Personal data include: biographical data (biodata), such as name, sex, civil status, date and place of birth, country of origin, country of residence, individual registration number, occupation, religion and ethnicity; biometric data, such as a photograph, fingerprint, facial or iris image; health data; as well as any expression of opinion about the individual, such as assessments of his or her health status and/or specific needs.

### Public Health Authority (PHA)

An entity or organization under whose auspices a SARS-CoV-2 vaccination or diagnostic test is performed and the DDCC is issued. The National PHA is also responsible for the DDCC Generation Service and the DDCC Registry Service.

### Public key

The part of a private–public key pair used for digital encryption that is designed to be freely distributed.

### Public Key Infrastructure (PKI)

The policies, roles, software and hardware components and their governance that facilitate digital signing of documents and issuance, distribution, and exchange of keys.

### Private key

The part of a private–public key pair used for digital encryption that is kept secret and held by the individual/organization signing a digital document.

### SHALL

SHALL is used to describe technical features and functions that are mandatory for this specification.

### SHOULD

SHOULD is used to describe technical features and functions that are recommended, but they are not mandatory. It is the implementer’s decision on whether to include that feature or function based on the implementation context. However, the implementer is highly recommended to review the reasons for not following the recommendations before deviating from the technical specifications outlined.

### Status Checking Application

See definition for Verifier Application.

### Subject of Care

The vaccinated person.

### Test Report

The record, or report, of a SARS-CoV-2 diagnostic test result. A test report contains key demographic information about the tested person, the laboratory or testing centre that conducted the test, the test results, and other details information needed for clinical use. Test reports differ from a “test certificate” in that test reports do not contain means of cryptographically verifying the contents of the report.

### Two-dimensional (2D) barcode

Also called a matrix code. A 2D way to represent information using individual black dots within a square or rectangle. For example, a QR code is a type of 2D barcode. It is similar to a linear (1D) barcode, but it can represent more data per unit area. There are different types, defined by standards such as ISO/IEC 16022, 24778, 18004, etc.

### Vaccinator

The person who administers the vaccine. Depending on national policies, the person who administers the vaccine might not be a formal health-care provider. Examples include physicians, nurse practitioners, community health workers or volunteer vaccinators.

### Validation

A process that relies on the Verifier validating and accepting the certificate based on the acceptance criteria and associated validity period, as determined by the policies of the Member States in which the certificate will be used – i.e. validation answers the question, "With the data I am provided with, do I accept this certificate based on existing policies?"

### Verification

A process that relies on the Verifier confirming the status of a test result certificate and ensuring that it is a true and unaltered certificate which has been signed and issued under the authority of a public health authority of a Member State – i.e. verification answers the question, "Is this from a trusted source?"

### Verifier

A natural person or legal person, either private or public, formally authorized (under national law, decree, regulation or other official act or order) to verify and validate the SARS-CoV-2 vaccination status or diagnostic test result status presented on the DDCC.

### Verifier Application

A secure application used to verify and validate the SARS-CoV-2 vaccination status or diagnostic test result presented on the DDCC. A Verifier can use the Verifier Application to scan the barcode, display the data held within the DDCC and validate the DDCC using a predefined set of acceptance criteria or business rules.

