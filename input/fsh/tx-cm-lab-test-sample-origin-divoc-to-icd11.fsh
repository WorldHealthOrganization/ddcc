
Instance: lab-test-sample-origin-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestSampleOriginDivocToIcd11ConceptMap"
* title = "Lab Test - Sample Origin - mapping Divoc to Icd11"
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

* group[0].element[0].code = #RT-PCR
* group[=].element[=].display = "RT-PCR"
* group[=].element[=].target.code = #1334426561
* group[=].element[=].target.display = "Viral nucleic acid amplification test or NAAT"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #"Rapid Antigen Test (RAT)"
* group[=].element[=].display = "Rapid Antigen Test (RAT)"
* group[=].element[=].target.code = #2056159157
* group[=].element[=].target.display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #"Nasopharyngeal Swab"
* group[=].element[=].display = "Nasopharyngeal Swab"
* group[=].element[=].target.code = #50872817
* group[=].element[=].target.display = "Nasopharyngeal swab"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #"Throat swab"
* group[=].element[=].display = "Throat swab"
* group[=].element[=].target.code = #555916027
* group[=].element[=].target.display = "Oropharyngeal swab"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #"Nasal Swab"
* group[=].element[=].display = "Nasal Swab"
* group[=].element[=].target.code = #50872817
* group[=].element[=].target.display = "Nasopharyngeal swab"
* group[=].element[=].target.equivalence = #wider

