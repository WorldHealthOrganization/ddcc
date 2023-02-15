
Instance: lab-test-sample-origin-icao-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestSampleOriginIcaoToIcd11ConceptMap"
* title = "Lab Test - Sample Origin - Mapping ICAO to ICD-11"
* description = "[Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.html) mapped to ICD-11"
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
  * source = "http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-sample-origin-icao"
  * target = "http://id.who.int/icd/entity"
  * element[+]
    * code = #molecular(PCR)
    * display = "Molecular (PCR)"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #equivalent

  * element[+]
    * code = #molecular(other)
    * display = "Molecular (Other)"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #narrower

  * element[+]
    * code = #nasopharyngeal
    * display = "Sampling method: nasopharyngeal"
    * target[+]
      * code = #50872817
      * display = "Nasopharyngeal swab"
      * equivalence = #equivalent

  * element[+]
    * code = #oropharyngeal
    * display = "Sampling method: oropharyngeal"
    * target[+]
      * code = #555916027
      * display = "Oropharyngeal swab"
      * equivalence = #equivalent

  * element[+]
    * code = #saliva
    * display = "Sampling method: saliva"
    * target[+]
      * code = #1162766848
      * display = "Saliva specimen"
      * equivalence = #equivalent

  * element[+]
    * code = #blood
    * display = "Sampling method: blood"
    * target[+]
      * code = #1695591348
      * display = "Blood specimen"
      * equivalence = #equivalent

