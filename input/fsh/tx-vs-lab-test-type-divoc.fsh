Alias: $divoc-lab-test-type = http://worldhealthorganization.github.io/ddcc/CodeSystem/lab-test-type-divoc

ValueSet: LabTestTypeDivocValueSet
Id: lab-test-type-divoc
Title: "Lab Test - Type - DIVOC"
Description: "This is a one-time snapshot of the allowed values for lab test types, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>"

* ^experimental = true
// * ^copyright = "nan"

* $divoc-lab-test-type#RT-PCR "RT-PCR"
* $divoc-lab-test-type#"Rapid Antigen Test (RAT)" "Rapid Antigen Test (RAT)"
* $divoc-lab-test-type#rt-pcr "RT-PCR"
* $divoc-lab-test-type#"rapid antigen test (rat)" "Rapid Antigen Test (RAT)"
