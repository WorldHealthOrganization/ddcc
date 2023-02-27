
Instance: lab-test-type-divoc-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestTypeDivocToIcd11ConceptMap"
* title = "Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11"
* description = "[Lab Test - Type - DIVOC](ValueSet-lab-test-type-divoc.html) mapped to ICD-11"
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
  * source = "http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-type-divoc"
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
    * code = #rt-pcr
    * display = "RT-PCR"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #equivalent

  * element[+]
    * code = #"rapid antigen test (rat)"
    * display = "Rapid Antigen Test (RAT)"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #equivalent

