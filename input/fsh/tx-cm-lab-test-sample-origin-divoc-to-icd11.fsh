
Instance: lab-test-sample-origin-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestSampleOriginDivocToIcd11ConceptMap"
* title = "Lab Test - Sample Origin - Mapping DIVOC to ICD-11"
* description = "[Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.html) mapped to ICD-11"
* status = #draft
* date = "2023-02-21"
// * publisher = "TBD"
// * url = "https://github.com/ddcc/TBD"
// * version = "TBD"
// * contact.name = "TBD"
// * contact.telecom.system = 
// * contact.telecom.value = 
// * jurisdiction =

* copyright = "TODO: provide copyright information"

* group[+]
  * source = "http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-divoc"
  * target = "http://id.who.int/icd/release/11/mms"
  * element[+]
    * code = #"Nasopharyngeal Swab"
    * display = "Nasopharyngeal Swab"
    * target[+]
      * code = #JAM.AH.XF 
      * display = "Nasopharyngeal swab"
      * equivalence = #equivalent

  * element[+]
    * code = #"Throat swab"
    * display = "Throat swab"
    * target[+]
      * code = #KAR.AH.XF
      * display = "Oropharyngeal swab"
      * equivalence = #wider

  * element[+]
    * code = #"Nasal Swab"
    * display = "Nasal Swab"
    * target[+]
      * code = #JAM.AH.XF
      * display = "Nasopharyngeal swab"
      * equivalence = #wider

  * element[+]
    * code = #"nasopharyngeal swab"
    * display = "Nasopharyngeal Swab"
    * target[+]
      * code = #JAM.AH.XF
      * display = "Nasopharyngeal swab"
      * equivalence = #equivalent

  * element[+]
    * code = #"throat swab"
    * display = "Throat swab"
    * target[+]
      * code = #KAR.AH.XF
      * display = "Oropharyngeal swab"
      * equivalence = #wider

  * element[+]
    * code = #"nasal swab"
    * display = "Nasal Swab"
    * target[+]
      * code = #JAM.AH.XF
      * display = "Nasopharyngeal swab"
      * equivalence = #wider

