
Instance: lab-test-type-snomed-to-icd11
InstanceOf: ConceptMap
Usage: #definition
* name = "LabTestTypeSnomedToIcd11ConceptMap"
* title = "Lab Test - Pathogen - Mapping SNOMED CT to ICD-11"
* description = "[Lab Test - Type - Generic - LOINC](ValueSet-lab-test-type-loinc.html) mapped to ICD-11"
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
  * source = "http://loinc.org"
  * target = "http://id.who.int/icd/entity"
  * element[+]
    * code = #LP6464-4
    * display = "Nucliec acid amplification with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #equivalent

  * element[+]
    * code = #LP217198-3
    * display = "Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #equivalent

  * element[+]
    * code = #95942-9
    * display = "Influenza virus A and B and SARS-CoV+SARS-CoV-2 (COVID-19) Ag panel - Upper respiratory specimen by Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #wider

  * element[+]
    * code = #97099-6
    * display = "Influenza virus A and B and SARS-CoV-2 (COVID-19) Ag panel - Upper respiratory specimen by Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #wider

  * element[+]
    * code = #95941-1
    * display = "Influenza virus A and B and SARS-CoV-2 (COVID-19) and Respiratory syncytial virus RNA panel - Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95380-2
    * display = "Influenza virus A and B and SARS-CoV-2 (COVID-19) and SARS-related CoV RNA panel - Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95423-0
    * display = "Influenza virus A and B and SARS-CoV-2 (COVID-19) identified in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95422-2
    * display = "Influenza virus A and B and SARS-CoV-2 (COVID-19) RNA panel - Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #100345-8
    * display = "Influenza virus A and B and SARS-CoV-2 (COVID-19) RNA panel - Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95209-3
    * display = "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #wider

  * element[+]
    * code = #98069-8
    * display = "SARS-CoV-2 (COVID-19) Ab [Presence] in Saliva (oral fluid) by Rapid immunoassay"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94558-4
    * display = "SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #wider

  * element[+]
    * code = #96119-3
    * display = "SARS-CoV-2 (COVID-19) Ag [Presence] in Upper respiratory specimen by Immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #wider

  * element[+]
    * code = #97097-0
    * display = "SARS-CoV-2 (COVID-19) Ag [Presence] in Upper respiratory specimen by Rapid immunoassay"
    * target[+]
      * code = #2056159157
      * display = "Rapid immunoassay detecting viral proteins or Ag-RDT"
      * equivalence = #wider

  * element[+]
    * code = #96094-8
    * display = "SARS-CoV-2 (COVID-19) and SARS-related CoV RNA panel - Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #98080-5
    * display = "SARS-CoV-2 (COVID-19) and SARS-related CoV RNA panel - Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96896-6
    * display = "SARS-CoV-2 (COVID-19) clade [Type] in Specimen by Molecular genetics method"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96764-6
    * display = "SARS-CoV-2 (COVID-19) E gene [Cycle Threshold #] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96763-8
    * display = "SARS-CoV-2 (COVID-19) E gene [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96895-8
    * display = "SARS-CoV-2 (COVID-19) lineage [Identifier] in Specimen by Molecular genetics method"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #100157-7
    * display = "SARS-CoV-2 (COVID-19) lineage [Type] in Specimen by Sequencing"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96957-6
    * display = "SARS-CoV-2 (COVID-19) M gene [Presence] in Upper respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95521-1
    * display = "SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96898-2
    * display = "SARS-CoV-2 (COVID-19) N gene [Cycle Threshold #] in Oropharyngeal wash by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94510-5
    * display = "SARS-CoV-2 (COVID-19) N gene [Cycle Threshold #] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94311-8
    * display = "SARS-CoV-2 (COVID-19) N gene [Cycle Threshold #] in Specimen by Nucleic acid amplification using CDC primer-probe set N1"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94312-6
    * display = "SARS-CoV-2 (COVID-19) N gene [Cycle Threshold #] in Specimen by Nucleic acid amplification using CDC primer-probe set N2"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95522-9
    * display = "SARS-CoV-2 (COVID-19) N gene [Log #/volume] (viral load) in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94760-6
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Nasopharynx by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96986-5
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Nose by NAA with non-probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95409-9
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Nose by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94533-7
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94756-4
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by Nucleic acid amplification using CDC primer-probe set N1"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94757-2
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by Nucleic acid amplification using CDC primer-probe set N2"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95425-5
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96448-6
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Saliva (oral fluid) by Nucleic acid amplification using CDC primer-probe set N1"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96958-4
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Saliva (oral fluid) by Nucleic acid amplification using CDC primer-probe set N2"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94766-3
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Serum or Plasma by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94316-7
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94307-6
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Specimen by Nucleic acid amplification using CDC primer-probe set N1"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94308-4
    * display = "SARS-CoV-2 (COVID-19) N gene [Presence] in Specimen by Nucleic acid amplification using CDC primer-probe set N2"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #97098-8
    * display = "SARS-CoV-2 (COVID-19) Nsp2 gene [Presence] in Upper respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #98132-4
    * display = "SARS-CoV-2 (COVID-19) ORF1a region [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #98494-8
    * display = "SARS-CoV-2 (COVID-19) ORF1a region [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96899-0
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Cycle Threshold #] in Oropharyngeal wash by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94644-2
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Cycle Threshold #] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94511-3
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Cycle Threshold #] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94559-2
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95824-9
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94639-2
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #97104-4
    * display = "SARS-CoV-2 (COVID-19) ORF1ab region [Units/volume] (viral load) in Upper respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #98131-6
    * display = "SARS-CoV-2 (COVID-19) ORF1b region [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #98493-0
    * display = "SARS-CoV-2 (COVID-19) ORF1b region [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94646-7
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Cycle Threshold #] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94645-9
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Cycle Threshold #] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96120-1
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Lower respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94534-5
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96091-4
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94314-2
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96123-5
    * display = "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Upper respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #99314-7
    * display = "SARS-CoV-2 (COVID-19) RdRp gene mutation detected [Identifier] in Specimen by Molecular genetics method"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94745-7
    * display = "SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94746-5
    * display = "SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94819-0
    * display = "SARS-CoV-2 (COVID-19) RNA [Log #/volume] (viral load) in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94565-9
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with non-probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94759-8
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95406-5
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Nose by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96797-6
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Oropharyngeal wash by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95608-6
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with non-probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94500-6
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95424-8
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by Sequencing"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94845-5
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94822-4
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Saliva (oral fluid) by Sequencing"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94660-8
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Serum or Plasma by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94309-2
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96829-7
    * display = "SARS-CoV-2 (COVID-19) RNA [Presence] in Specimen from Donor by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96897-4
    * display = "SARS-CoV-2 (COVID-19) RNA panel - Oropharyngeal wash by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94531-1
    * display = "SARS-CoV-2 (COVID-19) RNA panel - Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95826-4
    * display = "SARS-CoV-2 (COVID-19) RNA panel - Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94306-8
    * display = "SARS-CoV-2 (COVID-19) RNA panel - Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96900-6
    * display = "SARS-CoV-2 (COVID-19) S gene [Cycle Threshold #] in Oropharyngeal wash by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94642-6
    * display = "SARS-CoV-2 (COVID-19) S gene [Cycle Threshold #] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94643-4
    * display = "SARS-CoV-2 (COVID-19) S gene [Cycle Threshold #] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94640-0
    * display = "SARS-CoV-2 (COVID-19) S gene [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95609-4
    * display = "SARS-CoV-2 (COVID-19) S gene [Presence] in Respiratory specimen by Sequencing"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96765-3
    * display = "SARS-CoV-2 (COVID-19) S gene [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94767-1
    * display = "SARS-CoV-2 (COVID-19) S gene [Presence] in Serum or Plasma by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94641-8
    * display = "SARS-CoV-2 (COVID-19) S gene [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96752-1
    * display = "SARS-CoV-2 (COVID-19) S gene mutation [Presence] in Specimen by Molecular genetics method"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96751-3
    * display = "SARS-CoV-2 (COVID-19) S gene mutation detected [Identifier] in Specimen by Molecular genetics method"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96894-1
    * display = "SARS-CoV-2 (COVID-19) sequencing and identification panel - Specimen by Molecular genetics method"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #100156-9
    * display = "SARS-CoV-2 (COVID-19) variant [Type] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96741-4
    * display = "SARS-CoV-2 (COVID-19) variant [Type] in Specimen by Sequencing"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96755-4
    * display = "SARS-CoV-2 (COVID-19) variant interpretation in Specimen Narrative"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94764-8
    * display = "SARS-CoV-2 (COVID-19) whole genome [Nucleotide sequence] in Isolate or Specimen by Sequencing"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94509-7
    * display = "SARS-related coronavirus E gene [Cycle Threshold #] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96121-9
    * display = "SARS-related coronavirus E gene [Presence] in Lower respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94758-0
    * display = "SARS-related coronavirus E gene [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #95823-1
    * display = "SARS-related coronavirus E gene [Presence] in Saliva (oral fluid) by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94765-5
    * display = "SARS-related coronavirus E gene [Presence] in Serum or Plasma by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94315-9
    * display = "SARS-related coronavirus E gene [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #96122-7
    * display = "SARS-related coronavirus E gene [Presence] in Upper respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94313-4
    * display = "SARS-related coronavirus N gene [Cycle Threshold #] in Specimen by Nucleic acid amplification using CDC primer-probe set N3"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94310-0
    * display = "SARS-related coronavirus N gene [Presence] in Specimen by Nucleic acid amplification using CDC primer-probe set N3"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94502-2
    * display = "SARS-related coronavirus RNA [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94647-5
    * display = "SARS-related coronavirus RNA [Presence] in Specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

  * element[+]
    * code = #94532-9
    * display = "SARS-related coronavirus+MERS coronavirus RNA [Presence] in Respiratory specimen by NAA with probe detection"
    * target[+]
      * code = #1334426561
      * display = "Viral nucleic acid amplification test or NAAT"
      * equivalence = #wider

