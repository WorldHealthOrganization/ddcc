
Instance: lab-test-sample-origin-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestSampleOriginDivocToIcd11ConceptMap"
* title = "Lab Test - Sample Origin - Mapping DIVOC to ICD-11"
* description = "[Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.html) mapped to ICD-11"
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
  * source = "http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-sample-origin-divoc"
  * target = "http://id.who.int/icd/entity"
  * element[+]
    * code = #RT-PCR
    * display = "RT-PCR"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #equivalent

  * element[+]
    * code = #"Rapid Antigen Test (RAT)"
    * display = "Rapid Antigen Test (RAT)"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #equivalent

  * element[+]
    * code = #"Nasopharyngeal Swab"
    * display = "Nasopharyngeal Swab"
    * target[+]
      * code = #50872817
      * display = "Nasopharyngeal swab"
      * equivalence = #equivalent

  * element[+]
    * code = #"Throat swab"
    * display = "Throat swab"
    * target[+]
      * code = #555916027
      * display = "Oropharyngeal swab"
      * equivalence = #wider

  * element[+]
    * code = #"Nasal Swab"
    * display = "Nasal Swab"
    * target[+]
      * code = #50872817
      * display = "Nasopharyngeal swab"
      * equivalence = #wider

