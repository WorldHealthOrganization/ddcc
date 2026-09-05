# Workflows - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Workflows**

## Workflows

 Business process diagrams for each of the [Use Cases](use_cases.md) are included in the Digital Documentation of COVID-19 Certificates (DDCC): Vaccination Status (DDCC:VS) and Test Result (DDCC:TR) — Technical Specifications and Implementation Guidance.
This page includes sequence diagrams with DDCC actors (described in the
[Actors](actors.md)) and Fast Healthcare Interoperability Resources (FHIR) references, and includes options, such as the use of QR codes and a DDCC Repository Service.

### Workflows and Transactions 
The following diagram illustrates the business requirement workflows as realized through the system level
[transactions](transactions.md). As the DDCC:TR has preconditions and does not include the test event, its process starts when the certificate is generated and it is not included in the Continuity of Care scenario.

