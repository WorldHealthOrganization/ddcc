# Artifacts Summary - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [WHO DDCC Generator](CapabilityStatement-WHO.DDCC.Generator.md) | CapabilityStatement for WHO DDCC Generator actor. |
| [WHO DDCC Registry Service](CapabilityStatement-WHO.DDCC.RegistryService.md) | CapabilityStatement for WHO DDCC Registry Service actor. |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [OperationDefinition for generating a health certificate (DDCC) that is signed.](OperationDefinition-DDCCQuestionnaireResponsegenerateHealthCertificate.md) | Generate one or more signed DDCC Documents based on a [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.md) |
| [OperationDefinition for generating a health folder (DDCCFolder).](OperationDefinition-DDCCQuestionnaireResponsegenerateHealthFolder.md) | Generate a DDCC Folder from an IPS Bundle. |
| [OperationDefinition for revoking a health certificate (DDCC).](OperationDefinition-DDCCQuestionnaireResponserevokeHealthCertificate.md) | Revoke a DDCC Document. |

### Knowledge Artifacts: Libraries 

These define logic, asset collections and other libraries as part of content in this implementation guide.

| | |
| :--- | :--- |
| [AnyDosePass](Library-AnyDosePass-1.0.0.md) | DDCC-compliant rule to evaluate if patients have a completed immunization schedule or just a single dose |
| [DDCCPass](Library-DDCCPass-1.0.0.md) | DDCC-compliant rule to evaluate if patients have a completed immunization schedule |
| [ModernaOrPfizerPass](Library-ModernaOrPfizerPass-1.0.0.md) | DDCC-compliant rule to evaluate if patients have an immunization from Moderna or Pfizer |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Certificate - DIVOC Verifiable Credential Logical Model](StructureDefinition-CertDIVOC.md) | Data elements for the DIVOC Core Data Set.The official DIVOC documentation appears to be at <https://divoc.digit.org>. However, this does not include a full list of elements included in DIVOC certificates.There is a JSON-LD context referenced in DIVOC certificate examples (`https://cowin.gov.in/credentials/vaccination/v1`), which would provide some element-level information, but this URL does not resolve. There is a copy of this JSON-LD context at <https://github.com/egovernments/DIVOC/blob/main/vaccination-context/vaccination-context.js>.It was not possible to find any online documentation regarding DIVOC proof of testing. Information on this was provided by the DIVOC team via email.Some element descriptions in this logical model provide details that are not in publicly available DIVOC documentation. |
| [Certificate - ICAO Visible Digital Seal Logical Model](StructureDefinition-CertICAO.md) | Data elements for the ICAO Visible Digital Seal Core Data Set. Based on <https://www.icao.int/vdsnc-spec> as of 2023-02-02. |
| [Certificate - Smart Health Card's JSon Web Token Logical Model](StructureDefinition-CertSHC.md) | Data elements for the Smart Health Cards Core Data Set. |
| [DDCC Core Data Set Logical Model](StructureDefinition-DDCCCoreDataSet.md) | Data elements for the DDCC Core Data Set. |
| [DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care](StructureDefinition-DDCCCoreDataSetVSCoC.md) | Data elements for the DDCC Core Data Set - Vaccination Status - Continuity of Care. |
| [DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination](StructureDefinition-DDCCCoreDataSetVSPoV.md) | Data elements for the DDCC Core Data Set - Vaccination Status - Proof of Vaccination. |
| [DDCC Core Data Set Logical Model for Test Result](StructureDefinition-DDCCCoreDataSetTR.md) | Data elements for the DDCC Core Data Set for Test Result. |
| [DDCC Core Data Set Logical Model for Vaccination Status](StructureDefinition-DDCCCoreDataSetVS.md) | Data elements for the DDCC Core Data Set for Vaccination Status. |
| [Payload for Certificate - EU DCC CBOR Web Token Logical Model](StructureDefinition-HCertDCC.md) | Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads <https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf> as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1>. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [DDCC HCID Registration Questionnaire](Questionnaire-DDCCHCIDRegistrationQuestionnaire.md) | DDCC HCID Registration Questionnaire |
| [DDCC:TR Core Data Set Questionnaire](Questionnaire-DDCCTRCoreDataSetQuestionnaire.md) | DDCC Questionnaire for a Test event. |
| [DDCC:VS Core Data Set Questionnaire](Questionnaire-DDCCVSCoreDataSetQuestionnaire.md) | DDCC Questionnaire for an Immunization event. |

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [DDCC Questionnaire Response](StructureDefinition-DDCCQuestionnaireResponse.md) | Describes the logical structure for a questionnaire response associacted to a [DDCC Questionaire](StructureDefinition-DDCCQuestionnaire.md). |
| [DDCC Questionniare](StructureDefinition-DDCCQuestionnaire.md) | Describes the logical structure for a questionnaire associacted to a DDCC which includes a Structure Map to generate the relevant DDCC from a given [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.md) which responds to the DDCC Questionnaire. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DDCC Composition](StructureDefinition-DDCCComposition.md) | Describes the logical structure for a Digital Documentation of COVID-19 Certificates (DDCC). |
| [DDCC Diagnostic Report](StructureDefinition-DDCCDiagnosticReport.md) | A DDCC Diagnostic Report contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) DiagnosticReport resouce, this is intended to map into an IPS DiagnosticReport resource. |
| [DDCC Document](StructureDefinition-DDCCDocument.md) | A [DDCC Document](StructureDefinition-DDCCDocument.md) is a document bundle containing the DDCC. |
| [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.md) | A [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.md) is a document reference to a [DDCC Document](StructureDefinition-DDCCDocument.md) containing the DDCC. The content attachment url will point to a DDCC Document. |
| [DDCC DocumentReference return for QR](StructureDefinition-DDCCDocumentReferenceQR.md) | DDCC DocumentReference for QR codes including the QR image and the serialized content. |
| [DDCC DocumentSigned](StructureDefinition-DDCCDocumentSigned.md) | A [DDCC Document Signed](StructureDefinition-DDCCDocumentSigned.md) is a document bundle containing the DDCC that has a digital signature. |
| [DDCC Folder](StructureDefinition-DDCCFolder.md) | DDCC Folder of the Paper Certificate |
| [DDCC Generate Health Certificate Parameters](StructureDefinition-DDCCGenerateHealthCertificateParameters.md) | Parameters for the [DDCC Generate Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthCertificate.md). |
| [DDCC Generate Health Folder Parameters](StructureDefinition-DDCCGenerateHealthFolderParameters.md) | Parameters for the [DDCC Generate Health Folder Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthFolder.md). |
| [DDCC Immunization](StructureDefinition-DDCCImmunization.md) | A DDCC Immunization contains the content corresponding to a row in the Vaccination Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Immunization resouce, this is intended to map into an IPS Immunization resource. |
| [DDCC Immunization Recommendation](StructureDefinition-DDCCImmunizationRecommendation.md) | A DDCC Immunization Recommendation contains the content corresponding to when a patient should return for a booster shot. |
| [DDCC Observation](StructureDefinition-DDCCObservation.md) | A DDCC Observation contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Observation resouce, this is intended to map into an IPS Observation resource. |
| [DDCC Organization](StructureDefinition-DDCCOrganization.md) | Abstraction for a DDCC Organization. There should be a DDCC Organization associated to each public health authortiy (PHA) |
| [DDCC Patient](StructureDefinition-DDCCPatient.md) | A DDCCPatient should:* if the [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier] is set then the value of [identifier.assigner](StructureDefinition-DDCCPatient-definitions.md#Patient.identifier.assigner) should be set to reference the [DDCC Organization](StructureDefinition-DDCCOrganization.md) resource associated to the PHA.
* obeys who-ddcc-patient-1
 |
| [DDCC Practitioner](StructureDefinition-DDCCPractitioner.md) | Container for an DDCC Practitioner, which is a Practitioner authorized by the PHA to vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.md). |
| [DDCC Practitioner Role](StructureDefinition-DDCCPractitionerRole.md) | Association of an [DDCC Practitioner](StructureDefinition-DDCCPractitioner.md) to a managing [DDCC Organization](StructureDefinition-DDCCOrganization.md), indicating that an DDCC Practitioner is authorized by the public health authority (PHA) to vaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.md). |
| [DDCC Procedure](StructureDefinition-DDCCProcedure.md) | A DDCC Procedure contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Procedure resouce, this is intended to map into an IPS Procedure resource. |
| [DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md) | DDCC Provide Document Bundle for ITI-65 |
| [DDCC Questionnaire based on SDC](StructureDefinition-DDCCQuestionnaireSDC.md) | DDCC Questionniare based on SDC Populatable Questionnaire with additional extension |
| [DDCC Revoke Health Certificate Parameters](StructureDefinition-DDCCRevokeHealthCertificateParameters.md) | Parameters for the [DDCC Revoke Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-revokeHealthCertificate.md). |
| [DDCC Specimen](StructureDefinition-DDCCSpecimen.md) | A DDCC Specimen contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Specimen resouce, this is intended to map into an IPS Specimen resource. |
| [DDCC Submission Set](StructureDefinition-DDCCSubmissionSet.md) | DDCC Submission Set for ITI-65 |
| [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.md) | An [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.md) is a transaction bundle containing the content of health events which are being submitted under the [Submit Health Event](transactions.md#submit-health-event) transaction. |
| [DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventResponse.md) | A DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventRespose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.md#submit-health-event) transaction. |
| [DDCC Test](StructureDefinition-DDCCTest.md) | A DDCC Test contains the content corresponding to a row in the Test Events section of a Paper DDCC. While this is not a further profile of the International Patient Summary (IPS) Device resouce, this is intended to map into an IPS Device resource. |
| [DDCC:TR Composition](StructureDefinition-DDCCTRComposition.md) | Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Test Result (DDCC:TR). |
| [DDCC:TR DocumentSigned](StructureDefinition-DDCCTRDocumentSigned.md) | A [DDCC:TR Document Signed](StructureDefinition-DDCCTRDocumentSigned.md) is a document bundle containing the DDCC:TR that has a digital signature. |
| [DDCC:VS Add Bundle](StructureDefinition-DDCCVSAddBundle.md) | Bundle to be transformed to from the DDCC:VS QuestionnaireResponse to add on the DDCC generator. |
| [DDCC:VS Composition](StructureDefinition-DDCCVSComposition.md) | Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Vaccination Status (DDCC:VS). |
| [DDCC:VS Document](StructureDefinition-DDCCTRDocument.md) | A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md) is a document bundle containing the DDCC:VS. |
| [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md) | A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.md) is a document bundle containing the DDCC:VS. |
| [DDCC:VS DocumentSigned](StructureDefinition-DDCCVSDocumentSigned.md) | A [DDCC:VS Document Signed](StructureDefinition-DDCCVSDocumentSigned.md) is a document bundle containing the DDCC:VS that has a digital signature. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DDCC Country Of Event for Immunization](StructureDefinition-DDCCCountryOfEvent.md) | DDCC Country Of Event for Immunization |
| [DDCC Event Brand for Immunization](StructureDefinition-DDCCEventBrand.md) | DDCC Event Brand for Immunization |
| [DDCC Vaccine Market Authorization for Immunization](StructureDefinition-DDCCVaccineMarketAuthorization.md) | DDCC Vaccine Market Authorization for Immunization |
| [DDCC Vaccine Valid From](StructureDefinition-DDCCVaccineValidFrom.md) | Date upon which provided vaccination is considered valid |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [COVID-19 Vaccine Codes for DIVOC](ValueSet-DIVOCValueSet.md) | COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions. |
| [DDCC Codes for ICAO Vaccines](ValueSet-ICAOV1ValueSet.md) | ICAO vaccines codes for DDCC so the FHIR server can perform expansions. |
| [DDCC Composition Category Codes](ValueSet-DDCCCompositionCategoryValueSet.md) | Categorization of DDCC Composition |
| [DDCC DesignationTypes for Folder](ValueSet-DDCCFolderDesignationTypeValueSet.md) | DDCC Designation Types ValueSet for DDCC Folders. |
| [DDCC Device Property Codes](ValueSet-DDCCDevicePropertyValueSet.md) | Properties of DDCC devices |
| [DDCC QR Format Codes](ValueSet-DDCCQRFormatValueSet.md) | Format of the representation of QR code |
| [DDCC QR Type Codes](ValueSet-DDCCQRTypeValueSet.md) | Type of QR codes by their business usage |
| [EU DCC Allowed Vaccine List (COVID-19)](ValueSet-EUDCCValueSet.md) | EU DCC Allowed Vaccine List (COVID-19). |
| [Lab Test - Pathogen - COVID-19 - SNOMED CT](ValueSet-LabTestPathogenCovid19SnomedValueSet.md) | This is a one-time snapshot of the allowed values for pathogens in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation. |
| [Lab Test - Pathogen - DIVOC](ValueSet-LabTestPathogenDivocValueSet.md) | This is a one-time snapshot of the allowed values for pathogens, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features> |
| [Lab Test - Qualitative Result - DIVOC](ValueSet-LabTestQualitativeResultDivocValueSet.md) | This is a one-time snapshot of the allowed values for lab test results, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features> |
| [Lab Test - Qualitative Result - ICAO](ValueSet-LabTestResultIcaoValueSet.md) | This is a one-time snapshot of the allowed values for lab test results in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation. |
| [Lab Test - Qualitative Result - SNOMED CT](ValueSet-LabTestQualitativeResultSnomedValueSet.md) | This is a one-time snapshot of the allowed values for lab test results in EUDCC and SMART Health Cards, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG and <http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/ValueSet-vaccine-snomed.html> respectively. Contents may need to be updated and readers should consult the original documentation. |
| [Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.md) | This is a one-time snapshot of the allowed values for lab test sample origins, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate is at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features> |
| [Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.md) | This is a one-time snapshot of the allowed values for lab test sample origins in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation. |
| [Lab Test - Type - COVID-19 - LOINC](ValueSet-LabTestTypeCovid19LoincValueSet.md) | This is a one-time snapshot of the allowed values for COVID-19 specific lab tests in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation. |
| [Lab Test - Type - DIVOC](ValueSet-LabTestTypeDivocValueSet.md) | This is a one-time snapshot of the allowed values for lab test types, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features> |
| [Lab Test - Type - Generic - LOINC](ValueSet-LabTestTypeLoincValueSet.md) | This is a one-time snapshot of the allowed values for generic lab tests in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation. |
| [Lab Test - Type - ICAO](ValueSet-LabTestTypeIcaoValueSet.md) | This is a one-time snapshot of the allowed values for lab test types in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation. |
| [Vaccine - COVID-19 - CVX](ValueSet-VaccineCovid19CvxValueSet.md) | This is a one-time snapshot of the allowed CVX codes for vaccines, retrieved in February 2023. Contents may need to be updated and readers should consult the credential documentation, found here http://hl7.org/fhir/uv/shc-vaccination/2021Sep/ValueSet-vaccine-cvx.html. More information on the CVX value set can be found here, <https://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx> |
| [Vaccine - COVID-19 - EU Union Register of Medicinial Products](ValueSet-VaccineCovid19EUUnionRegisterValueSet.md) | Union Register of medicinal products for vaccines with EU-wide authorisation. The Union Register is found at <https://ec.europa.eu/health/documents/community-register/html/index_en.htm>. However, the contents of this ValueSet are based on v1.14 (2023-01-25) of the [EU DCC value set guidelines](https://health.ec.europa.eu/system/files/2023-01/eu-dcc-value-sets_en.pdf). |
| [Vaccine - COVID-19 - Icd11](ValueSet-VaccineCovid19Icd11ValueSet.md) | tbd |
| [Vaccine - COVID-19 - SNOMED CT](ValueSet-VaccineCovid19SnomedValueSet.md) | This is a one-time snapshot of the allowed SNOMED values for vaccines, retrieved in February 2023. Contents may need to be updated and readers should consult the documentation, found here http://hl7.org/fhir/uv/shc-vaccination/2021Sep/ValueSet-vaccine-snomed.html |
| [WHO Agent Targeted (COVID-19)](ValueSet-WHODDCCAgentTargetedCOVID19.md) | WHO Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11) |
| [WHO DDCC Brand List (COVID-19)](ValueSet-WHODDCCBrandsCOVID19.md) | WHO DDCC Brand List (COVID-19) from [ICD 11](https://icd.who.int/browse11) |
| [WHO Disease or Agent Targeted (COVID-19)](ValueSet-WHODDCCDiseaseTargetedCOVID19.md) | WHO Disease or Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11) |
| [WHO Speciman Sample Origin (COVID-19)](ValueSet-WHODDCCSampleOriginCOVID19.md) | WHO Speciman Sample Origin List (COVID-19) |
| [WHO Test Result (COVID-19)](ValueSet-who-ddcc-test-result-covid-19.md) | WHO COVID-19 Test Result from [ICD 11](https://icd.who.int/browse11) |
| [WHO Type of Covid-19 Test](ValueSet-WHODDCCTypeofTestCOVID19.md) | WHO Type of COVID-19 Test |
| [WHO Vaccine List (COVID-19)](ValueSet-WHODDCCVaccinesCOVID19.md) | WHO Vaccine List (COVID-19) from [ICD 11](https://icd.who.int/browse11) |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [COVID-19 Vaccine Codes for DIVOC](CodeSystem-DIVOCCodeSystem.md) | COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions. |
| [CVX codes used in this IG](CodeSystem-WHODDCCcvx.md) | All CVX codes from `http://hl7.org/fhir/sid/cvx` used in this IG. Provided so the FHIR server can perform expansions. |
| [DDCC Codes for ICAO Vaccines](CodeSystem-ICAOV1CodeSystem.md) | ICAO vaccines codes for DDCC so the FHIR server can perform expansions. |
| [DDCC Codes for ICD11](CodeSystem-DDCCICD11CodeSystem.md) | ICD11 codes for DDCC so the FHIR server can perform expansions. |
| [DDCC Codes for examples](CodeSystem-DDCCExampleTestCodeSystem.md) | Example codes for example resources. |
| [DDCC Composition Category Codes](CodeSystem-DDCCCompositionCategoryCodeSystem.md) | Possible categories available for composition. |
| [DDCC Designation Types for Folder](CodeSystem-DDCCFolderDesignationTypeCodesystem.md) | DDCC Designation Types to use for DDCC Folders. |
| [DDCC Device Property Codes](CodeSystem-DDCCDevicePropertyCodeSystem.md) | Possible properties available for devices. |
| [DDCC QR Category Usage Codes](CodeSystem-DDCCQRTypeCodeSystem.md) | Possible formats available for QR usage. |
| [DDCC QR Format Codes](CodeSystem-DDCCQRFormatCodeSystem.md) | Possible formats available for QR data. |
| [DIVOC lab test origin codes used in this IG](CodeSystem-WHODDCCdivoclabtestorigin.md) | All DIVOC lab test origin codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [DIVOC lab test pathogen codes used in this IG](CodeSystem-WHODDCCdivoclabtestpathogen.md) | All DIVOC lab test pathogen codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [DIVOC lab test result codes used in this IG](CodeSystem-WHODDCCdivoclabtestresult.md) | All DIVOC lab test result codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [DIVOC lab test type codes used in this IG](CodeSystem-WHODDCCdivoclabtesttype.md) | All DIVOC lab test type codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [EUUR codes used in this IG](CodeSystem-WHODDCCeuur.md) | All EUUR codes from `https://ec.europa.eu/health/documents/community-register/html/` used in this IG. Provided so the FHIR server can perform expansions. |
| [ICAO lab test origin codes used in this IG](CodeSystem-WHODDCCicaolabtestorigin.md) | All ICAO lab test origin codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [ICAO lab test result codes used in this IG](CodeSystem-WHODDCCicaolabtestresult.md) | All ICAO lab test result codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [ICAO lab test type codes used in this IG](CodeSystem-WHODDCCicaolabtesttype.md) | All ICAO lab test type codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions. |
| [LOINC codes used in this IG](CodeSystem-WHODDCCloinc.md) | All LOINC codes from `http://loinc.org` used in this IG. Provided so the FHIR server can perform expansions. |
| [SNOMED codes used in this IG](CodeSystem-WHODDCCsnomed.md) | All SNOMED codes from `http://snomed.info/sct` used in this IG. Provided so the FHIR server can perform expansions. |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BundleVSToAddBundle](StructureMap-BundleVSToAddBundle.md) |  |
| [CertDCCtoCoreDataSet](StructureMap-CertDCCtoCoreDataSet.md) | Structure map transforming CertDCC logical model to bundle of Core Data Set logical model |
| [CertDIVOCtoCoreDataSet](StructureMap-CertDIVOCtoCoreDataSet.md) | Structure map transforming CertDIVOC logical model to bundle of Core Data Set logical model |
| [CertICAOtoCoreDataSet](StructureMap-CertICAOtoCoreDataSet.md) | Structure map transforming CertICAO logical model to bundle of Core Data Set logical model |
| [CertSHCtoCoreDataSet](StructureMap-CertSHCtoCoreDataSet.md) | Structure map transforming CertSHC logical model to bundle of Core Data Set logical model |
| [CoreDataSetLibrary](StructureMap-CoreDataSetLibrary.md) |  |
| [CoreDataSetVSLibrary](StructureMap-CoreDataSetVSLibrary.md) |  |
| [CoreDataSetVSToAddBundle](StructureMap-CoreDataSetVSToAddBundle.md) |  |
| [DDCCtoCoredataset](StructureMap-DDCCtoCoredataset.md) |  |
| [DDCCtoEUdcc](StructureMap-DDCCtoEUdcc.md) |  |
| [DDCCtoSHC](StructureMap-DDCCtoSHC.md) |  |
| [DIVOCtoDDCC](StructureMap-DIVOCtoDDCC.md) |  |
| [EUDCCtoDDCC](StructureMap-EUDCCtoDDCC.md) |  |
| [ICAOtoDDCC](StructureMap-ICAOtoDDCC.md) |  |
| [IPSToCoreDataSetVS](StructureMap-IPSToCoreDataSetVS.md) |  |
| [QRespToVSCoreDataSet](StructureMap-QRespToVSCoreDataSet.md) |  |
| [ResourcesToVSCoreDataSet](StructureMap-ResourcesToVSCoreDataSet.md) |  |
| [SHCJWTtoDDCC](StructureMap-SHCJWTtoDDCC.md) |  |
| [SHCToCoreDataSetTR](StructureMap-SHCToCoreDataSetTR.md) |  |
| [SHCToCoreDataSetVS](StructureMap-SHCToCoreDataSetVS.md) |  |
| [SHCtoDDCC](StructureMap-SHCtoDDCC.md) |  |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [ConceptMap from CVX to ICD-11 for Brands](ConceptMap-who-ddcc-map-cvx-icd11-brands.md) | Mapping from CVX to ICD-11 for COVID-19 Brands |
| [ConceptMap from CVX to ICD-11 for Vaccines](ConceptMap-who-ddcc-map-cvx-icd11-vaccines.md) | Mapping from CVX to ICD-11 for COVID-19 Vaccines |
| [ConceptMap from DIVOC to ICD-11 for Vaccines](ConceptMap-who-ddcc-map-divoc-icd11-vaccines.md) | Mapping from DIVOC to ICD-11 for COVID-19 Vaccines |
| [ConceptMap from EU DCC to ICD-11 for Vaccines](ConceptMap-who-ddcc-map-eudcc-icd11-vaccines.md) | Mapping from EU DCC to ICD-11 for COVID-19 Vaccines |
| [ConceptMap from ICAO to ICD-11 for Vaccines](ConceptMap-who-ddcc-map-icao-icd11-vaccines.md) | Mapping from ICAO to ICD11 for COVID-19 Vaccines |
| [ConceptMap from ICD-10 to SNOMED CT for Disease or Agent Targeted](ConceptMap-who-ddcc-map-icd11-icd10-disease-targeted.md) | Mapping from ICD-11 to ICD-10 for COVID-19 disease. |
| [ConceptMap from ICD-11 to DIVOC for Vaccines](ConceptMap-who-ddcc-map-icd11-divoc-vaccines.md) | Mapping from ICD-11 to DIVOC for COVID-19 Vaccines |
| [ConceptMap from ICD-11 to EU DCC for Vaccines](ConceptMap-who-ddcc-map-icd11-eudcc-vaccines.md) | Mapping from ICD-11 to EU DCC for COVID-19 Vaccines |
| [ConceptMap from ICD-11 to ICAO for Vaccines](ConceptMap-who-ddcc-map-icd11-icao-vaccines.md) | Mapping from ICD-11 to ICAO for COVID-19 Vaccines |
| [ConceptMap from ICD-11 to SNOMED CT for Agent Targeted](ConceptMap-who-ddcc-map-icd11-sct-agent-targeted.md) | Mapping from ICD-11 to SNOMED CT for COVID-19 Agent Targeted |
| [ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted](ConceptMap-who-ddcc-map-icd11-sct-disease-targeted.md) | Mapping from ICD-11 to SNOMED CT for COVID-19 disease. |
| [ConceptMap from ICD-11 to SNOMED CT for Test Result](ConceptMap-who-ddcc-map-icd11-sct-test-result.md) | Mapping from ICD-11 to SNOMED CT for COVID-19 Test Result |
| [ConceptMap from ICD-11 to SNOMED CT for Vaccines](ConceptMap-who-ddcc-map-icd11-sct-vaccines.md) | Mapping from ICD-11 to SNOMED CT for COVID-19 Vaccines |
| [ConceptMap from ICHI to LOINC for Type of Test](ConceptMap-who-ddcc-map-ichi-loinc-type-of-test.md) | Mapping from ICHI to LOINC for COVID-19 Type of Test |
| [ConceptMap from ICHI to SNOMED CT for Specimen Origin](ConceptMap-who-ddcc-map-ichi-sct-specimen-origin.md) | Mapping from ICHI to SNOMED CT for COVID-19 Specimen Origin |
| [ConceptMap from ICHI to SNOMED CT for Type of Test](ConceptMap-who-ddcc-map-ichi-sct-type-of-test.md) | Mapping from ICHI to SNOMED CT for COVID-19 Type of Test |
| [ConceptMap from LOINC to SNOMED CT for Type of Test](ConceptMap-who-ddcc-map-loinc-sct-type-of-test.md) | Mapping from LOINC to SNOMED CT for COVID-19 Type of Test |
| [ConceptMap from SNOMED CT to ICHI for Specimen Origin](ConceptMap-who-ddcc-map-sct-ichi-specimen-origin.md) | Mapping from SNOMED CT to ICHI for COVID-19 Specimen Origin |
| [Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11](ConceptMap-lab-test-pathogen-divoc-to-icd11.md) | [Lab Test - Pathogen - DIVOC](ValueSet-lab-test-pathogen-divoc.md) mapped to ICD-11 |
| [Lab Test - Pathogen - Mapping SNOMED CT to ICD-11](ConceptMap-lab-test-type-snomed-to-icd11.md) | [Lab Test - Type - Generic - LOINC](ValueSet-lab-test-type-loinc.md) mapped to ICD-11 |
| [Lab Test - Qualitative Result - Mapping ICAO to ICD-11](ConceptMap-lab-test-qual-result-icao-to-icd11.md) | [Lab Test - Qualitative Result - ICAO](ValueSet-lab-test-qual-result-icao.md) mapped to ICD-11 |
| [Lab Test - Result - Mapping DIVOC to ICD-11](ConceptMap-lab-test-qual-result-divoc-to-icd11.md) | [Lab Test - Qualitative Result - DIVOC](ValueSet-lab-test-qual-result-divoc.md) mapped to ICD-11 |
| [Lab Test - Result - Mapping SNOMED CT to ICD-11](ConceptMap-lab-test-qual-result-snomed-to-icd11.md) | [Lab Test - Qualitative Result - SNOMED CT](ValueSet-lab-test-qual-result-snomed.md) mapped to ICD-11 |
| [Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11](ConceptMap-lab-test-pathogen-snomed-to-icd11.md) | [Lab Test - Pathogen - COVID-19 - SNOMED CT](ValueSet-lab-test-pathogen-covid19-snomed.md) mapped to ICD-11 |
| [Lab Test - Sample Origin - Mapping DIVOC to ICD-11](ConceptMap-lab-test-sample-origin-divoc-to-icd11.md) | [Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.md) mapped to ICD-11 |
| [Lab Test - Sample Origin - Mapping ICAO to ICD-11](ConceptMap-lab-test-sample-origin-icao-to-icd11.md) | [Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.md) mapped to ICD-11 |
| [Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11](ConceptMap-lab-test-type-divoc-to-icd11.md) | [Lab Test - Type - DIVOC](ValueSet-lab-test-type-divoc.md) mapped to ICD-11 |
| [Lab Test - Type - Mapping ICAO to ICD-11](ConceptMap-lab-test-type-icao-to-icd11.md) | [Lab Test - Type - ICAO](ValueSet-lab-test-type-icao.md) mapped to ICD-11 |
| [Lab Test – Type - Mapping LOINC to ICD-11](ConceptMap-lab-test-type-covid19-loinc-to-icd11.md) | [Lab Test - Type - COVID-19 - LOINC](ValueSet-lab-test-type-covid19-loinc.md) mapped to ICD-11 |
| [Vaccine - COVID-19 - Mapping CVX to ICD-11](ConceptMap-vaccine-covid19-cvx-to-icd11.md) | [Vaccine - COVID-19 - CVX](ValueSet-vaccine-covid19-cvx.md) mapped to ICD-11 |
| [Vaccine - COVID-19 - Mapping EUDCC to ICD-11](ConceptMap-vaccine-covid19-euur-to-icd11.md) | [Vaccine - COVID-19 - EU Union Register of Medicinial Products](ValueSet-vaccine-covid19-euur.md) mapped to ICD-11 |
| [Vaccine - COVID-19 - Mapping SNOMED to ICD-11](ConceptMap-vaccine-covid19-snomed-to-icd11.md) | [Vaccine - COVID-19 - SNOMED CT](ValueSet-vaccine-covid19-snomed.md) mapped to ICD-11 |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [DDCCImmunizationArabic](Immunization-DDCCImmunizationArabic.md) |
| [DDCCImmunizationChinese](Immunization-DDCCImmunizationChinese.md) |
| [DDCCImmunizationEnglish](Immunization-DDCCImmunizationEnglish.md) |
| [DDCCImmunizationFrench](Immunization-DDCCImmunizationFrench.md) |
| [DDCCImmunizationRecommendationArabic](ImmunizationRecommendation-DDCCImmunizationRecommendationArabic.md) |
| [DDCCImmunizationRecommendationChinese](ImmunizationRecommendation-DDCCImmunizationRecommendationChinese.md) |
| [DDCCImmunizationRecommendationEnglish](ImmunizationRecommendation-DDCCImmunizationRecommendationEnglish.md) |
| [DDCCImmunizationRecommendationFrench](ImmunizationRecommendation-DDCCImmunizationRecommendationFrench.md) |
| [DDCCImmunizationRecommendationRussian](ImmunizationRecommendation-DDCCImmunizationRecommendationRussian.md) |
| [DDCCImmunizationRecommendationSpanish](ImmunizationRecommendation-DDCCImmunizationRecommendationSpanish.md) |
| [DDCCImmunizationRussian](Immunization-DDCCImmunizationRussian.md) |
| [DDCCImmunizationSpanish](Immunization-DDCCImmunizationSpanish.md) |
| [DDCCOrganizationArabic](Organization-DDCCOrganizationArabic.md) |
| [DDCCOrganizationChinese](Organization-DDCCOrganizationChinese.md) |
| [DDCCOrganizationEnglish](Organization-DDCCOrganizationEnglish.md) |
| [DDCCOrganizationFrench](Organization-DDCCOrganizationFrench.md) |
| [DDCCOrganizationRussian](Organization-DDCCOrganizationRussian.md) |
| [DDCCOrganizationSpanish](Organization-DDCCOrganizationSpanish.md) |
| [DDCCOrganizationXCL](Organization-DDCCOrganizationXCL.md) |
| [DDCCPatientArabic](Patient-DDCCPatientArabic.md) |
| [DDCCPatientChinese](Patient-DDCCPatientChinese.md) |
| [DDCCPatientEnglish](Patient-DDCCPatientEnglish.md) |
| [DDCCPatientFrench](Patient-DDCCPatientFrench.md) |
| [DDCCPatientRussian](Patient-DDCCPatientRussian.md) |
| [DDCCPatientSpanish](Patient-DDCCPatientSpanish.md) |
| [DDCCTXSHEbundleexample1](Bundle-DDCCTXSHEbundleexample1.md) |
| [DDCCTXSHEbundleexampleArabic](Bundle-DDCCTXSHEbundleexampleArabic.md) |
| [DDCCTXSHEbundleexampleChinese](Bundle-DDCCTXSHEbundleexampleChinese.md) |
| [DDCCTXSHEbundleexampleFrench](Bundle-DDCCTXSHEbundleexampleFrench.md) |
| [DDCCTXSHEbundleexampleRussian](Bundle-DDCCTXSHEbundleexampleRussian.md) |
| [DDCCTXSHEbundleexampleSpanish](Bundle-DDCCTXSHEbundleexampleSpanish.md) |
| [DDCCVSQuestionnaireResponseArabic](QuestionnaireResponse-DDCCVSQuestionnaireResponseArabic.md) |
| [DDCCVSQuestionnaireResponseChinese](QuestionnaireResponse-DDCCVSQuestionnaireResponseChinese.md) |
| [DDCCVSQuestionnaireResponseExample](QuestionnaireResponse-DDCCVSQuestionnaireResponseExample.md) |
| [DDCCVSQuestionnaireResponseFrench](QuestionnaireResponse-DDCCVSQuestionnaireResponseFrench.md) |
| [DDCCVSQuestionnaireResponseRussian](QuestionnaireResponse-DDCCVSQuestionnaireResponseRussian.md) |
| [DDCCVSQuestionnaireResponseSpanish](QuestionnaireResponse-DDCCVSQuestionnaireResponseSpanish.md) |
| [Digital Documentation of COVID-19 Certificate (DDCC)](Composition-DDCCCompositionExampleArabic.md) |
| [Digital Documentation of COVID-19 Certificate (DDCC)](Composition-DDCCCompositionExampleChinese.md) |
| [Digital Documentation of COVID-19 Certificate (DDCC)](Composition-DDCCCompositionExampleEnglish.md) |
| [Digital Documentation of COVID-19 Certificate (DDCC)](Composition-DDCCCompositionExampleFrench.md) |
| [Digital Documentation of COVID-19 Certificate (DDCC)](Composition-DDCCCompositionExampleRussian.md) |
| [Digital Documentation of COVID-19 Certificate (DDCC)](Composition-DDCCCompositionExampleSpanish.md) |
| [Example-Russian](Bundle-Example-Russian.md) |
| [ExampleArabic](Bundle-ExampleArabic.md) |
| [ExampleChinese](Bundle-ExampleChinese.md) |
| [ExampleEnglish](Bundle-ExampleEnglish.md) |
| [ExampleFrench](Bundle-ExampleFrench.md) |
| [ExampleSpanish](Bundle-ExampleSpanish.md) |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [IPS-Immunization-Example-Bundle-01](Bundle-IPS-Immunization-Example-Bundle-01.md) |
| [SHCVaccinationBundleDM-Example-English-From-ddcc-to-shc](Bundle-SHCVaccinationBundleDM-Example-English-From-ddcc-to-shc.md) |

