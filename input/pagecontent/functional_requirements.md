---
layout: default
title: Functional Requirements
---
Functional requirements are documented in the <a href="https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates-vaccination-2021.1">Digital Documentation of COVID-19 Certificates (DDCC): Vaccination Status (DDCC:VS) </a> and the Digital Documentation of COVID-19 Certificates (DDCC): Test Result (DDCC:TR, link forthcoming) Technical Specifications and Implementation Guidance.

The high-level functional requirements are written as guidance requirements only to be used as a starting point for Member States or other interested parties that need to develop their own specifications for a digital solution for DDCC to take and adapt.

The following includes functional requirements for DDCC:VS and DDCC:TR, along with mappings to use cases, as well as related requirements.

### Requirement conventions
The DDCC guidance uses specific terminology in requirements. The definitions are based on the definitions published by the Internet Engineering Task Force (IETF) https://www.ietf.org/rfc/rfc2119.txt.

 * **MAY** is used to describe technical features and functions that are optional, and it is the implementer’s decision on whether
    to include that feature or function based on the implementation context. 
 
 * **SHALL** is used to describe technical features and functions that are mandatory for this specification.

 * **SHOULD** is used to describe technical features and functions that are recommended, but they are not mandatory. It is the
    implementer’s decision on whether to include that feature or function based on the implementation context. However, the
    implementer is highly recommended to review the reasons for not following the recommendations before deviating from the
    technical specifications outlined.

### DDCC:VS - Continuity of Care requirements
As the Test Result guidance does not include the Continuity of Care scenario, there are fewer related requirements for the DDCC:VS Continuity of Care scenario. 
  
