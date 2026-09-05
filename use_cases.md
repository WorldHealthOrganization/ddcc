# Use Cases - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Use Cases**

## Use Cases

 For the latest published guidance, refer to the [Digital Documentation of COVID-19 Certificates (DDCC): Vaccination Status (DDCC:VS) ](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates-vaccination-2021.1) and the [Digital Documentation of COVID-19 Certificates (DDCC): Test Result (DDCC:TR)](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates_diagnostic_test_results-2022.1) Technical Specifications and Implementation Guidance. 

The scope of this implementation guide covers two scenarios of use for the DDCC:VS and two for the DDCC:TR. For the scenarios, it will be up to Member States to define the purposes for which the scenario is applied and adapted to their own contexts and levels of digital maturity, in compliance with their legal and policy frameworks.

**For the DDCC:VS:**

1. **Continuity of Care:**Vaccination records are an important part of an individual’s medical records, starting at birth. The Continuity of Care scenario describes the primary purpose of a vaccination certificate. The vaccination record shows individuals and caregivers which vaccinations an individual has received, as part of that individual’s medical history; it therefore supports informed decision-making on any future health service provision.
1. **Proof of Vaccination:**Vaccination records can also provide proof of vaccination status for purposes not related to health care.

**For the DDCC:TR:**

1. **Proof of Negative SARS-CoV-2 Test Result:**Test result certificates can be used as documented evidence of a negative test result when SARS-CoV-2 is not detected by a SARS-CoV-2 diagnostic test for viral detection (e.g. a nucleic acid amplification test (NAAT) or an antigen detection rapid diagnostic test (Ag-RDT)).
1. **Proof of Previous SARS-CoV-2 Infection:**Test result certificates can also be used as documented evidence of a previous SARS-CoV-2 infection with a positive result from a SARS-Cov-2 diagnostic test for viral detection (e.g. NAAT or Ag-RDT).
Note: This proof does not provide information on infectiousness, transmission risk; or recovery from SARS-CoV-2 infection.

### Continuity of Care

* Use case ID: UC001
  * Use case name: Paper first
  * Use case description: A guideline-based vaccine administration is recorded on paper. After the vaccination event, data about it can be entered into a Digital Health Solution.
* Use case ID: UC002
  * Use case name: Offline digital
  * Use case description: A guideline-based vaccine administration is recorded using an offline secure Digital Health Solution, with the content uploaded, subsequently, to an online Digital Health Solution.
* Use case ID: UC003
  * Use case name: Online digital
  * Use case description: A guideline-based vaccine administration is recorded using an online secure Digital Health Solution which updates the content in real time.

### Proof of Vaccination

* Use case ID: VS006
  * Use case name: Manual verification
  * Use case description: A Verifier verifies a DDCC:VS using purely visual means, based on his or her subjective judgement, as is currently done with International Certificate of Vaccination or Prophylaxis. This type of check is currently well accepted, is quick and easy to do, and requires no digital technology.
* Use case ID: VS007
  * Use case name: Offline cryptographic verification
  * Use case description: A Verifier verifies a DDCC:VS using digital cryptographic processes in an offline mode.
* Use case ID: VS008
  * Use case name: Online status check (national DDCC:VS)
  * Use case description: This pathway is used when the DDCC:VS is being verified in the same jurisdiction as it was issued. A Verifier verifies a DDCC:VS using digital cryptographic processes in an online mode that includes a status check against the PHA’s DDCC:VS Registry Service and optionally the DDCC:VS Repository.
* Use case ID: VS009
  * Use case name: Online status check (international DDCC:VS)
  * Use case description: This pathway is used when the DDCC:VS is being verified in a foreign jurisdiction to where it was issued. A Verifier verifies an internationally issued DDCC:VS using digital cryptographic processes in an online mode that includes a status check against the National PHA’s DDCC:VS Registry Service, which in turn accesses an International PHA’s DDCC:VS Registry and DDCC:VS Repository, if such services exist and such access is authorized by the issuing PHA. It is assumed in this workflow that a Verifier does not directly access an International PHA’s DDCC:VS Registry or Repository Service.

### Proof Scenarios of the DDCC:TR

It will be up to the Member State to determine the business rules for acceptance of a test result certificate and the validity period for each proof scenario for domestic and/or international use cases. Validity period is determined by the policies of the country that the certificate is going to be used in.

* Use case ID: TR001
  * Use case name: Manual verification
  * Use case description: A Verifier verifies and validates a DDCC:TR based on its human-readable content using purely visual means, based on their subjective judgement. This type of check is common, currently well accepted, is quick and easy to do, and requires no digital technology.
* Use case ID: TR002
  * Use case name: Offline cryptographic verification
  * Use case description: A Verifier verifies and validates a DDCC:TR using digital cryptographic processes in an offline mode.
* Use case ID: TR003
  * Use case name: Online status check (national DDCC:TR)
  * Use case description: This pathway is used when the DDCC:TR is being verified and validated in the same jurisdiction as it was issued. A Verifier verifies and validates a DDCC:TR using digital cryptographic processes in an online mode that includes a status check against the PHA’s DDCC Registry Service and optionally the DDCC:TR Repository.
* Use case ID: TR004
  * Use case name: Online status check (international DDCC:TR)
  * Use case description: This pathway is used when the DDCC:TR is being verified in a foreign jurisdiction to where it was issued. A Verifier verifies and validates an internationally issued DDCC:TR using digital cryptographic processes in an online mode that includes a status check against the National PHA’s DDCC Registry Service, which in turn accesses an International PHA’s DDCC:TR Registry and DDCC:TR Repository, if such services exist and such access is authorized by the issuing PHA. It is assumed in this workflow that a Verifier does not directly access an International PHA’s DDCC:TR Registry or Repository Service.

