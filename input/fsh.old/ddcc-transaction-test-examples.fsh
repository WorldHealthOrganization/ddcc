Instance:     DDCCVSTXSHEParameters1
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[+].name = "response"
* parameter[=].resource = DDCCVSQuestionnaireResponseExample


Instance:     DDCCTXSHEbundleexample1
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[+].fullUrl = "http://www.example.org/fhir/Parameters/DDCCVSTXSHEParameters1"
* entry[=].resource = DDCCVSTXSHEParameters1
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"
