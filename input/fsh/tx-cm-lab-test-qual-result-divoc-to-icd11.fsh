
Instance: lab-test-qual-result-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestQualResultDivocToIcd11ConceptMap"
* title = "Lab Test - Result - Mapping DIVOC to ICD-11"
* description = "[Lab Test - Qualitative Result - DIVOC](ValueSet-lab-test-qual-result-divoc.html) mapped to ICD-11"
* status = #draft
* date = "2023-02-20"
// * publisher = "TBD"
// * url = "https://github.com/ddcc/TBD"
// * version = "TBD"
// * contact.name = "TBD"
// * contact.telecom.system = 
// * contact.telecom.value = 
// * jurisdiction =

* copyright = "TODO: provide copyright information"

* group[+]
  * source = "http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-qual-result-divoc"
  * target = "http://id.who.int/icd11/mms"
  * element[+]
    * code = #Negative
    * display = "Negative"
    * target[+]
      * code = #RA01.1
      * display = "COVID-19, virus not identified"
      * equivalence = #equivalent

  * element[+]
    * code = #Positive
    * display = "Positive"
    * target[+]
      * code = #RA01.0
      * display = "COVID-19, virus identified"
      * equivalence = #equivalent

