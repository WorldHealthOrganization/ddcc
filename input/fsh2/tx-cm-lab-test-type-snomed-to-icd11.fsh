
Instance: lab-test-type-snomed-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestTypeSnomedToIcd11ConceptMap"
* title = "Lab Test - Pathogen - Mapping SNOMED CT to ICD-11"
* description = "[Lab Test - Type - Generic - LOINC](ValueSet-lab-test-type-loinc.html) mapped to ICD-11"
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
  * source = "http://loinc.org"
  * target = "http://id.who.int/icd/release/11/mms"
  * element[+]
    * code = #LP6464-4
    * display = "Nucliec acid amplification with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #equivalent

  * element[+]
    * code = #LP217198-3
    * display = "Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #equivalent

