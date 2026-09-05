# Dictionary - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Dictionary**

## Dictionary

The recommended core data set in the WHO Digital Documentation of COVID-19 Certificates guidance is intended to include the critical data required for interoperability, specific to the scenarios of use defined and driven by the public health needs. A published version of the data dictionary is available in spreadsheet format in
[Web Annex A of the DDCC:Vaccination Status guidance](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates-vaccination-data_dictionary-2021.1)and in an annex to the
[DDCC:Test Result guidance](https://apps.who.int/iris/bitstream/handle/10665/352585/WHO-2019-nCoV-Digital-certificates-diagnostic-test-results-data-dictionary-2022.1-eng.xlsx).

### Logical Models

* [DDCC:Vaccination Status: Continuity of Care Core Data Set](StructureDefinition-DDCCCoreDataSetVSCoC.md)
* [DDCC:Vaccination Status: Proof of Vaccination Core Data Set](StructureDefinition-DDCCCoreDataSetVSPoV.md)
* [DDCC:Test Result Core Data Set](StructureDefinition-DDCCCoreDataSetTR.md), which includes Proof of Negative SARS-CoV-2 Test Result and Proof of Previous SARS-CoV-2 Infection.

### DDCC:VS Core Data Set

The following table is an abbreviated copy of the [DDCC:VS:Web Annex A](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates-vaccination-data_dictionary-2021.1), the published version of the DDCC:VS Core data dictionary with the following differences: 
* Date formats are updated to be compatible with FHIR (this means that dashes are required, e.g., YYYY-MM-DD, not YYYYMMDD),
* Only SNOMED GPS mappings are included (columns SNOMED CT International was removed, but values are the same as SNOMED GPS)
* It will include mappings to the HL7 FHIR elements used on the StructureDefinitions for the core data set. (forthcoming)
* ICD-11 Comments/Considerations for vaccines refer back to source content and a related note for readability.
 

* Section: Header - input once
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Name
  * Description and Definition: The full name of the vaccinated person.
  * Data Type: String
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: ISO 10646 - UTF-8 is recommended
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Header - input once
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Date of birth
  * Description and Definition: The vaccinated person's date of birth (DOB) if known. If unknown, use assigned DOB for administrative purposes.
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Header - input once
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: OPTIONAL - RECOMMENDED
  * Data Element Label: Unique identifier
  * Description and Definition: Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID).
  * Data Type: ID
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: This will NOT be restricted to globally accepted identifiers, and will be the responsibility of the Member State to determine how they want to utilize unique identifiers and related extensions.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Header - input once
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: NOT NEEDED
  * Data Element Label: Sex
  * Description and Definition: Documentation of a specific instance of sex information for the vaccinated person.
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: It is recommended to collect sex. However, it will be up to the Member State to determine which code system to use.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Vaccine or prophylaxis
  * Description and Definition: Generic description of the vaccine or vaccine sub-type, e.g. COVID-19 mRNA vaccine, HPV vaccine.
  * Data Type: Coding
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: Vaccines
  * ICD-11URI: http://id.who.int/icd/entity/164949870
  * ICD-11 Comments / Considerations: There are no index terms associated with this entity
  * ICD-10code: 
  * ICD-10code title: 
  * SNOMED CT (GPS)Concept ID: 
  * SNOMED CT (GPS)Concept Description: 
  * ATCcode: 
  * ATCcode title: 
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM68M6
  * ICD-11URI: http://id.who.int/icd/entity/894585096
  * ICD-11 Comments / Considerations: Inclusion of any particular product or entity in any of these landscape documents does not constitute, and shall not be deemed or construed as, any approval or endorsement by WHO of such product or entity (or any of its businesses or activities).
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: 28531000087107
  * SNOMED CT (GPS)Concept Description: Vaccine product against Severe acute respiratory syndrome coronavirus 2 (medicinal product)
  * ATCcode: J07BXxx
  * ATCcode title: COVID-19 vaccines
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, inactivated virus
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, inactivated virus
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM1NL1
  * ICD-11URI: http://id.who.int/icd/entity/1104808441
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6. __________________
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: 1157024006
  * SNOMED CT (GPS)Concept Description: Vaccine product containing only inactivated whole Severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)|
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, live attenuated virus
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, live attenuated virus
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM5DF6
  * ICD-11URI: http://id.who.int/icd/entity/993066376
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, non-replicating viral vector
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, non-replicating viral vector
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM9QW8
  * ICD-11URI: http://id.who.int/icd/entity/264142908
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: 29061000087103
  * SNOMED CT (GPS)Concept Description: Vaccine product containing only recombinant non-replicating viral vector encoding Severe acute respiratory syndrome coronavirus 2 spike protein (medicinal product)|
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, replicating viral vector
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, replicating viral vector
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM0CX4
  * ICD-11URI: http://id.who.int/icd/entity/877986394
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, virus protein subunit
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, virus protein subunit
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM5JC5
  * ICD-11URI: http://id.who.int/icd/entity/1368305645
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, virus-like particle (VLP)
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, virus-like particle (VLP)
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM1J92
  * ICD-11URI: http://id.who.int/icd/entity/729916172
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, DNA based
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, DNA based
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM6AT1
  * ICD-11URI: http://id.who.int/icd/entity/1316179031
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ATCcode: not found
  * ATCcode title: not found
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19 vaccine, RNA based
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11 extension codes (http://id.who.int/icd/entity/164949870)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: COVID-19 vaccine, RNA based
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XM0GQ8
  * ICD-11URI: http://id.who.int/icd/entity/873941688
  * ICD-11 Comments / Considerations: See note for COVID-19 vaccine: XM68M6.
  * ICD-10code: not found
  * ICD-10code title: not found
  * SNOMED CT (GPS)Concept ID: 1119349007
  * SNOMED CT (GPS)Concept Description: Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)
  * ATCcode: not found
  * ATCcode title: not found
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Vaccine brand
  * Description and Definition: The brand or trade name used to refer to the vaccine received.
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: This data element can be predetermined by a vaccine product registry. If vaccine registry is unavailable, we can capture this as a string.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED - CONDITIONAL
  * Requirement status forProof of Vaccination: REQUIRED - CONDITIONAL
  * Data Element Label: Vaccine manufacturer
  * Description and Definition: Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED.
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: This data element can be predetermined by a vaccine product registry. If vaccine registry is unavailable, we can capture this as a string.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED - CONDITIONAL
  * Requirement status forProof of Vaccination: REQUIRED - CONDITIONAL
  * Data Element Label: Vaccine market authorization holder
  * Description and Definition: Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED.
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: This data element can be predetermined by a vaccine product registry. If vaccine registry is unavailable, we can capture this as a string.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Vaccine batch number
  * Description and Definition: Batch number or lot number of vaccine.
  * Data Type: String
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Date of vaccination
  * Description and Definition: Date in which the vaccine was provided.
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Dose number
  * Description and Definition: Vaccine dose number.
  * Data Type: Quantity
  * Preferred Code System: N/A
  * Quantity Sub-Type: Integer Quantity
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Must be greater than 0
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL
  * Requirement status forProof of Vaccination: OPTIONAL
  * Data Element Label: Vaccination valid from
  * Description and Definition: Date upon which provided vaccination is considered valid. This data should only be considered valid at the time of issuance, as guidance is likely to evolve with further scientific evidence. Any user of this data (Vaccinator, Verifier) should validate this date according to their national policy. In the case of repeated doses, the data field for a subsequent dose should override the data field for a predecessor dose.
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: This data should only be considered valid at the time of issuance, as guidance is likely to evolve with further scientific evidence. Any user of this data (Vaccinator, Verifier) should validate this date according to their national policy. In the case of repeated doses, the data field for a subsequent dose should override the data field for a predecessor dose.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: OPTIONAL - RECOMMENDED
  * Data Element Label: Total doses
  * Description and Definition: Total expected doses as defined by Member State care plan and immunization programme policies.
  * Data Type: Quantity
  * Preferred Code System: N/A
  * Quantity Sub-Type: Integer Quantity
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Must be greater than 0
  * Notes: This data element can also be predetermined by a vaccine product registry.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Country of vaccination
  * Description and Definition: The country in which the individual has been vaccinated.
  * Data Type: Coding
  * Preferred Code System: ISO 3166-1 alpha-3 (or numeric)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: ISO 3166-1 alpha-3 (or numeric)
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: OPTIONAL - RECOMMENDED
  * Data Element Label: Administering centre
  * Description and Definition: The name or identifier of the vaccination facility responsible for providing the vaccination.
  * Data Type: String
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: REQUIRED - CONDITIONAL
  * Data Element Label: Signature of health worker
  * Description and Definition: REQUIRED for PAPER vaccination certificates that have been filled out with handwriting ONLY. A printed paper vaccine certificate does not require the handwritten signature of a health worker. The health worker who provided the vaccination or the supervising clinician's hand-written signature.
  * Data Type: Signature
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: OPTIONAL - RECOMMENDED
  * Data Element Label: Health worker identifier
  * Description and Definition: OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature.
  * Data Type: ID
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: OPTIONAL - RECOMMENDED
  * Data Element Label: Disease or agent targeted
  * Description and Definition: Name of disease vaccinated to protect against (such as COVID-19).
  * Data Type: Coding
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select all that apply
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: 
  * ICD-11URI: 
  * ICD-11 Comments / Considerations: 
  * ICD-10code: 
  * ICD-10code title: 
  * SNOMED CT (GPS)Concept ID: 
  * SNOMED CT (GPS)Concept Description: 
  * ATCcode: 
  * ATCcode title: 
