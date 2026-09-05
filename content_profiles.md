# Content Profiles - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Content Profiles**

## Content Profiles

This page includes resources that can be leveraged to support the implementation of Digital Documentation of COVID-19 Certificates (DDCC) with examples of implementations already deployed and additional technical specifications for specific use cases. Note that the following is a non-exhaustive list of examples.

DDCC reference applications and architecture are linked in the [Reference Implementations](reference_implementation.md).

Additional relevant resources are included in the [References](references.md) and [Dependencies](dependencies.md).

### Example DDCC implementations

* [ European Union (EU) Digital COVID Certificate](https://ec.europa.eu/info/live-work-travel-eu/coronavirus-response/safe-covid-19-vaccines-europeans/eu-digital-covid-certificate_en)

### Software consistent with the DDCC:VS data set and architecture

Note: The examples included here are in addition to the software included in the [Reference Implementations](reference_implementation.md).

* [DIVOC (Digital Infrastructure for Vaccination Open Credentialing) in India](https://divoc.egov.org.in/)
* [SMART Health Cards](https://smarthealth.cards)

### Example specifications that can be used to guide implementation

* [ International Civil Aviation Organization (ICAO) Guidelines: visible digital seals (VDS-NC) for travel-related health proofs](https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Guidelines%20-%20VDS%20for%20Travel-Related%20Public%20Health%20Proofs.pdf)
* [OpenHIE DDCC FHIR Implementation Guide](https://openhie.github.io/ddcc)
* [SMART Health Cards Framework](https://spec.smarthealth.cards)

### DDCC:VS and SMART Health Card interoperability

 The table below maps data elements between the DDCC:VS logical model and corresponding profiles in the SMART Health Cards Vaccination and Testing implementation guide. Only required or Must Support elements are included. The Mapping Equivalence indicates if there are mismatches between the corresponding profiles and follows the Concept Map equivalence guidance: 
* unmatched: No element that is equal or equivalent, will be expected to cause either data loss or mapping errors in unmapped direction.
* wider: Match exists but left side has stricter criteria, can result in data loss or invalid resource when transforming from right to left. For terminology, code on right is less specific.
* narrower: Match exists but right side has stricter criteria, can result in data loss or invalid resource when transforming from left to right. For terminology, code on right is more specific.
 

* Element:  
  * Data Type:  
  * Cardinality: Min
  * Condition (IF True): Max
  * Mapping Equivalence: Computable FHIRPath
  * Element: Narrative
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments: Min
  * ?: Max
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS
  * Data Type: DDCCCoreDataSet
  * Cardinality: 1
  * Condition (IF True): *
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationBundleDM
  * Assignment: Bundle
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationBundleDM.type
  * Assignment: code
  * Comments: 1
  * ?: 1
  * ?: "collection"
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationBundleDM.entry:patient.resource
  * Assignment: SHCPatientGeneralDM
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCPatientGeneralDM.name
  * Assignment: HumanName
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCPatientGeneralDM.name.family
  * Assignment: string
  * Comments: 0
  * ?: 1
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCPatientGeneralDM.name.given
  * Assignment: string
  * Comments: 0
  * ?: *
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.name
  * Data Type: string
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: wider
  * Cardinality: SHCPatientGeneralDM.name.text
  * Assignment: string
  * Comments: 0
  * ?: 1
  * ?:  
  * ?: vc-name-invariant allows only either text or structured name. If structured name is present, right to left would need to concatenate components to produce text
* Element: DDCCCoreDataSetVS.birthDate
  * Data Type: date
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCPatientGeneralDM.birthDate
  * Assignment: date
  * Comments: 0
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.identifier
  * Data Type: Identifier
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate
  * Data Type: BackboneElement
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate.issuer
  * Data Type: Reference(DDCC Organization)
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: unmatched
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?: Issuer in SHC is contained within the credential payload outside the FHIR bundle.
* Element: DDCCCoreDataSetVS.certificate.hcid
  * Data Type: Identifier
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: unmatched
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate.ddccid
  * Data Type: Identifier
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate.version
  * Data Type: string
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: unmatched
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate.period
  * Data Type: Period
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate.period.start
  * Data Type: date
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.certificate.period.end
  * Data Type: date
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination
  * Data Type: BackboneElement
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationBundleDM.entry:Immunization.resource
  * Assignment: SHCVaccinationDM
  * Comments: 1
  * ?: *
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.status
  * Assignment: code
  * Comments: 1
  * ?: 1
  * ?: "completed"
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.vaccineCode
  * Assignment: CodeableConcept
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.vaccine
  * Data Type: Coding
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.vaccineCode.coding
  * Assignment: Coding
  * Comments: 1
  * ?: *
  * ?:  
  * ?: Omit display
* Element: DDCCCoreDataSetVS.vaccination.brand
  * Data Type: Coding
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.manufacturer
  * Assignment: Reference(Organization)
  * Comments: 0
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.manufacturer
  * Data Type: Coding
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence: DDCCCoreDataSetVS.maholder.code.hasValue().not()
  * Element:  
  * Data Type: wider
  * Cardinality: SHCVaccinationDM.manufacturer.identifier
  * Assignment: Identifier
  * Comments: 0
  * ?: 1
  * ?:  
  * ?: who-ddcc-data-1: Manufacturer or Market Authorization Holder SHALL be present, invariant may fail from right to left
* Element: DDCCCoreDataSetVS.vaccination.manufacturer.system
  * Data Type: uri
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.manufacturer.identifier.system
  * Assignment: uri
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.manufacturer.code
  * Data Type: code
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.manufacturer.identifier.value
  * Assignment: string
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.maholder
  * Data Type: Coding
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence: DDCCCoreDataSetVS.maholder.code.hasValue()
  * Element:  
  * Data Type: wider
  * Cardinality: SHCVaccinationDM.manufacturer.identifier
  * Assignment: Identifier
  * Comments: 0
  * ?: 1
  * ?:  
  * ?: who-ddcc-data-1: Manufacturer or Market Authorization Holder SHALL be present, invariant may fail from right to left
* Element: DDCCCoreDataSetVS.vaccination.maholder.system
  * Data Type: uri
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.manufacturer.identifier.system
  * Assignment: uri
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.maholder.code
  * Data Type: code
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.manufacturer.identifier.value
  * Assignment: string
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.lot
  * Data Type: string
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: wider
  * Cardinality: SHCVaccinationDM.lotNumber
  * Assignment: string
  * Comments: 0
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.date
  * Data Type: dateTime
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.occurrence[x]:occurrenceDateTime
  * Assignment: dateTime
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.validFrom
  * Data Type: date
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.dose
  * Data Type: positiveInt
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: unmatched
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?: protocolApplied is explicitly disallowed in SHC profiles
* Element: DDCCCoreDataSetVS.vaccination.totalDoses
  * Data Type: positiveInt
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.country
  * Data Type: Coding
  * Cardinality: 1
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type: unmatched
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.performer
  * Assignment: BackboneElement
  * Comments: 0
  * ?: 1
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.performer.actor
  * Assignment: Reference(Organization)
  * Comments: 1
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.centre
  * Data Type: string
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.performer.actor.display
  * Assignment: string
  * Comments: 0
  * ?: 1
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.signature
  * Data Type: Signature
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.practitioner
  * Data Type: Identifier
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.disease
  * Data Type: Coding
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element: DDCCCoreDataSetVS.vaccination.nextDose
  * Data Type: date
  * Cardinality: 0
  * Condition (IF True): 1
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality:  
  * Assignment:  
  * Comments:  
  * ?:  
  * ?:  
  * ?:  
* Element:  
  * Data Type:  
  * Cardinality:  
  * Condition (IF True):  
  * Mapping Equivalence:  
  * Element:  
  * Data Type:  
  * Cardinality: SHCVaccinationDM.isSubpotent
  * Assignment: boolean
  * Comments: 0
  * ?: 1
  * ?:  
  * ?: 

