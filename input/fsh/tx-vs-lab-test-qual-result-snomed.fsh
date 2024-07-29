Alias: $snomed = http://snomed.info/sct

ValueSet: LabTestQualitativeResultSnomedValueSet
Title: "Lab Test - Qualitative Result - SNOMED CT"
Description: "This is a one-time snapshot of the allowed values for lab test results in EUDCC and SMART Health Cards, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG and <http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/ValueSet-vaccine-snomed.html> respectively. Contents may need to be updated and readers should consult the original documentation."

* ^experimental = true
// * ^copyright = "nan"

* $snomed#10828004 "Positive (qualifier value)"
* $snomed#11214006 "Reactive (qualifier value)"
* $snomed#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $snomed#131194007 "Non-reactive (qualifier value)"
* $snomed#260373001 "Detected (qualifier value)"
* $snomed#260385009 "Negative (qualifier value)"
* $snomed#260415000 "Not detected (qualifier value)"
* $snomed#415684004 "Suspected (qualifier value)"
* $snomed#419984006 "Inconclusive (qualifier value)"
* $snomed#42425007 "Equivocal (qualifier value)"
* $snomed#455371000124106 "Invalid result (qualifier value)"
* $snomed#720735008 "Presumptive positive (qualifier value)"
* $snomed#82334004 "Indeterminate (qualifier value)"