* Section: 
  * Requirement status forContinuity of Care: 
  * Requirement status forProof of Vaccination: 
  * Data Element Label: COVID-19
  * Description and Definition: COVID-19
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: COVID-19
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: RA01
  * ICD-11URI: http://id.who.int/icd/entity/1730556128
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: U07.1
  * ICD-10code title: COVID-19, not otherwise specified
  * SNOMED CT (GPS)Concept ID: 840539006
  * SNOMED CT (GPS)Concept Description: Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Vaccination: NOT NEEDED
  * Data Element Label: Due date of next dose
  * Description and Definition: Date on which the next vaccination should be administered, if a next dose is required. ______________________________
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Certificate metadata
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Certificate issuer
  * Description and Definition: The authority or authorized organization that issued the vaccination certificate.
  * Data Type: String
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: 
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Certificate metadata
  * Requirement status forContinuity of Care: REQUIRED
  * Requirement status forProof of Vaccination: REQUIRED
  * Data Element Label: Health Certificate Identifier (HCID)
  * Description and Definition: Unique identifier used to associate the vaccination status represented in a paper vaccination card to its digital representation(s).
  * Data Type: ID
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: 
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL
  * Requirement status forProof of Vaccination: OPTIONAL
  * Data Element Label: Certificate valid from
  * Description and Definition: Date in which the certificate for a vaccination event became valid. No health or clinical inferences should be made from this date
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ATCcode: N/A
  * ATCcode title: N/A