| Requirement ID|Functional requirement|VS001 Paper First |VS002 Offline Digital |VS003 Online Digital|Related requirement|
| ---|---|---|---|---|---|
| DDCCVS.FXNREQ.001 |It SHALL be possible for the Vaccinator to identify the Subject of Care as per the norms and policies of the PHA under whose authority the vaccination is administered. |x|x|x||
| DDCCVS.FXNREQ.002 |It SHOULD be possible to verify the identity of the Subject of Care against existing records, if such a check is mandated by local procedures, and to retrieve any pertinent health history. |x|x|x||
| DDCCVS.FXNREQ.003 |It SHALL be possible to register a new Subject of Care if the person is presenting for the first time. |x|x|x||
| DDCCVS.FXNREQ.004 |It SHALL be possible to issue a new paper card to the Subject of Care for the purpose of recording the vaccination. |x|x|x|DDCCTR.FXNREQ.001|
| DDCCVS.FXNREQ.005 |It SHALL be possible to update an existing paper card held by the Subject of Care if the card is presented during the vaccination and there is space available on the card. |x|x|x||
| DDCCVS.FXNREQ.006 |Where paper cards are used, a PHA SHALL put in place a process to replace lost or damaged cards with the necessary supporting technology. |x|x|x|DDCCTR.FXNREQ.002, DDCCVS.FXNREQ.039 |
| DDCCVS.FXNREQ.007 |It SHALL be possible to associate a globally unique HCID with a paper vaccination card recording each vaccination administered to the Subject of Care. |x|x|x|DDCCTR.FXNREQ.003|
| DDCCVS.FXNREQ.008 |It SHALL be possible to enter or attach the HCID as a 1D barcode to any paper vaccination card issued to the Subject of Care (or the HCID card holder). |x|x|x|DDCCTR.FXNREQ.004|
| DDCCVS.FXNREQ.009 |It SHOULD be possible to prepare pre-printed cards with a previously generated HCID that is encoded in (at minimum) a 1D barcode. |x|x|x||
| DDCCVS.FXNREQ.010 |It SHALL be possible to record the core data set content on a paper vaccination card issued to the Subject of Care (or the DDCC:VS card holder). |x|x|x|DDCCTR.FXNREQ.005|
| DDCCVS.FXNREQ.011 |It SHALL be possible to manually sign the paper card and include the official stamp of the administering centre as a non-digital means of certifying that the content has been recorded by an approved authority. |x|x|x|DDCCTR.FXNREQ.006|
| DDCCVS.FXNREQ.012 |The data concerning the vaccination (at minimum, the HCID and the core data set content) SHOULD be entered into an electronic format as soon as reasonably possible after the vaccine is administered. This will most likely be into a Digital Health Solution, if one exists, at the point of care. |x|x|x||
| DDCCVS.FXNREQ.013 |It SHALL be possible to retrieve information about the vaccination(s) administered to the Subject of Care from the content in the DDCC:VS. |x|x||DDCCTR.FXNREQ.007|
| DDCCVS.FXNREQ.014 |All data concerning the vaccination SHALL be handled in a secure manner to respect confidentiality between the health worker and Subject of Care. |x|x|x|DDCCTR.FXNREQ.008|
| DDCCVS.FXNREQ.015 |Digital technology SHALL NOT be needed for any aspect of paper card issue/update – the process SHALL function in an entirely offline and non-electronic manner. |x||||
| DDCCVS.FXNREQ.016 |Paper cards and the validation markings they bear SHALL be designed to combat fraud and misuse. |x|x|x|DDCCTR.FXNREQ.010|
| DDCCVS.FXNREQ.017 |Where an offline (disconnected) Digital Health Solution exists, the Data Entry Personnel SHALL securely log in to record all pertinent information about the vaccination. ||x|||
| DDCCVS.FXNREQ.018 |Any offline Digital Health Solution for vaccination registration SHALL include required content defined in the DDCC:VS core data set. ||x|||
| DDCCVS.FXNREQ.019 |Any offline Digital Health Solution for vaccination registration SHOULD be designed for quality data capture, including enforcement of data validation rules at the point of data entry. ||x|||
| DDCCVS.FXNREQ.020 |If patients’ records are held in an offline Digital Health Solution available at the time of vaccination, then it SHOULD be possible for an authorized user to view the record for the Subject of Care, including pertinent medical history, per PHA policies. ||x|||
| DDCCVS.FXNREQ.021 |If an offline Digital Health Solution for vaccination registration is available, then it SHOULD be possible to search, list, filter, reorder and export the history of vaccinations administered. ||x|||
| DDCCVS.FXNREQ.022 |If an offline Digital Health Solution for vaccination registration is available, then it MAY be possible to schedule a regular, recurring export/dispatch of data, based on availability of a connection, to send them to another public health record system. ||x|||
| DDCCVS.FXNREQ.023 |If an offline Digital Health Solution for vaccination registration is available, then it SHALL validate that HCIDs entered are confirmed to be unique, based on its own data set. ||x|||
| DDCCVS.FXNREQ.024 |If an offline Digital Health Solution for vaccination registration is available, then it MAY be responsible for outputting the vaccination data using the FHIR standard. ||x||DDCCTR.FXNREQ.011|
| DDCCVS.FXNREQ.025 |If an offline Digital Health Solution for vaccine registration is available, and is part of the national PKI trust framework, and is authorized by the PHA to sign vaccination content as a DDCC:VS, then it SHALL register the DDCC:VS through the DDCC:VS Registry Service. ||x||DDCCTR.FXNREQ.012|
| DDCCVS.FXNREQ.026 |For each care delivery session, the facility, organization and care delivery health worker context of the vaccine administration event SHALL be established. ||x|x||
| DDCCVS.FXNREQ.027 |If an online/connected public health DDCC:VS Generation Service is available at the time of vaccination, then it SHALL be possible to register the vaccination as soon as possible after it is administered. |||x|DDCCTR.FXNREQ.013|
| DDCCVS.FXNREQ.028 |The DDCC:VS Generation Service involved in the vaccination SHALL ensure encryption of data, in transit and at rest, to provide end-to-end security of personal data. |||x|DDCCTR.FXNREQ.014|
| DDCCVS.FXNREQ.029 |The DDCC:VS Generation Service MAY be the agent responsible for issuing the HCID, provided that the HCID can be associated at the time of vaccination in a timely manner. If the DDCC:VS Generation Service is responsible for issuing HCIDs, it SHALL only issue unique HCIDs, i.e. the same HCID should never appear on two different paper vaccination cards. |||x|DDCCTR.FXNREQ.015|
| DDCCVS.FXNREQ.030 |If pre-generated HCIDs and pre-printed vaccination cards are used, the generation of the HCIDs, along with any supporting technology to ensure HCIDs will not be duplicated within or across care sites, SHALL be managed by PHA policy. |||x|DDCCTR.FXNREQ.016|
| DDCCVS.FXNREQ.031 |It SHALL be possible for the DDCC:VS Generation Service to accept data from an authorized, connected point-of-care system, where such a system exists, i.e. to be able to accept data transferred from local data stores at sites where vaccinations are administered. |||x|DDCCTR.FXNREQ.017|
| DDCCVS.FXNREQ.032 |It SHALL be possible for the DDCC:VS Generation Service to represent vaccination data using the FHIR format. ||||DDCCTR.FXNREQ.018|
| DDCCVS.FXNREQ.033 |It SHALL be possible for the DDCC:VS Generation Service to perform digital signing of vaccination data. |||x|DDCCTR.FXNREQ.019|
| DDCCVS.FXNREQ.034 |It MAY be possible for the solution to generate a machine- readable 2D barcode that, in addition to the HCID, contains further useful technical information, such as a web end-- point for validating the HCID, or a public key. |||x|DDCCTR.FXNREQ.020|
| DDCCVS.FXNREQ.035 |It MAY be possible for the DDCC:VS Generation Service to generate a 2D barcode that includes the unencrypted minimum core data set content (in FHIR standard) of the vaccination, thus providing a machine-readable version of the vaccination certificate. |||x|DDCCTR.FXNREQ.021|
| DDCCVS.FXNREQ.036 |The DDCC:VS Generation Service SHALL maintain a connection between an HCID, the vaccination data associated with it in a DDCC:VS, any 2D barcode generated from the data, and the private/public key used to sign the data. |||x|DDCCTR.FXNREQ.022|
{:.grid}

