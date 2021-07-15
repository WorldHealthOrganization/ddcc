Instance:       SVC_Core_Data_Set
InstanceOf:     StructureDefinition
Description:    "Data elements for the SVC Core Data Set."
Title:          "SVC Core Data Set Logical Model"
Usage:          #definition

* id = "SVC-Core-Data-Set"
* name = "SVC-Core-Data-Set"
* description = "SVC Core Data elements."
* url = "http://who-int.github.io/svc/refs/heads/rc2/SVC-Core-Data-Set"
* version = "RC2"
* kind = #logical
* abstract = false
* status = #draft
* type = "SVC-Core-Data-Set"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[+].id = "SVC-Core-Data-Set"
* differential.element[=].path = "SVC-Core-Data-Set"
* differential.element[=].definition = "SVC Core Data Set"
* differential.element[=].min = 0
* differential.element[=].max = "*"

* differential.element[+].id = "SVC-Core-Data-Set.name"
* differential.element[=].path = "SVC-Core-Data-Set.name"
* differential.element[=].short = "Name"
* differential.element[=].definition = "The full name of the vaccinated person"
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

* differential.element[+].id = "SVC-Core-Data-Set.birthDate"
* differential.element[=].path = "SVC-Core-Data-Set.birthDate"
* differential.element[=].short = "Date of birth"
* differential.element[=].definition = "The vaccinated person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "SVC-Core-Data-Set.identifier"
* differential.element[=].path = "SVC-Core-Data-Set.identifier"
* differential.element[=].short = "Unique identifier"
* differential.element[=].definition = "Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "SVC-Core-Data-Set.sex"
* differential.element[=].path = "SVC-Core-Data-Set.sex"
* differential.element[=].short = "Sex"
* differential.element[=].definition = "Documentation of a specific instance of sex information for the vaccinated person."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #required
* differential.element[=].binding.valueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"

* differential.element[+].id = "SVC-Core-Data-Set.vaccination"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination"
* differential.element[=].short = "Vaccination Event"
* differential.element[=].definition = "A vaccination event"
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].type[+].code = #BackboneElement
* differential.element[=].constraint[+].key = "who-svc-data-1"
* differential.element[=].constraint[=].severity = #error
* differential.element[=].constraint[=].human = "Manufacturer or Marketer SHALL be present"
* differential.element[=].constraint[=].expression = "manufacturer.exists() or marketer.exists()"


* differential.element[+].id = "SVC-Core-Data-Set.vaccination.vaccine"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.vaccine"
* differential.element[=].short = "Vaccine or prophylaxis"
* differential.element[=].definition = "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = "https://who-int.github.io/svc/refs/heads/rc2/ValueSet/who-svc-vaccines"

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.brand"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.brand"
* differential.element[=].short = "Vaccine brand"
* differential.element[=].definition = "The brand or trade name used to refer to the vaccine received."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.manufacturer"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.manufacturer"
* differential.element[=].short = "Vaccine manufacturer"
* differential.element[=].definition = "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.marketer"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.marketer"
* differential.element[=].short = "Vaccine market authorization holder"
* differential.element[=].definition = "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.batch"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.batch"
* differential.element[=].short = "Vaccine batch number"
* differential.element[=].definition = "Batch number or lot number of vaccination."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.date"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.date"
* differential.element[=].short = "Date of vaccination"
* differential.element[=].definition = "Date in which the vaccine was provided."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.doseNumber"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.doseNumber"
* differential.element[=].short = "Dose number"
* differential.element[=].definition = "Vaccine dose number."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #positiveInt

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.seriesDoses"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.seriesDoses"
* differential.element[=].short = "Total doses"
* differential.element[=].definition = "Total expected doses as defined by Member State care plan and immunization programme policies."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #positiveInt

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.country"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.country"
* differential.element[=].short = "Country of vaccination"
* differential.element[=].definition = "The country in which the individual has been vaccinated."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = "http://hl7.org/fhir/ValueSet/iso3166-1-3"

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.centre"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.centre"
* differential.element[=].short = "Administering centre"
* differential.element[=].definition = "The name or identifier of the vaccination facility responsible for providing the vaccination."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.signature"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.signature"
* differential.element[=].short = "Signature of health worker"
* differential.element[=].definition = "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Signature

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.practitioner"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.practitioner"
* differential.element[=].short = "Health worker identifier"
* differential.element[=].definition = "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.disease"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.disease"
* differential.element[=].short = "Disease or agent targeted"
* differential.element[=].definition = "Name of disease vaccinated against (such as COVID-19)."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = $ICD11

* differential.element[+].id = "SVC-Core-Data-Set.vaccination.nextDose"
* differential.element[=].path = "SVC-Core-Data-Set.vaccination.nextDose"
* differential.element[=].short = "Due date of next dose"
* differential.element[=].definition = "Date on which the next vaccination should be administered, if a next dose is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "SVC-Core-Data-Set.certificate"
* differential.element[=].path = "SVC-Core-Data-Set.certificate"
* differential.element[=].short = "Certificate Metadata"
* differential.element[=].definition = "Metadata associated with the certificate."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #BackboneElement

* differential.element[+].id = "SVC-Core-Data-Set.certificate.issuer"
* differential.element[=].path = "SVC-Core-Data-Set.certificate.issuer"
* differential.element[=].short = "Certificate issuer"
* differential.element[=].definition = ""
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Reference
* differential.element[=].type[=].targetProfile = "https://who-int.github.io/svc/refs/heads/rc2/StructureDefinition/shc-organization"

* differential.element[+].id = "SVC-Core-Data-Set.certificate.identifier"
* differential.element[=].path = "SVC-Core-Data-Set.certificate.identifier"
* differential.element[=].short = "Certificate identifier"
* differential.element[=].definition = ""
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "SVC-Core-Data-Set.certificate.period"
* differential.element[=].path = "SVC-Core-Data-Set.certificate.period"
* differential.element[=].short = "Certificate Validity Period"
* differential.element[=].definition = ""
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Period

* differential.element[+].id = "SVC-Core-Data-Set.certificate.period.start"
* differential.element[=].path = "SVC-Core-Data-Set.certificate.period.start"
* differential.element[=].short = "Certificate valid from"
* differential.element[=].definition = ""
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "SVC-Core-Data-Set.certificate.period.end"
* differential.element[=].path = "SVC-Core-Data-Set.certificate.period.end"
* differential.element[=].short = "Certificate valid until"
* differential.element[=].definition = ""
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "SVC-Core-Data-Set.certificate.version"
* differential.element[=].path = "SVC-Core-Data-Set.certificate.version"
* differential.element[=].short = "Certificate schema version"
* differential.element[=].definition = ""
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string


