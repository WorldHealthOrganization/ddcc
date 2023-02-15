
Instance: lab-test-type-icao-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestTypeIcaoToIcd11ConceptMap"
* title = "Lab Test - Type - Mapping ICAO to ICD-11"
* description = "[Lab Test - Type - ICAO](ValueSet-lab-test-type-icao.html) mapped to ICD-11"
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

* group[+]
  * source = "http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-type-icao"
  * target = "http://id.who.int/icd11/mms"
  * element[+]
    * code = #positive
    * display = "Positive"
    * target[+]
      * code = #RA01.0
      * display = "COVID-19, virus identified"
      * equivalence = #equivalent

  * element[+]
    * code = #negative
    * display = "Negative"
    * target[+]
      * code = #RA01.1
      * display = "COVID-19, virus not identified"
      * equivalence = #equivalent