### DDCC:VS - Proof of Vaccination requirements

|Requirement ID|Functional requirement|VS004 Manual|VS005 Offline|VS006 Online - National|VS007 Online - International|Related requirement|
| ---|---|---|---|---|---|---|
| DDCCVS.FXNREQ.037 |Paper cards and the validation markings they bear SHOULD be designed to combat fraud and misuse. Any process that generates a paper vaccination card SHALL include elements on the card that support the Verifier in visually checking that the card is genuine (e.g. water marks, holographic seals etc.) without the use of any digital technology. |x|x|x|x|DDCCTR.FXNREQ.023|
| DDCCVS.FXNREQ.038 |Paper vaccination cards SHALL display an HCID. |x|x|x|x||
| DDCCVS.FXNREQ.039 |Where paper cards are used, an authority SHALL put in place a process for the replacement of lost or damaged cards with the necessary supporting technology. |x|x|x|x|DDCCTR.FXNREQ.002, DDCCVS.FXNREQ.006 |
| DDCCVS.FXNREQ.040 |If a paper vaccination card or electronic vaccination document bearing a 1D or 2D barcode is presented to a Verifier, then it SHALL be possible for the Verifier to scan the code and, as a minimum, read the HCID encoded in the barcode, to visually compare it with the HCID written on the paper card, if present. ||x|x||DDCCTR.FXNREQ.024|
| DDCCVS.FXNREQ.041 |If a paper vaccination card or electronic vaccination document bears a QR code and that 2D barcode includes a digital signature, then it MAY be possible for the Verifier to check the signature, using information downloaded from a DDCC:VS Registry Service, to ensure it is genuine. |||x|x|DDCCTR.FXNREQ.025|
| DDCCVS.FXNREQ.042 |It MAY be possible to log all offline verification operations so that, at a later stage, when an online connection is available, verification decisions can be reviewed and reconfirmed against data provided by the online DDCC:VS Registry Service. For example, this may be done to confirm that a certificate checked offline in the morning using public key and revocation data downloaded from the DDCC:VS Registry Service the day before has not been added to a public key revocation list issued that same day. ||x|||DDCCTR.FXNREQ.026 |
| DDCCVS.FXNREQ.043 |It SHALL always be possible to perform some form of offline verification of vaccination cards; any solution should be designed so that a loss of connectivity to online components of the solution cannot force the verification work to stop. ||x|x|x|DDCCTR.FXNREQ.027|
| DDCCVS.FXNREQ.044 |If, at the time of verification, a Verifier has online access/connectivity to a DDCC:VS Registry Service managed by a National PHA, then it SHALL be possible to query whether the HCID present in the barcode (and the public key, if also present) of the paper vaccination card are currently valid. |||x|x|DDCCTR.FXNREQ.028|
| DDCCVS.FXNREQ.045 |When making the verification check, any solution SHALL send only the minimum information required for the verification to complete. The minimum information comprises the metadata (see section 5.2) and signature of the DDCC:VS. |||x|x|DDCCTR.FXNREQ.029|
| DDCCVS.FXNREQ.046 |When receiving a request for validation, a National PHA SHALL consult its DDCC:VS Registry Service and respond with a status to indicate that the signing key has not been revoked, that the key was issued by a certified authority, and that the DDCC has not otherwise been revoked. |||x|x|DDCCTR.FXNREQ.030|
| DDCCVS.FXNREQ.047 |A PHA servicing a validation request MAY respond with basic details of the vaccination card holder (name, date of birth, sex, etc.), in accordance with PHA policies, so the Verifier can confirm that the vaccination card corresponds to the DDCC:VS Holder who has presented himself or herself for validation. |||x|x|DDCCTR.FXNREQ.031|
| DDCCVS.FXNREQ.048 |A PHA SHALL maintain a PKI to underpin the signing and verification process. Lists of valid public keys and revocation lists will be held in such a system and be linked to the DDCC:VS Generation Service to associate public keys with HCIDs. |||x|x|DDCCTR.FXNREQ.032|
| DDCCVS.FXNREQ.049 |A PHA MAY log the requests it receives for verification (even if rendered anonymous), so that it has a searchable history for the purposes of audit and fighting fraud, provided that such logging respects data protection principles. |||x|x|DDCCTR.FXNREQ.033|
| DDCCVS.FXNREQ.051 |A PHA SHALL be able to return a verification status, as defined by the implementer, to a requester, based on the information provided. |||x|x|DDCCTR.FXNREQ.034|
| DDCCVS.FXNREQ.052 |A PHA MAY be able to service individual verification requests (i.e. details relating to one vaccination certificate) or requests sent in bulk (details of multiple certificates sent in one request). |||x|x| DDCCTR.FXNREQ.035|
| DDCCVS.FXNREQ.053 |A PHA SHOULD be able to validate that the requestor making a verification request is an authorized agent, but MAY also allow anonymous verification requests. |||x|x|DDCCTR.FXNREQ.037|
| DDCCVS.FXNREQ.054 |The certificate authority (or authorities) in each country SHALL maintain records of the DSCs issued for the purpose of signing vaccination certificates and expose any service(s) that allow a public key to be looked up and checked against its records to check for validity. |||x|x|DDCCTR.FXNREQ.038|
| DDCCVS.FXNREQ.055 |Any communication between a Verifier and a DDCC:VS Registry Service or other data service managed by a PHA SHALL be secured to prevent interference with the data in transit and at rest. |||x|x|DDCCTR.FXNREQ.039|
| DDCCVS.FXNREQ.056 |SMS-based verification of alphanumeric HCIDs MAY be provided by a PHA as a means of sending a verification request or receiving a response with a status code. |||x||DDCCTR.FXNREQ.040|
| DDCCVS.FXNREQ.057 |If a verification request is made in country A for a certificate that was issued by country B or a supranational entity, then country A’s PHA SHOULD have a means of transferring the request/ querying the data held by that authority. ||||x|DDCCTR.FXNREQ.041|
| DDCCVS.FXNREQ.058 |A Member State SHOULD put in place bilateral or multilateral agreements with other countries or with a supranational entity or regional body for access to those entities’ vaccination certificate data and digital signatures. ||||x|DDCCTR.FXNREQ.042|
| DDCCVS.FXNREQ.059 |Communications between one country’s and another’s PHA or a supranational DDCC:VS Registry Service SHALL be secure and prevent interference with the data in transit and at rest. ||||x|DDCCTR.FXNREQ.044|
| DDCCVS.FXNREQ.060 |It SHALL be the ultimate responsibility of the country where verification is taking place to decide whether a vaccination claim is valid or not. ||||x|DDCCTR.FXNREQ.045|
| DDCCVS.FXNREQ.061 |There SHOULD be a mechanism for country A to notify country B if a suspected fraudulent certificate from country B’s jurisdiction comes to the attention of country A. ||||x|DDCCTR.FXNREQ.046|
{:.grid}
  
