Alias: $divoc-lab-test-result = http://smart.who.int/ddcc/CodeSystem/lab-test-qual-result-divoc

ValueSet: LabTestQualitativeResultDivocValueSet
Id: lab-test-qual-result-divoc
Title: "Lab Test - Qualitative Result - DIVOC"
Description: "This is a one-time snapshot of the allowed values for lab test results, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>"

* ^experimental = true
// * ^copyright = "nan"

* $divoc-lab-test-result#Negative "Negative"
* $divoc-lab-test-result#Positive "Positive"
* $divoc-lab-test-result#Inconclusive "Inconclusive"
* $divoc-lab-test-result#Void "Void"
* $divoc-lab-test-result#negative "Negative"
* $divoc-lab-test-result#positive "Positive"
* $divoc-lab-test-result#inconclusive "Inconclusive"
* $divoc-lab-test-result#void "Void"
