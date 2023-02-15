
Instance: lab-test-type-covid19-loinc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestTypeCovid19LoincToIcd11ConceptMap"
* title = "Lab Test – Method - mapping Loinc to Icd11"
* description = "nan"
* status = #draft
* date = "2023-02-14"
// * publisher = "TBD"
// * url = "https://github.com/ddcc/TBD"
// * version = "TBD"
// * contact.name = "TBD"
// * contact.telecom.system = 
// * contact.telecom.value = 
// * jurisdiction =

* copyright = "TODO: provide copyright information"

* group[0].element[0].code = #LA11883-8
* group[=].element[=].display = "Not detected"
* group[=].element[=].target.code = #RA01.1
* group[=].element[=].target.display = "COVID-19, virus not identified"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LA6577-6
* group[=].element[=].display = "Negative"
* group[=].element[=].target.code = #RA01.1
* group[=].element[=].target.display = "COVID-19, virus not identified"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LA6576-8
* group[=].element[=].display = "Positive"
* group[=].element[=].target.code = #RA01.0
* group[=].element[=].target.display = "COVID-19, virus identified"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LA18996-1
* group[=].element[=].display = "Strong positive"
* group[=].element[=].target.code = #RA01.0
* group[=].element[=].target.display = "COVID-19, virus identified"
* group[=].element[=].target.equivalence = #wider

