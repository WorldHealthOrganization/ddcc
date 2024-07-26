
Instance: lab-test-type-icao-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestTypeIcaoToIcd11ConceptMap"
* title = "Lab Test - Type - Mapping ICAO to ICD-11"
* description = "[Lab Test - Type - ICAO](ValueSet-lab-test-type-icao.html) mapped to ICD-11"
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
  * source = "http://smart.who.int/ddcc/CodeSystem/lab-test-type-icao"
  * target = "http://id.who.int/icd11/mms"
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

