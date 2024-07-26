Alias: $icao-lab-test-result = http://smart.who.int/ddcc/CodeSystem/lab-test-qual-result-icao

ValueSet: LabTestResultIcaoValueSet
Id: lab-test-qual-result-icao
Title: "Lab Test - Qualitative Result - ICAO"
Description: "This is a one-time snapshot of the allowed values for lab test results in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation."

* ^experimental = true
// * ^copyright = "nan"

* $icao-lab-test-result#normal "Normal"
* $icao-lab-test-result#abnormal "Abnormal"
* $icao-lab-test-result#positive "Positive"
* $icao-lab-test-result#negative "Negative"
