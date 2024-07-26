
Instance: lab-test-pathogen-snomed-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestPathogenSnomedToIcd11ConceptMap"
* title = "Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11"
* description = "[Lab Test - Pathogen - COVID-19 - SNOMED CT](ValueSet-lab-test-pathogen-covid19-snomed.html) mapped to ICD-11"
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
  * source = "http://snomed.info/sct"
  * target = "http://id.who.int/icd11/mms"
  * element[+]
    * code = #840533007
    * display = "Severe acute respiratory syndrome coronavirus 2 (organism)"
    * target[+]
      * code = #XN109
      * display = "SARS-CoV-2"
      * equivalence = #equivalent

