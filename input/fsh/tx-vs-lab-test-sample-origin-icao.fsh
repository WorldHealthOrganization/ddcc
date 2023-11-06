Alias: $icao-lab-test-origin = http://smart.who.int/ddcc/CodeSystem/lab-test-sample-origin-icao

ValueSet: LabTestSampleOriginIcaoValueSet
Id: lab-test-sample-origin-icao
Title: "Lab Test - Sample Origin - ICAO"
Description: "This is a one-time snapshot of the allowed values for lab test sample origins in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation."

* ^experimental = true
// * ^copyright = "nan"

* $icao-lab-test-origin#nasopharyngeal "Sampling method: nasopharyngeal"
* $icao-lab-test-origin#oropharyngeal "Sampling method: oropharyngeal"
* $icao-lab-test-origin#saliva "Sampling method: saliva"
* $icao-lab-test-origin#blood "Sampling method: blood"
* $icao-lab-test-origin#other "Sampling method: other"
