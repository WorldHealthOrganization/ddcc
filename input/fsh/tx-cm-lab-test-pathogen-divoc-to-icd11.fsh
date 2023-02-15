
Instance: lab-test-pathogen-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestPathogenDivocToIcd11ConceptMap"
* title = "Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11"
* description = "[Lab Test - Pathogen - DIVOC](ValueSet-lab-test-pathogen-divoc.html) mapped to ICD-11"
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
  * source = "http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-pathogen-divoc"
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

  * element[+]
    * code = #COVID-19
    * display = "Concerns the detection of SARS-CoV-2 infection."
    * target[+]
      * code = #XN109
      * display = "SARS-CoV-2"
      * equivalence = #equivalent

