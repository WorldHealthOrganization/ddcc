---
layout: default
title: Terminology Mapping
---

This page explains the approach taken in this IG to map data elements with terminology bindings in DIVOC, EU DCC, ICAO, and SHC credential types.

### Strategy for mapping COVID certificate terminologies to the DDCC core data sets

#### Test result

The core data set ([FHIR.WHO.DDCC\\DDCC Core Data Set Logical Model for Test Result](StructureDefinition-DDCCCoreDataSet.TR.html)) has bindings to the following terminology:

- **Pathogen targeted** (`pathogen`):<br/>ICD-11 MMS codes for COVID and COVID variants - [FHIR.WHO.DDCC\\WHO Agent Targeted (COVID-19)](ValueSet-who-ddcc-agent-targeted-covid-19.html)

- **Type of test** (`type`):<br/>ICD-11 Foundation Component entities for NAAT or rapid tests - [FHIR.WHO.DDCC\\WHO Type of Covid-19 Test](ValueSet-who-ddcc-type-of-test-covid-19.html)

- **Specimen sample origin** (`origin`):<br/>ICD-11 Foundation Component entities for the source of the specimen (e.g., nasopharyngeal swab) - [FHIR.WHO.DDCC\\WHO Speciman Sample Origin (COVID-19)](ValueSet-who-ddcc-sample-origin-covid-19.html)

- **Test result** (`result`):<br/>ICD-11 MMS codes for "detected" or "not detected" - [FHIR.WHO.DDCC\\WHO Test Result (COVID-19)](ValueSet-who-ddcc-test-result-covid-19.html)