### DDCC:TR - Certificate Generation requirements
Processes for specimen collection, data collection, sample analysis and the generation of test reports (if required) will be defined by Member States, are outside the scope of the DDCC:TR guidance, and are preconditions for generating a test result certificate. Member States will need to define how a certificate will be generated, issued and adapted to their own contexts and levels of digital maturity, in compliance with their legal and policy frameworks. Due to these preconditions and differences, mappings to use cases are not included for DDCC:TR certificate generation.

|Requirement ID|Functional requirement|Related requirement|
| ---|---|---|
| DDCCTR.FXNREQ.001|It SHALL be possible to issue a new paper test result certificate to the Tested Person, or DDCC:TR Holder, for the purpose of recording the test event.|DDCCVS.FXNREQ.004 |
| DDCCTR.FXNREQ.002|A PHA SHALL put in place a process to replace or reissue lost or damaged paper test result certificate with the necessary supporting technology.|DDCCVS.FXNREQ.006 |
| DDCCTR.FXNREQ.003|It SHALL be possible to associate a globally unique HCID to a Tested Person’s registered Test Result certificate(s). |DDCCVS.FXNREQ.007 |
| DDCCTR.FXNREQ.004|It SHALL be possible to enter or attach the HCID as a 1D or 2D barcode to any paper test result certificate issued to the Tested Person (or DDCC:TR Holder).|DDCCVS.FXNREQ.008 |
| DDCCTR.FXNREQ.005|It SHALL be possible to manually record the core data set content on a paper test result certificate issued to the Tested Person (or the DDCC:TR card holder).|DDCCVS.FXNREQ.010 |
| DDCCTR.FXNREQ.006|It SHALL be possible to manually sign the paper test result certificate and include the official stamp of the administering centre as a non-digital means of certifying that the content has been recorded by an approved authority.|DDCCVS.FXNREQ.011 |
| DDCCTR.FXNREQ.007|It SHALL be possible to retrieve information about the diagnostic test event of the Tested Person from the content in the DDCC:TR or one of its representations.|DDCCVS.FXNREQ.013 |
| DDCCTR.FXNREQ.008|All data concerning the test result SHALL be handled in a secure manner to respect confidentiality of the Tested Person’s health data.|DDCCVS.FXNREQ.014 |
| DDCCTR.FXNREQ.010|Paper test result certificate and the validation markings they bear SHALL be designed to combat fraud and misuse.|DDCCVS.FXNREQ.016 |
| DDCCTR.FXNREQ.011|If a Digital Health Solution to capture and manage SARS-CoV-2 diagnostic test result and related content is available, then it MAY be responsible for outputting the test data using the HL7 FHIR standard.|DDCCVS.FXNREQ.024 |
| DDCCTR.FXNREQ.012|If a Digital Health Solution to capture and manage SARS-CoV-2 diagnostic test result and related content is available, is part of the national PKI trust framework, and is authorized by the PHA to sign test result content as a DDCC:TR then it SHALL register the DDCC:TR through the DDCC Registry Service. |DDCCVS.FXNREQ.025 |
| DDCCTR.FXNREQ.013|If an online or connected DDCC Generation Service is available at the time of recording SARS-CoV-2 test results, then it SHALL be possible to register the test report as soon as possible after the result is available.|DDCCVS.FXNREQ.027 |
| DDCCTR.FXNREQ.014|The DDCC Generation Service involved in the test result SHALL ensure encryption of data, in transit and at rest, to provide end-to-end security of personal data.|DDCCVS.FXNREQ.028 |
| DDCCTR.FXNREQ.015|The DDCC Generation Service MAY be the agent responsible for issuing the HCID, provided that the HCID can be associated at the time of test event in a timely manner. If the DDCC Generation Service is responsible for issuing HCIDs, it SHALL only issue unique HCIDs. The same HCID should never be reused for multiple Tested Persons.|DDCCVS.FXNREQ.029 |
| DDCCTR.FXNREQ.016|If pre-generated HCIDs are used, the generation of the HCIDs, along with any supporting technology to ensure HCIDs will not be duplicated within or across certificate generation sites, SHALL be managed by PHA policy. |DDCCVS.FXNREQ.030 |
| DDCCTR.FXNREQ.017|It SHALL be possible for the DDCC Generation Service to accept data transferred from an authorized, connected LIS where such a system exists.|DDCCVS.FXNREQ.031 |
| DDCCTR.FXNREQ.018|It SHALL be possible for the DDCC Generation Service to represent test result data using the HL7 FHIR format.|DDCCVS.FXNREQ.032 |
| DDCCTR.FXNREQ.019|It SHALL be possible for the DDCC Generation Service to digitally sign the HL7 FHIR document representation of the test result data|DDCCVS.FXNREQ.033 |
| DDCCTR.FXNREQ.020|It MAY be possible for the DDCC Generation Service to generate a machine-readable 2D barcode (e.g. a QR code) that, in addition to the HCID, contains further useful technical information, such as a web end point for validating the HCID, or a public key. |DDCCVS.FXNREQ.034 |
| DDCCTR.FXNREQ.021|It MAY be possible for the DDCC Generation Service to generate a 2D QR code that includes the unencrypted minimum core data set content (in HL7 FHIR standard) of the test result, thus providing a machine-readable version of the test result certificate.|DDCCVS.FXNREQ.035 |
| DDCCTR.FXNREQ.022|The DDCC Generation Service SHALL create an association between an HCID, the test result data associated with it in a DDCC:TR, any QR code generated from the data, and the private key used to sign the data.|DDCCVS.FXNREQ.036 |
{:.grid}

