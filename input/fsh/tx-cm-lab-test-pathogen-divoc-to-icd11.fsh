
Instance: lab-test-pathogen-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestPathogenDivocToIcd11ConceptMap"
* title = "Lab Test - Pathogen - COVID-19 - mapping Divoc to Icd11"
* description = "nan"
* status = #draft
* date = "2023-02-15"
// * publisher = "TBD"
// * url = "https://github.com/ddcc/TBD"
// * version = "TBD"
// * contact.name = "TBD"
// * contact.telecom.system = 
// * contact.telecom.value = 
// * jurisdiction =

* copyright = "TODO: provide copyright information"

* group[0].element[0].code = #Negative
* group[=].element[=].display = "Negative"
* group[=].element[=].target.code = #RA01.1
* group[=].element[=].target.display = "COVID-19, virus not identified"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Positive
* group[=].element[=].display = "Positive"
* group[=].element[=].target.code = #RA01.0
* group[=].element[=].target.display = "COVID-19, virus identified"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #COVID-19
* group[=].element[=].display = "Concerns the detection of 
SARS-CoV-2 infection. "
* group[=].element[=].target.code = #XN109
* group[=].element[=].target.display = "SARS-CoV-2"
* group[=].element[=].target.equivalence = #equivalent

