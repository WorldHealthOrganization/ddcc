
Instance: lab-test-sample-origin-icao-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestSampleOriginIcaoToIcd11ConceptMap"
* title = "Lab Test - Qualitative Result - mapping Icao to Icd11"
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

* group[0].element[0].code = #molecular(PCR)
* group[=].element[=].display = "Molecular (PCR)"
* group[=].element[=].target.code = #1334426561
* group[=].element[=].target.display = "Viral nucleic acid amplification test or NAAT"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #molecular(other)
* group[=].element[=].display = "Molecular (Other)"
* group[=].element[=].target.code = #2056159157
* group[=].element[=].target.display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
* group[=].element[=].target.equivalence = #narrower

* group[=].element[+].code = #nasopharyngeal
* group[=].element[=].display = "Sampling method: nasopharyngeal"
* group[=].element[=].target.code = #50872817
* group[=].element[=].target.display = "Nasopharyngeal swab"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #oropharyngeal
* group[=].element[=].display = "Sampling method: oropharyngeal"
* group[=].element[=].target.code = #555916027
* group[=].element[=].target.display = "Oropharyngeal swab"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #saliva
* group[=].element[=].display = "Sampling method: saliva"
* group[=].element[=].target.code = #1162766848
* group[=].element[=].target.display = "Saliva specimen"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #blood
* group[=].element[=].display = "Sampling method: blood"
* group[=].element[=].target.code = #1695591348
* group[=].element[=].target.display = "Blood specimen"
* group[=].element[=].target.equivalence = #equivalent

