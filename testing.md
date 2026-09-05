# Testing - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Testing**

## Testing

### Prototypical Testing Framework

A prototypical testing framework is provided:

* [Overview and objectives of the framework](https://github.com/WorldHealthOrganization/ddcc-tests/blob/main/input/pagecontent/index.md)
* [Code repository](https://github.com/openhie/ddcc-tests)

This testing framework is a basis for understanding the reference actors and transactions, and how users may test their own profiled DDCC-based frameworks. The tooling seeks to provide reuseable artifacts, bulk fake data creation, test fixtures based on common tools, a sandbox for testing, and the ability to run all tests locally on Windows, macOS, and Linux. It uses a prototypical bulk data generator based on templates for FHIR Shorthand and a neutral naming system for individuals in the six official United Nations languages.

This framework does not support formal conformance, nor is it authoritative or comprehensive.

 Additional resources related to this framework include:

* [Names code repository](https://github.com/intrahealth/synthea-elements)
* [Bulk FSH generator code repository](https://github.com/intrahealth/bulk-fsh)

### Compliance Testing Framework

A compliance testing framework is provided at:

* [DDCC Compliance Testing Framework](https://github.com/WorldHealthOrganization/ddcc-compliance-testing-framework)

This compliance testing framework tests the following transactions using Gherkin:

* [ Submit Health Event](transactions.md#submit-health-event)
* [ Generate Health Certificate](https://smart.who.int/ddcc/OperationDefinition-DDCCQuestionnaireResponsegenerateHealthCertificate.html)
* [ Register Health Certificate](transactions.md#store-health-certificate)
* [ Store Health Certificate](transactions.md#register-health-certificate)

