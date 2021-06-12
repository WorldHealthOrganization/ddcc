Instance:     DDCC-TX-SHE-Parameters-1
InstanceOf:   Parameters
Usage:        #inline

* parameter[+].name = "response"
* parameter[=].resource = DDCC-QuestionnaireResponse-Example


Instance:     DDCC-TX-SHE-bundle-example-1
InstanceOf:   Bundle
Usage:        #example

* type = #batch
* entry[+].resource = DDCC-TX-SHE-Parameters-1
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse/$generateHealthCertificate"
