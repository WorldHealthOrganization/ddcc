
Instance: lab-test-qual-result-icao-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestQualResultIcaoToIcd11ConceptMap"
* title = "Lab Test - Method - mapping Icao to Icd11"
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

* copyright = "nan"

* group[0].element[0].code = #positive
* group[=].element[=].display = "Positive"
* group[=].element[=].target.code = #RA01.0
* group[=].element[=].target.display = "COVID-19, virus identified"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #negative
* group[=].element[=].display = "Negative"
* group[=].element[=].target.code = #RA01.1
* group[=].element[=].target.display = "COVID-19, virus not identified"
* group[=].element[=].target.equivalence = #equivalent