- **Test centre country** (`country`):<br/>Three character country codes - [Valueset-iso3166-1-3](http://hl7.org/fhir/R4/valueset-iso3166-1-3.html)

{:.table-striped.table.table-bordered}
| Cert. type  | Element                                        | Core data mapping | Approach                                          | Source ValueSet                          | Mapping                                 |
| ----------- | ---------------------------------------------- | ----------------- | ------------------------------------------------- | ---------------------------------------- | --------------------------------------- |
| DIVOC       | `evidence.disease`                             | `pathogen`        | Map custom code system to ICD-11                  | [LabTestPathogenDivocValueSet]           | [lab-test-pathogen-divoc-to-icd11]      |
| DIVOC       | `evidence.testType`                            | `type`            | Map custom code system to ICD-11                  | [LabTestTypeDivocValueSet]               | [lab-test-type-divoc-to-icd11]          |
| DIVOC       | `evidence.sampleOrigin`                        | `origin`          | Map custom code system to ICD-11                  | [LabTestSampleOriginDivocValueSet]       | [lab-test-sample-origin-divoc-to-icd11] |
| DIVOC       | `evidence.result`                              | `result`          | Map custom code system to ICD-11                  | [LabTestQualitativeResultDivocValueSet]  | [lab-test-qual-result-divoc-to-icd11]   |
| DIVOC       | `evidence.facility.address.addressCountry`     | `country`         | ISO-3166 two or three character                   | [ISO-3166]                               | n/a                                     |
| EU&nbsp;DCC | `-260.t.tg`                                    | `pathogen`        | Map SNOMED CT to ICD-11                           | [LabTestPathogenCovid19SnomedValueSet]   | [lab-test-pathogen-snomed-to-icd11]     |
| EU&nbsp;DCC | `-260.t.tt`                                    | `type`            | Map generic LOINCs to ICD-11                      | [LabTestTypeLoincValueSet]               | [lab-test-type-covid19-loinc-to-icd11]  |
| EU&nbsp;DCC | Not present                                    | `origin`          | n/a                                               | n/a                                      | n/a                                     |
| EU&nbsp;DCC | `-260.t.tr`                                    | `result`          | Map SNOMED CT to ICD-11                           | [LabTestQualitativeResultSnomedValueSet] | [lab-test-qual-result-snomed-to-icd11]  |
| EU&nbsp;DCC | `-260.t.to`                                    | `country`         | ISO-3166 two character                            | [ISO-3166]                               | n/a                                     |
| ICAO        | Not present                                    | `pathogen`        | n/a                                               | n/a                                      | n/a                                     |
| ICAO        | `data.msg.tr.tc`                               | `type`            | Map custom code system to ICD-11                  | [LabTestTypeIcaoValueSet]                | [lab-test-type-icao-to-icd11]           |
| ICAO        | `data.msg.tr.m`                                | `origin`          | Map custom code system to ICD-11                  | [LabTestSampleOriginIcaoValueSet]        | [lab-test-sample-origin-icao-to-icd11]  |
| ICAO        | `data.msg.tr.r`                                | `result`          | Map custom code system to ICD-11                  | [LabTestResultIcaoValueSet]              | [lab-test-qual-result-icao-to-icd11]    |
| ICAO        | `data.msg.sp.ctr`                              | `country`         | Assuming ISO-3166 three character                 | [ISO-3166]                               | n/a                                     |
| SHC         | Inferred from `code`                           | `pathogen`        | Assume COVID-19 if LOINC [listed here][loinclist] | n/a                                      | n/a                                     |
| SHC         | `code`*                                        | `type`            | Map LOINC to ICD-11                               | [LabTestTypeCovid19LoincValueSet]        | [lab-test-type-covid19-loinc-to-icd11]  |
| SHC         | Not currently present, but will be `bodySite`* | `origin`          | n/a                                               | n/A                                      | n/a                                     |
| SHC         | `valueCodeableConcept.coding[0].code`*         | `result`          | Map SNOMED CT to ICD-11                           | [LabTestQualitativeResultSnomedValueSet] | [lab-test-qual-result-snomed-to-icd11]  |

\* Note that these elements are within the FHIR Bundle that is part of the SMART Health Card. The full path to this is `vc.credentialSubject.fhirBundle.entry[].resource`.

[loinclist]: https://loinc.org/sars-cov-2-and-covid-19/
[ISO-3166]: https://www.hl7.org/fhir/iso3166.html

#### Proof of vaccination

The core data set ([FHIR.WHO.DDCC\\DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination](StructureDefinition-DDCCCoreDataSet.VS.PoV.html)) has bindings to the following terminology:

- **Vaccine** (`vaccine`):<br/>ICD-11 MMS codes for both types of vaccine (e.g., `XM5DF6 COVID-19 vaccine, live attenuated virus`) and specific vaccine products (e.g., `XM3DT5  COVID-19 Vaccine Moderna`)

- **Vaccine brand** (`brand`):<br/>Not currently bound to a ValueSet

- **Country of vaccination** (`country`):<br/>Three character country codes - [Valueset-iso3166-1-3](http://hl7.org/fhir/R4/valueset-iso3166-1-3.html)

##### Mapping approach

{:.table-striped.table.table-bordered}
| Cert. type  | Element                                    | Core data mapping | Approach                                                                                                                                   | Source ValueSet                                                                                | Mapping                                                             |
| ----------- | ------------------------------------------ | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| DIVOC       | `evidence.icd11Code`                       | `vaccine`         | Presumably already ICD-11 MMS (see below)                                                                                                  | [VaccineCovid19Icd11ValueSet]                                                                  | n/a                                                                 |
| DIVOC       | `evidence.facility.address.addressCountry` | `country`         | ISO-3166 two or three character                                                                                                            | [ISO-3166]                                                                                     | n/a                                                                 |
| EU&nbsp;DCC | `-260.1.v.mp`                              | `vaccine`         | Preferred binding is Union Register, but could also be ICD-11 or arbitrary strings. Only Union Register is considered in our mapping code. | [VaccineCovid19EUUnionRegisterValueSet]                                                        | [vaccine-covid19-euur-to-icd11]                                     |
| EU&nbsp;DCC | `-260.1.v.co`                              | `country`         | ISO-3166 two character                                                                                                                     | [ISO-3166]                                                                                     | n/a                                                                 |
| ICAO        | `data.msg.ve.des`                          | `vaccine`         | Already ICD-11 MMS                                                                                                                         | [VaccineCovid19Icd11ValueSet]                                                                  | n/a                                                                 |
| ICAO        | `data.msg.ve.vd[].ctr`                     | `country`         | Already ISO-3166 three character                                                                                                           | [ISO-3166]                                                                                     | n/a                                                                 |
| SHC         | `vaccineCode.coding[0].code`*              | `vaccine`         | ICD-11 MMS, CVX, or SNOMED CT; latter two mapped to ICD-11 MMS                                                                             | [VaccineCovid19CvxValueSet]<br>[VaccineCovid19Icd11ValueSet]<br>[VaccineCovid19SnomedValueSet] | [vaccine-covid19-cvx-to-icd11]<br>[vaccine-covid19-snomed-to-icd11] |
| SHC         | Not present in computable form             | `country`         | n/a                                                                                                                                        | n/a                                                                                            | n/a                                                                 |

\* Note that these elements are within the FHIR Bundle that is part of the SMART Health Card. The full path to this is `vc.credentialSubject.fhirBundle.entry[].resource`.

#### FHIR Resource naming conventions

##### ValueSets

- Lab test - pathogen (COVID-19):
  - `name`: `LabTestPathogenCovid19{TerminologyName}ValueSet`
  - `id`: `lab-test-pathogen-covid19-{terminology-name}`
  - `title`: `Lab Test - Pathogen - COVID-19 - {Terminology Name}`
- Lab test - type (COVID-19-specific):
  - `name`: `LabTestTypeCovid19{TerminologyName}ValueSet`
  - `id`: `lab-test-type-covid19-{terminology-name}`
  - `title`: `Lab Test - Type - COVID-19 - {Terminology Name}`
- Lab test - type (generic):
  - `name`: `LabTestType{TerminologyName}ValueSet`
  - `id`: `lab-test-type-{terminology-name}`
  - `title`: `Lab Test - Type - {Terminology Name}`
- Lab test - sample origin:
  - `name`: `LabTestSampleOrigin{TerminologyName}ValueSet`
  - `id`: `lab-test-sample-origin-{terminology-name}`
  - `title`: `Lab Test - Sample Origin - {Terminology Name}`
- Lab test - qualitative result:
  - `name`: `LabTestQualitativeResult{TerminologyName}ValueSet`
  - `id`: `lab-test-qual-result-{terminology-name}`
  - `title`: `Lab Test - Qualitative Result - {Terminology Name}`
- Vaccine (COVID-19):
  - `name`: `VaccineCovid19{TerminologyName}ValueSet`
  - `id`: `vaccine-covid19-{terminology-name}`
  - `title`: `Vaccine - COVID-19 - {Terminology Name}`

FSH filenames should be `tx-vs-{id}.fsh`. Each ValueSet should be in a separate file.

All ValueSet descriptions should describe where the codes in the value set came from and when the snapshot was taken. This should have enough information for someone to verify the contents of the value set or update it using the same approach.

The goal is that `name` should clearly identify both the resource type and contents when used in [FSH](https://hl7.org/fhir/uv/shorthand/) within this IG, and the canonical URI (based on `id`) should not have any redundant information in it. The `title` should not include the resource type as this is implicit in how the resources are displayed in the IG.

Terminology names in `id`s should be shortened as much as possible while still being readable. For example, SNOEMD CT becomes `snomed`; ICD-11 becomes `icd11`.

"COVID-19" should appear in `id`/`name`/`title` when using a COVID-specific subset of a broader terminology system. For internally defined code systems (like those used by DIVOC and ICAO), "COVID-19" should _not_ appear in case those specifications are expanded in the future (otherwise it would be necessary to create a 2nd value set, which would be problematic for terminology bindings in the logical model).

##### CodeSystems

Code systems are included to allow for expansion.

FSH filenames should be `tx-cs-{alias}.fsh`, like `tx-cs-snomed.fsh`. Each CodeSystem should be in a separate file. In cases where the IG already has a code system defined, the codes should be merged into the existing system rather than placed in a separate file.

##### ConceptMaps

In the naming scheme below:

- `$type` = `LabTestPathogenCovid19`/`lab-test-pathogen-covid19`/`Lab Test - Pathogen - COVID-19`, etc.; for vaccines it is `VaccineCovid19`/`vaccine-covid19`/`Vaccine - COVID-19`
- `$source` = terminology name for the source terminology
- `$target` = terminology name for the target terminology

With these variables defined, ConceptMaps should be named as follows:

- `name`: `{$type}{$source}To{$target}ConceptMap`
- `id`: `{$type}-{$source}-to-{$target}`
- `title`: `{$type} - mapping {$source} to {$target}`

For example, if:

- `$type` = `Vaccine - COVID-19` (and variants)
- `$source` = `CVX`
- `$target` = `ICD-11`

...then we would have:

- `id`: `vaccine-covid19-cvx-to-icd-11`
- `title`: `Vaccine - COVID-19 - mapping CVX to ICD-11`
- Filename: `tx-cm-vaccine-covid19-cvx-to-icd-11.fsh`

Each ConceptMap should be in a separate file.

### Source specifications

It can be difficult to find the "source of truth" specifications for the certificate formats that are mapped to the DDCC core data sets. The following are links to the best known documentation for each of the certificate formats listed above:

- **DIVOC**
  - Elements are defined by JSON-LD. As of 2023-02-12, we were told by the DIVOC team that the most current JSON-LD context for [vaccines is here](https://github.com/egovernments/DIVOC/blob/icmr/vaccination-context/vaccination-context.js) and for [test results is here](https://github.com/egovernments/DIVOC/blob/icmr/test-certificate-context/test-certificate-context.js).
    - Note that the URIs for the DIVOC-specific JSON-LD contexts embedded in the certificates do not resolve.
  - [DIVOC's documentation is here](https://divoc.digit.org), but this does not include element-level descriptions (e.g., terminology bindings at a per-element level).
    - Terminology bindings at the element level must be inferred from [more general documentation](https://divoc.digit.org/platform/divocs-verifiable-certificate-features/what-information-goes-into-a-qr-code).
    - The `v2` JSON-LD context introduces the `evidence.icd11Code` element for vaccines, but there is no documentation on which codes this element is bound to or whether this is used in production.
    - There is no other computable representation of vaccine type/product.
  - As of 2023-02-12, the public documentation does not include any information on test result certificates. The information we have was provided privately by the DIVOC team.
- **EU DCC**
  - Starting place: [Technical specifications for EU Digital COVID Certificates - Volumes 1-5](https://health.ec.europa.eu/publications/technical-specifications-eu-digital-covid-certificates-volumes-1-5_en).
  - This led to [Volume 1: Formats and trust management](https://health.ec.europa.eu/system/files/2022-02/digital-covid-certificates_v1_en.pdf), which references "Implementing Decision (EU) 2021/1073, Annex I".
  - [Implementing Decision (EU) 2021/1073, Annex I can be found here](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG), along with other relevant Annexes.
- **[ICAO](https://www.icao.int/vdsnc-spec)**
- **SMART Health Cards**
  - [General SMART Health Card specification](https://spec.smarthealth.cards/)
  - [COVID-19 vaccine and testing-specific specification](http://vci.org/ig/vaccination-and-testing)


{% include fsh-link-references.md %}
