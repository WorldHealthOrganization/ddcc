
Instance: lab-test-qual-result-snomed-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestQualResultSnomedToIcd11ConceptMap"
* title = "Lab Test - Result - Mapping SNOMED CT to ICD-11"
* description = "[Lab Test - Qualitative Result - SNOMED CT](ValueSet-lab-test-qual-result-snomed.html) mapped to ICD-11"
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
    * code = #10828004
    * display = "Positive (qualifier value)"
    * target[+]
      * code = #RA01.0
      * display = "COVID-19, virus identified"
      * equivalence = #equivalent

  * element[+]
    * code = #260373001
    * display = "Detected (qualifier value)"
    * target[+]
      * code = #RA01.0
      * display = "COVID-19, virus identified"
      * equivalence = #equivalent

  * element[+]
    * code = #260385009
    * display = "Negative (qualifier value)"
    * target[+]
      * code = #RA01.1
      * display = "COVID-19, virus not identified"
      * equivalence = #equivalent

  * element[+]
    * code = #260415000
    * display = "Not detected (qualifier value)"
    * target[+]
      * code = #RA01.1
      * display = "COVID-19, virus not identified"
      * equivalence = #equivalent