* Section: Data needed for each vaccination event
  * Requirement status forContinuity of Care: OPTIONAL
  * Requirement status forProof of Vaccination: OPTIONAL
  * Data Element Label: Certificate valid until
  * Description and Definition: Last date in which the certificate for a vaccination event is valid. No health or clinical inferences should be made from this date.
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: ___________________________
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Comments / Considerations: N/A
  * ICD-10code: N/A
  * ICD-10code title: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A __________________
  * ATCcode: N/A
  * ATCcode title: N/A

### DDCC:TR Core Data Set

The following table is a copy of the published version of the [DDCC:TR Core data dictionary](https://apps.who.int/iris/bitstream/handle/10665/352585/WHO-2019-nCoV-Digital-certificates-diagnostic-test-results-data-dictionary-2022.1-eng.xlsx) with the following difference: this version will include mappings to the HL7 FHIR elements used (forthcoming).

* Section: Header - input once
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Name
  * Description and Definition: The full name of the tested person
  * Data Type: String
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: ISO 10646 - UTF-8 is recommended
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Header - input once
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Date of birth
  * Description and Definition: The tested person's date of birth (DOB) if known. If unknown, use assigned DOB for administrative purposes.
  * Data Type: Date
  * Preferred Code System: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Header - input once
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: OPTIONAL - RECOMMENDED
  * Data Element Label: Unique identifier
  * Description and Definition: Unique identifier for the tested person, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, medical record ID).
  * Data Type: ID
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: This will NOT be restricted to globally accepted identifiers, and will be the responsibility of the Member State to determine how they want to utilize unique identifiers and related extensions.
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Pathogen targeted
  * Description and Definition: Name of the agent being targeted for (such as SARS-CoV-2)
  * Data Type: Coding
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: There are no index terms associated with this entity
  * SNOMED CT (GPS)Concept ID: 410607006
  * SNOMED CT (GPS)Concept Description: Organism
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN109
  * ICD-11URI: http://id.who.int/icd/entity/243015485
  * ICD-11 Code Title: SARS-CoV-2
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: 840533007
  * SNOMED CT (GPS)Concept Description: Severe acute respiratory syndrome coronavirus 2 (organism)
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Alpha
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Alpha
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN0HL
  * ICD-11URI: http://id.who.int/icd/entity/932811678
  * ICD-11 Code Title: SARS-CoV-2 Alpha
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Beta
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Beta
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN4Q7
  * ICD-11URI: http://id.who.int/icd/entity/2101382247
  * ICD-11 Code Title: SARS-CoV-2 Beta
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Gamma
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Gamma
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN5BQ
  * ICD-11URI: http://id.who.int/icd/entity/1822694497
  * ICD-11 Code Title: SARS-CoV-2 Gamma
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Delta
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Delta
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN8V6
  * ICD-11URI: http://id.who.int/icd/entity/867842560
  * ICD-11 Code Title: SARS-CoV-2 Delta
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Epsilon
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Epsilon
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN1GK
  * ICD-11URI: http://id.who.int/icd/entity/1503287239
  * ICD-11 Code Title: SARS-CoV-2 Epsilon
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Zeta
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Zeta
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN3ZE
  * ICD-11URI: http://id.who.int/icd/entity/755161604
  * ICD-11 Code Title: SARS-CoV-2 Zeta
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Eta
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Eta
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN2V4
  * ICD-11URI: http://id.who.int/icd/entity/60855142
  * ICD-11 Code Title: SARS-CoV-2 Eta
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Theta
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Theta
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN4Q1
  * ICD-11URI: http://id.who.int/icd/entity/217899880
  * ICD-11 Code Title: SARS-CoV-2 Theta
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Iota
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Iota
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN3UD
  * ICD-11URI: http://id.who.int/icd/entity/1721681473
  * ICD-11 Code Title: SARS-CoV-2 Iota
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Kappa
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Kappa
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN9L8
  * ICD-11URI: http://id.who.int/icd/entity/1325943094
  * ICD-11 Code Title: SARS-CoV-2 Kappa
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Lambda
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Lambda
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN6AM
  * ICD-11URI: http://id.who.int/icd/entity/403405056
  * ICD-11 Code Title: SARS-CoV-2 Lambda
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Mu
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Mu
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN39J
  * ICD-11URI: http://id.who.int/icd/entity/1453315432
  * ICD-11 Code Title: SARS-CoV-2 Mu
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: SARS-CoV-2 Omicron
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input option
  * Input Options: SARS-CoV-2 Omicron
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: XN161
  * ICD-11URI: http://id.who.int/icd/entity/335495681
  * ICD-11 Code Title: SARS-CoV-2 Omicron
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: not found
  * SNOMED CT (GPS)Concept Description: not found
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Type of Test
  * Description and Definition: Name of the type of test that was conducted e.g. NAAT or Ag-RDT
  * Data Type: Coding
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: There are no index terms associated with this entity
  * SNOMED CT (GPS)Concept ID: 15220000
  * SNOMED CT (GPS)Concept Description: Laboratory test (procedure)
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Viral nucleic acid amplification test or NAAT
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Viral nucleic acid amplification test or NAAT
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: 117244003
  * SNOMED CT (GPS)Concept Description: Nucleic acid probe method with amplification (procedure)
  * ICHIcode: http://id.who.int/icd/entity/1334426561
  * ICHIcode title: Viral nucleic acid amplification test
  * ICHIURl: http://id.who.int/icd/entity/1334426561
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Rapid immunoassay detecting viral proteins or Ag-RDT
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Rapid immunoassay detecting viral proteins or Ag-RDT
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: 414464004
  * SNOMED CT (GPS)Concept Description: Immunoassay method (procedure)
  * ICHIcode: http://id.who.int/icd/entity/2056159157
  * ICHIcode title: Rapid immunoassay detecting viral proteins
  * ICHIURl: http://id.who.int/icd/entity/2056159157
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: OPTIONAL - RECOMMENDED
  * Data Element Label: Test brand
  * Description and Definition: The brand or trade name used to refer to the test conducted
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: OPTIONAL - RECOMMENDED
  * Data Element Label: Test manufacturer
  * Description and Definition: Name of the manufacturer of the test conducted
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: OPTIONAL - RECOMMENDED
  * Data Element Label: Specimen Sample Origin
  * Description and Definition: The type of sample that was taken (e.g. Nasopharyngeal swab, Oropharyngeal swab, Saliva specimen)
  * Data Type: Coding
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 123038009
  * SNOMED CT (GPS)Concept Description: Specimen (specimen)
  * ICHIcode: AH
  * ICHIcode title: Specimen collection
  * ICHIURl: http://id.who.int/icd/entity/1789591527
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Nasopharyngeal swab
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Nasopharyngeal swab
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 258500001
  * SNOMED CT (GPS)Concept Description: Nasopharyngeal swab (specimen)
  * ICHIcode: JAM.AH.XF
  * ICHIcode title: Specimen collection, nasopharynx
  * ICHIURl: http://id.who.int/icd/entity/350872817
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Oropharyngeal swab
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Oropharyngeal swab
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 461911000124106
  * SNOMED CT (GPS)Concept Description: Swab specimen from oropharynx (specimen)
  * ICHIcode: KAR.AH.XF
  * ICHIcode title: Specimen collection, oropharynx
  * ICHIURl: http://id.who.int/icd/entity/555916027
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Pharyngeal swab
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Pharyngeal swab
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 472881004
  * SNOMED CT (GPS)Concept Description: Swab from pharynx (specimen)
  * ICHIcode: KAR.AH.XF
  * ICHIcode title: Specimen collection, oropharynx
  * ICHIURl: http://id.who.int/icd/entity/555916027
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Swab from nasal sinus
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Swab from nasal sinus
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 472901003
  * SNOMED CT (GPS)Concept Description: Swab from nasal sinus (specimen)
  * ICHIcode: JAE.AH.XF
  * ICHIcode title: Specimen collection, paranasal sinus, not elsewhere classified
  * ICHIURl: http://id.who.int/icd/entity/608172011
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Saliva specimen
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Saliva specimen
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 119342007
  * SNOMED CT (GPS)Concept Description: Saliva specimen (specimen)
  * ICHIcode: KAZ.AH.XD
  * ICHIcode title: Specimen collection, saliva
  * ICHIURl: http://id.who.int/icd/entity/1162766848
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Blood specimen
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Blood specimen
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 119297000
  * SNOMED CT (GPS)Concept Description: Blood specimen (specimen)
  * ICHIcode: DIA.AH.XA
  * ICHIcode title: Specimen collection, blood
  * ICHIURl: http://id.who.int/icd/entity/1695591348
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Plasma specimen
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Plasma specimen
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 119361006
  * SNOMED CT (GPS)Concept Description: Plasma specimen (specimen)
  * ICHIcode: DIA.AH.XA
  * ICHIcode title: Specimen collection, blood
  * ICHIURl: http://id.who.int/icd/entity/1695591348
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Serum specimen
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Serum specimen
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 119364003
  * SNOMED CT (GPS)Concept Description: Serum specimen (specimen)
  * ICHIcode: DIA.AH.XA
  * ICHIcode title: Specimen collection, blood
  * ICHIURl: http://id.who.int/icd/entity/1695591348
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Acellular blood (serum or plasma) specimen
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICHI
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Acellular blood (serum or plasma) specimen
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: not found
  * ICD-11URI: not found
  * ICD-11 Code Title: not found
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: 122592007
  * SNOMED CT (GPS)Concept Description: Acellular blood (serum or plasma) specimen (specimen)
  * ICHIcode: DIA.AH.XA
  * ICHIcode title: Specimen collection, blood
  * ICHIURl: http://id.who.int/icd/entity/1695591348
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Date and time of sample collection
  * Description and Definition: Date and time when sample was collected ___________________
  * Data Type: DateTime
  * Preferred Code System: Compatible with HL7 FHIR dateTime with time zone specified https://www.hl7.org/fhir/datatypes.html#dateTime
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR dateTime with time zone specified https://www.hl7.org/fhir/datatypes.html#dateTime"
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Test Result
  * Description and Definition: Detected or Not Detected presence of SARS-CoV-2 infection
  * Data Type: Coding
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Select one
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: http://id.who.int/icd/entity/1730556128
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Detected
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Detected
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: RA01.0
  * ICD-11URI: http://id.who.int/icd/entity/1790791774
  * ICD-11 Code Title: COVID-19, virus identified includes index term COVID-19 confirmed with laboratory testing with symptoms
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: 1240581000000104
  * SNOMED CT (GPS)Concept Description: Severe acute respiratory syndrome coronavirus 2 detected (finding)
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: 
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: 
  * Requirement status forProof of Previous SARS-CoV-2 Infection: 
  * Data Element Label: Not Detected
  * Description and Definition: 
  * Data Type: Codes
  * Preferred Code System: ICD-11
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): Input Option
  * Input Options: Not Detected
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: QA02
  * ICD-11URI: http://id.who.int/icd/entity/461464819
  * ICD-11 Code Title: Medical observation or evaluation for suspected diseases or conditions, ruled out
  * ICD-11 Comments / Considerations: 
  * SNOMED CT (GPS)Concept ID: 1240591000000102
  * SNOMED CT (GPS)Concept Description: Severe acute respiratory syndrome coronavirus 2 not detected (finding)
  * ICHIcode: not found
  * ICHIcode title: not found
  * ICHIURl: not found
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: OPTIONAL - RECOMMENDED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: OPTIONAL - RECOMMENDED
  * Data Element Label: Test centre or facility name
  * Description and Definition: A codable name or identifier of the facility responsible for conducting the test
  * Data Type: Coding
  * Preferred Code System: As defined by Member State
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Data needed for each SARS-CoV-2 test event
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Test centre country
  * Description and Definition: The country in which the individual has been tested
  * Data Type: Coding
  * Preferred Code System: ISO 3166-1 alpha-3 (or numeric)
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: ISO 3166-1 alpha-3 (or numeric)
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Certificate metadata
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Certificate issuer
  * Description and Definition: The authority or authorized organization that issued the laboratory results certificate.
  * Data Type: String
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Certificate metadata
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Health Certificate Identifier (HCID)
  * Description and Definition: Unique identifier used to associate the lab result represented in a paper lab report to its digital representation(s).
  * Data Type: ID
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Certificate metadata
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: OPTIONAL
  * Requirement status forProof of Previous SARS-CoV-2 Infection: OPTIONAL
  * Data Element Label: Certificate valid from
  * Description and Definition: Date and time at which lab result certificate became valid. No health or clinical inferences should be made from this date
  * Data Type: DateTime
  * Preferred Code System: Compatible with HL7 FHIR dateTime with time zone specified https://www.hl7.org/fhir/datatypes.html#dateTime
  * Quantity Sub-Type: 
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: Compatible with HL7 FHIR dateTime with time zone specified
  * Notes: ___________________________
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A
* Section: Certificate metadata
  * Requirement status forProof of Negative SARS-CoV-2 Test Result: REQUIRED
  * Requirement status forProof of Previous SARS-CoV-2 Infection: REQUIRED
  * Data Element Label: Certificate schema version
  * Description and Definition: Version of the core data set and HL7 FHIR Implementation Guide that the certificate is using.
  * Data Type: String
  * Preferred Code System: N/A
  * Quantity Sub-Type: N/A
  * Multiple-Choice Type(if applicable): N/A
  * Input Options: N/A
  * Validation Condition: N/A
  * Notes: 
  * ICD-11Code: N/A
  * ICD-11URI: N/A
  * ICD-11 Code Title: N/A
  * ICD-11 Comments / Considerations: N/A
  * SNOMED CT (GPS)Concept ID: N/A
  * SNOMED CT (GPS)Concept Description: N/A
  * ICHIcode: N/A
  * ICHIcode title: N/A
  * ICHIURl: N/A

