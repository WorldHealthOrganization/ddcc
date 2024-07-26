
Instance: lab-test-sample-origin-icao-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestSampleOriginIcaoToIcd11ConceptMap"
* title = "Lab Test - Sample Origin - Mapping ICAO to ICD-11"
* description = "[Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.html) mapped to ICD-11"
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
  * source = "http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-icao"
  * target = "http://id.who.int/icd/release/11/mms"
  * element[+]
    * code = #nasopharyngeal
    * display = "Sampling method: nasopharyngeal"
    * target[+]
      * code = #JAM.AH.XF
      * display = "Specimen collection from nasopharynx"
      * equivalence = #equivalent

  * element[+]
    * code = #oropharyngeal
    * display = "Sampling method: oropharyngeal"
    * target[+]
      * code = #KAR.AH.XF 
      * display = "Specimen collection from oropharynx"
      * equivalence = #equivalent

  * element[+]
    * code = #saliva
    * display = "Sampling method: saliva"
    * target[+]
      * code = #KAZ.AH.XD
      * display = "Specimen collection of saliva"
      * equivalence = #equivalent

  * element[+]
    * code = #blood
    * display = "Sampling method: blood"
    * target[+]
      * code = #DIA.AH.XA
      * display = "Specimen collection of blood"
      * equivalence = #equivalent

