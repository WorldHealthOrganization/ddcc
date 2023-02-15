Alias: $icao-lab-test-type = http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-type-icao

ValueSet: LabTestTypeIcaoValueSet
Id: lab-test-type-icao
Title: "Lab Test - Type - ICAO"
Description: "This is a one-time snapshot of the allowed values for lab test types in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation."

* ^experimental = true
// * ^copyright = "nan"

* $icao-lab-test-type#molecular(PCR) "Molecular (PCR)"
* $icao-lab-test-type#molecular(other) "Molecular (Other)"
* $icao-lab-test-type#antigen "Antigen"
* $icao-lab-test-type#antibody "Antibody"
