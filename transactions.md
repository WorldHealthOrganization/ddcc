# Transactions - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Transactions**

## Transactions

### Submit Health Event

 The Submit Health Event transaction is initiated by a [Digital Health Solution](actors.md#digital-health-solution) against the [DDCC Generation Service](actors.md#ddcc-generator). 

#### Trigger Event 

 The Submit Health Event transaction may be initiated in any of the following ways: 
* The [Digital Health Solution](actors.md#digital-health-solution) is online and a health event was recorded by the Vaccinator or the Data Entry Personnel.
* The [Digital Health Solution](actors.md#digital-health-solution) comes online after recording one or more health events while in an offline mode.
* The [Digital Health Solution](actors.md#digital-health-solution) is used to record health events recorded on a paper register some time after the event.
 

#### Message Semantics

#####  Message Semantics Request

 The message semantics for the Register Health Certificate transaction utilizes a [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.md) which is a batch Bundle of [Parameters](StructureDefinition-DDCCGenerateHealthCertificateParameters.md) for the [Generate Health Certificate Operation](OperationDefinition-DDCCQuestionnaireResponsegenerateHealthCertificate.md) which includes [DDCC Questionnaire Response](StructureDefinition-DDCCQuestionnaireResponse.md) resources for the request message. The specific DDCC Questionnaire Response resource is determined by the health event that is the subject of the transaction. 

#####  Message Semantics Response

 The response to a Register Health Certificate transaction is a [DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventResponse.md) which consists of a Bundle of type batch-response following the FHIR specification for [transaction responses](https://www.hl7.org/fhir/http.html#transaction-response). 

####  Pre-conditions

 The DDCC Generation Service should have a Document Signing Certificate (DSC) issued by the [Public Health Authority](actors.md#public-health-authority) and registered with an approved Public Key Directory such as the National Public Key Directory. 

 When a jurisdiction participates in the Digital-Online scenario, the DSC should be registered with an approved Public Key Directory. 

####  Expected Actions

 The following are the expected actions for the actors participating in this transaction: 
*  The [DDCC Generation Service](actors.md#ddcc-generator): 
1. May serialize the[DDCC Questionnaire Response](StructureDefinition-DDCCQuestionnaireResponse.md)content as payload for encoding as a QR code.
1. May use its DSC to sign the QR Code Content as part of the QR Content schema.
1. Shall generate and sign a[DDCC Document](StructureDefinition-DDCCDocument.md).
1. Shall return the generated signed[DDCC Document](StructureDefinition-DDCCDocument.md)to the[Digital Health Solution](actors.md#digital-health-solution).
 
*  If a jurisdiction also participates in the Digital-Online scenario, the [DDCC Generation Service](actors.md#ddcc-generator): 
1. Shall determine if the paper ID associated with the transaction already has content in the registry using the[Retrieve Health Folder](transactions.md#retrieve-health-folder)transaction
1. If a jurisdiction also has a[DDCC Repository Service](actors.md#ddcc-repository):
* Shall initiate a [Store Health Certificate](#store-health-certificate) transaction using the generated DDCC Document.

1. Shall initiate a[Register Health Certificate](transactions.md#register-health-certificate)transaction using a[DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md).
1. Shall create an audit event based on the[Security Audit Considerations for a Document Recipient](https://profiles.ihe.net/ITI/MHD/ITI-65.html#2365512-document-recipient-audit).
1. Include the resulting[DDCC Registry Service](actors.md#ddcc-registry)endpoints for the signed DDCC as part of the response message.
 
 

### Store Health Certificate

 The Store Health Certificate transaction is initiated by a [DDCC Generation Service](actors.md#ddcc-generator) against the [DDCC Repository Service](actors.md#ddcc-repository). 

#### Trigger Event 

 The Submit Health Event transaction may be initiated when a [DDCC Generation Service](actors.md#ddcc-generator) has received a [Submit Health Event](#submit-health-event) and needs to store the resulting DDCC Document in the DDCC Repository Service. 

#### Message Semantics

#####  Message Semantics Request

 The message semantics for the Store Health Certificate transaction utilizes a [FHIR create interaction](https://www.hl7.org/fhir/http.html#create) to create a [DDCC Document](StructureDefinition-DDCCDocument.md). 

#####  Message Semantics Response

 The response to a Store Health Certificate transaction is documented in the [FHIR create interaction](https://www.hl7.org/fhir/http.html#create). 

####  Expected Actions

 The expected actions of the [DDCC Repository Service](actors.md#ddcc-repository) in this transaction are that it: 
1. Shall store the DDCC Document.
1. Shall return the location of the DDCC Document.
 

###  Register Health Certificate

 The Register Health Certiciate transaction is initiated by a [DDCC Generation Service](actors.md#ddcc-generator) against the [DDCC Registry Service](actors.md#ddcc-registry). This is based off of the [Provide Document Bundle [ITI-65]](https://profiles.ihe.net/ITI/MHD/ITI-65.html) transaction from the MHD profile. 

####  Trigger Event

 The Register Health Certificate transaction is initiated when a [DDCC Generation Service](actors.md#ddcc-generator) receives a valid Submit Health Event request from a [Digital Health Solution](actors.md#digital-health-solution) in a Digital-Online scenario. 

####  Message Semantics

 The DDCC Generation Service will follow the message semantics from [MHD's Provide Document Bundle transaction [ITI-65]](https://profiles.ihe.net/ITI/MHD/ITI-65.html#2365412-message-semantics). 

 The DDCC Generation Service will compose a [DDCC Provide Document Bundle](StructureDefinition-DDCCProvideDocumentBundle.md) to submit to the DDCC Registry Service. 

####  Expected Actions

 The actors will follow the expected actions from [MHD's ITI-65](https://profiles.ihe.net/ITI/MHD/ITI-65.html#2365413-expected-actions) including the audit event based on the [Security Audit Considerations for a Document Recipient](https://profiles.ihe.net/ITI/MHD/ITI-65.html#2365512-document-recipient-audit). 

###  Retrieve Health Certificate Reference

 The Retrieve Health Certiciate transaction is used in the Digital-Online context and is used for the retrieval and optional verification of a single line of a DDCC. 

 The Retrieve Health Certificate transaction may be initiated by a [Verifier](actors.md#verifier) against the [DDCC Registry Service](actors.md#ddcc-registry) in a jursidicition particpating in the Digital-Online scenario. 

 The Retrive Health Certificate Reference Transaction can be handled as an MHD transaction or [International Patient Access](http://build.fhir.org/ig/HL7/fhir-ipa/index.html) (IPA) transaction. 

 The Retrieve Health Certificate Reference MHD transaction is based on [MHD's Find Document References transaction [ITI-67]](https://profiles.ihe.net/ITI/MHD/ITI-67.html). It can be used to verify the existence of the Document Reference for the Immunization event. All message semantics and expected actions are the same as documented by MHD including the audit event, based on the [Security Audit Considerations for a Document Responder](https://profiles.ihe.net/ITI/MHD/ITI-67.html#2367512-document-responder-audit). 

 The Retrieve Health Certificate Reference IPA transaction is based on the [$docref Operation](http://build.fhir.org/ig/HL7/fhir-ipa/OperationDefinition-docref.html). All message semantics and expecgted actions are the same as documented by IPA. 

####  Trigger Event

 The Retrieve Health Certificate Reference may be initiated by: 
1. A[Verifier](actors.md#verifier)wishing to validate and verify a DDCC.
 

###  Retrieve Health Certificate

 The Retrieve Health Certiciate transaction is used in the Digital-Online context and is used for the retrieval and optional verification of a single line of a DDCC. 

 The Retrieve Health Certificate transaction may be initiated by a [Verifier](actors.md#verifier) or [Digital Health Solution](actors.md#digital-health-solution) against the [DDCC Repository Service](actors.md#ddcc-repository) in a jursidicition particpating in the Digital-Online scenario after retrieving the location from the [Retrieve Health Certificate Reference](#retrieve-health-certificate-reference) or [Retrieve Health Folder](#retrieve-health-folder) transactions. 

 The Retrieve Health Certificate transaction is based on [MHD's Retrieve Document transaction [ITI-68]](https://profiles.ihe.net/ITI/MHD/ITI-68.html). It can be used to verify the contents of a DDCC Immunization event. All message semantics and expected actions are the same as documented by MHD including the audit event based on the [Security Audit Considerations for a Document Responder](https://profiles.ihe.net/ITI/MHD/ITI-68.html#2368512-document-responder-audit). 

####  Trigger Event

 The Retrieve Health Certificate may be initiated by: 
1. A[Verifier](actors.md#verifier)wishing to validate and verify a DDCC.
1. A[Digital Health Solution](actors.md#digital-health-solution)wishing to retrieve a DDCC for continuity of care (if a DDCC's use for this purpose has been specified).
 

###  Retrieve Health Folder

 The Retrieve Health Folder transaction is used in the Digital-Online context and is used for the retrieval and optional verification of DDCC contained in the [DDCC Folder](StructureDefinition-DDCCFolder.md). 

 The Retrieve Health Folder transaction may be initiated by a [Verifier](actors.md#verifier) or [Digital Health Solution](actors.md#digital-health-solution) against the [DDCC Registry Service](actors.md#ddcc-registry) in a jursidicition particpating in the Digital-Online scenario. 

 The Retrieve Health Folder transaction is based on [MHD's Find Document Lists transaction [ITI-66]](https://profiles.ihe.net/ITI/MHD/ITI-66.html). It can be used to find a DDCC Folder for a DDCC Patient with all of the Immunization events. All message semantics and expected actions are the same as documented by MHD, including the audit event based on the [Security Audit Considerations for a Document Responder](https://profiles.ihe.net/ITI/MHD/ITI-66.html#2366512-document-responder-audit). 

####  Trigger Event

 The Retrieve Health Folder may be initiated by: 
1. A[Verifier](actors.md#verifier)wishing to validate and verify content of a DDCC.
1. A[Digital Health Solution](actors.md#digital-health-solution)wishing to find a DDCC to update during a[Submit Health Event transaction](#submit-health-event).
 

###  Revoke Health Certificate

 The Revoke Health Certificate transaction is used in the Digital-Online context and is used for the revocation of a DDCC contained in the [DDCC Folder](StructureDefinition-DDCCFolder.md). 

 The Revoke Health Certificate transaction may be initiated by a [Digital Health Solution](actors.md#digital-health-solution) against the [DDCC Generation Service](actors.md#ddcc-generator) in a jursidicition particpating in the Digital-Online scenario. 

 The Revoke Health Certificate transaction is a [Revoke Health Certificate Operation](OperationDefinition-DDCCQuestionnaireResponserevpleHealthCertificate.md). The client will submit [Parameters](StructureDefinition-DDCCRevokeHealthCertificateParameters.md) which include the DDCC ID of the DDCC to be revoked. The response will be a boolean value, indicating whether the revocation succeeded or not. 

####  Trigger Event

 The Retrieve Health Folder may be initiated by: 
1. A[Digital Health Solution](actors.md#digital-health-solution)that has uncovered an issue with a DDCC, e.g. the lot used was invalid.
 

####  Expected Actions

 The [DDCC Generation Service](actors.md#ddcc-generator) will update the DDCC Registry and DDCC Repository if it exists. 
1. The DDCC Folder will be updated to remove the DDCC Document Reference using MHD's[Provide Document Bundle [ITI-65]](https://profiles.ihe.net/ITI/MHD/ITI-65.html).
1. The DDCC Document Reference will be updated to set the status to entered-in-error.
1. The DDCC Document will be deleted from the DDCC Repository.
 