### DDCC:TR - Verification and Validation requirements

|Requirement ID|Functional requirement|TR001 Manual|TR002 Offline|TR003 Online - National|TR004 Online - International|Related requirement|
| ---|---|---|---|---|---|---|
| DDCCTR.FXNREQ.023|Paper test result certificate and the validation markings they bear SHOULD be designed to combat fraud and misuse. Any process that generates paper test result certificate SHOULD include elements on the card that support the Verifier in visually checking that the card is genuine (e.g. water marks, holographic seals etc.) without the use of any digital technology.|x|x|x|x|DDCCVS.FXNREQ.037 |
| DDCCTR.FXNREQ.024|If a paper test result document bearing a 1D or 2D barcode is presented to a Verifier, then it SHALL be possible for the Verifier to scan the code and, at a minimum, read the health certificate identifier (HCID) encoded in the barcode, to visually compare it with the HCID written or printed on the paper test result certificate, if present.| |x|x||DDCCVS.FXNREQ.040 |
| DDCCTR.FXNREQ.025|If a paper test result certificate or computable test report document bears a QR code and that barcode includes a digital signature, then it MAY be possible for the Verifier to check the signature, using information downloaded from a Public Key Directory (PKD), to ensure it is genuine.| | |x|x|DDCCVS.FXNREQ.041 |
| DDCCTR.FXNREQ.026  |It MAY be possible to log all offline verification operations so that, at a later stage when an online connection is available, verification and validation decisions can be reviewed and reconfirmed against data provided by the online DDCC Registry Service. For example, this may be done to confirm that a certificate that was checked offline in the morning using public key and revocation data downloaded from the DDCC Registry Service the day before has not been added to a public key revocation list issued that same day. However, personal data accessed at the point of verification of the DDCC:TR should not be retained and stored in a repository, database or otherwise.| |x| ||DDCCVS.FXNREQ.042 |
| DDCCTR.FXNREQ.027|It SHALL always be possible to perform some form of offline verification and validation of paper test result certificate; any solution should be designed so that a loss of connectivity to online components of the solution cannot force the verification and validation work to stop.| |x|x|x|DDCCVS.FXNREQ.043 |
| DDCCTR.FXNREQ.028|If, at the time of verification, a Verifier has connectivity to a DDCC Registry Service managed by a PHA, then it SHALL be possible to query whether the HCID present in the barcode (and the public key, if also present) of the paper test result certificate are currently valid.| | |x|x|DDCCVS.FXNREQ.044 |
| DDCCTR.FXNREQ.029|When making the verification check, any solution SHALL send only the minimum information required for the verification to complete. The minimum information comprises the metadata (see section 5.2) and signature of the DDCC:TR.| | |x|x|DDCCVS.FXNREQ.045 |
| DDCCTR.FXNREQ.030|When receiving a request for verification, a PHA SHALL consult its DDCC Registry Service and respond with a status to indicate that the signing key has not been revoked, that the key was issued by a certified authority, and that the DDCC has not otherwise been revoked.| | |x|x|DDCCVS.FXNREQ.046 |
| DDCCTR.FXNREQ.031|A PHA servicing a verification request of a test result certificate via an HCID MAY respond with basic details of the test result certificate holder (name, date of birth,  etc.), in accordance with PHA policies, so that the Verifier can confirm that the paper test result certificate corresponds to the DDCC:TR Holder who has presented himself or herself for verification. | | |x|x|DDCCVS.FXNREQ.047 |
| DDCCTR.FXNREQ.032|A PHA SHALL maintain a PKI to underpin the signing and verification process. Lists of valid public keys and revocation lists will be held in such a system and MAY be linked to the DDCC Generation Service to associate public keys with HCIDs.| |x |x|x|DDCCVS.FXNREQ.048 |
| DDCCTR.FXNREQ.033|A PHA MAY log the requests it receives for verification (even if rendered anonymous), so that it has a searchable history for the purposes of audit and fighting fraud, provided that such logging respects data protection principles.| | |x|x|DDCCVS.FXNREQ.049 |
| DDCCTR.FXNREQ.034|A PHA SHALL be able to return a verification status, as defined by the implementer, to a requestor, based on the information provided.| | |x|x|DDCCVS.FXNREQ.051 |
|  DDCCTR.FXNREQ.035|A PHA MAY be able to service individual verification requests (i.e. details relating to one test result certificate) or requests sent in bulk (details of multiple certificates sent in one request).| | |x|x|DDCCVS.FXNREQ.052 |
| DDCCTR.FXNREQ.036|When receiving a request for verification, a PHA MAY respond with the last test result certificate or provide history of test result certificates, in accordance with Member State policies.|||x|x||
| DDCCTR.FXNREQ.037|A PHA SHOULD be able to validate that the requestor making a verification request is an authorized agent, but MAY also allow anonymous verification requests.| | |x|x|DDCCVS.FXNREQ.053 |
| DDCCTR.FXNREQ.038|The certificate authority (or authorities) in each country SHALL maintain records of the DSCs issued for the purpose of signing test result certificates and expose any service(s) that allow a public key to be looked up and checked against its records to check for validity.| | |x|x|DDCCVS.FXNREQ.054 |
| DDCCTR.FXNREQ.039|Any communication between a Verifier and a DDCC Registry Service or other data service managed by a PHA SHALL be secured to prevent interference with the data in transit and at rest.| | |x|x|DDCCVS.FXNREQ.055 |
| DDCCTR.FXNREQ.040|SMS-based verification of alphanumeric HCIDs MAY be provided by a PHA as a means of sending a verification request or receiving a response with a status code.| | |x||DDCCVS.FXNREQ.056 |
| DDCCTR.FXNREQ.041|If a verification request is made in country A for a certificate that was issued by country B or a supranational entity, then country A’s PHA SHOULD have a means of transferring the request/ querying the data held by that authority.||||x|DDCCVS.FXNREQ.057 |
| DDCCTR.FXNREQ.042|A Member State SHOULD put in place bilateral or multilateral agreements with other countries or with a supranational entity or regional body for access to those entities’ test result certificate metadata and digital signatures.||x|||DDCCVS.FXNREQ.058, DDCCTR.FXNREQ.043|
| DDCCTR.FXNREQ.043|A Member State SHOULD put in place bilateral or multilateral agreements with other countries or with a supranational entity or regional body for access to those entities’ test result certificate test event data and digital signatures.||||x|DDCCVS.FXNREQ.058, DDCCTR.FXNREQ.042|
| DDCCTR.FXNREQ.044|Communications between one country and another’s PHA or a supranational DDCC Registry Service SHALL be secure and prevent interference with the metadata or data in transit and at rest.||x||x|DDCCVS.FXNREQ.059 |
| DDCCTR.FXNREQ.045|It SHALL be the ultimate responsibility of the country where verification and validation is taking place to decide whether a test result claim is accepted or not.||x||x|DDCCVS.FXNREQ.060 |
| DDCCTR.FXNREQ.046|There SHOULD be a mechanism for country A to revoke a DDCC.||x|x|x|DDCCVS.FXNREQ.061 |
| DDCCTR.FXNREQ.047|There SHOULD be a mechanism for country B to be able to determine if a certificate issued by country A has been revoked. ||x||x||
| DDCCTR.FXNREQ.048|There SHOULD be a mechanism for the Verifier Application to be regularly updated with the defined set of acceptance criteria or business rules, as defined by the policies of the Member State.||x|x|x ||
| DDCCTR.FXNREQ.049|A Verifier Application SHALL be able to perform a check against the defined set of acceptance criteria or business rules, as defined by the policies of the Member State, to check for validity of the certificate.||x|x|x  ||
{:.grid}
 
