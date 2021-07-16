Instance:       DDCCCoreDataSet
InstanceOf:     StructureDefinition
Description:    "Data elements for the DDCC Core Data Set."
Title:          "DDCC Core Data Set Logical Model"
Usage:          #definition

* id = "DDCCCoreDataSet"
* name = "DDCCCoreDataSet"
* description = "DDCC Core Data elements."
* url = "http://worldhealthorganization.github.io/ddcc/DDCCCoreDataSet"
* version = "RC2"
* kind = #logical
* abstract = false
* status = #draft
* type = "DDCCCoreDataSet"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[+].id = "DDCCCoreDataSet"
* differential.element[=].path = "DDCCCoreDataSet"
* differential.element[=].definition = "DDCC Core Data Set"
* differential.element[=].min = 0
* differential.element[=].max = "*"

* differential.element[+].id = "DDCCCoreDataSet.name"
* differential.element[=].path = "DDCCCoreDataSet.name"
* differential.element[=].short = "Name"
* differential.element[=].definition = "The full name of the vaccinated person"
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

* differential.element[+].id = "DDCCCoreDataSet.birthDate"
* differential.element[=].path = "DDCCCoreDataSet.birthDate"
* differential.element[=].short = "Date of birth"
* differential.element[=].definition = "The vaccinated person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.identifier"
* differential.element[=].path = "DDCCCoreDataSet.identifier"
* differential.element[=].short = "Unique identifier"
* differential.element[=].definition = "Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "DDCCCoreDataSet.sex"
* differential.element[=].path = "DDCCCoreDataSet.sex"
* differential.element[=].short = "Sex"
* differential.element[=].definition = "Documentation of a specific instance of sex information for the vaccinated person."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #required
* differential.element[=].binding.valueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"

* differential.element[+].id = "DDCCCoreDataSet.vaccination"
* differential.element[=].path = "DDCCCoreDataSet.vaccination"
* differential.element[=].short = "Vaccination Event"
* differential.element[=].definition = "A vaccination event"
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].type[+].code = #BackboneElement
* differential.element[=].constraint[+].key = "who-ddcc-data-1"
* differential.element[=].constraint[=].severity = #error
* differential.element[=].constraint[=].human = "Manufacturer or Marketer SHALL be present"
* differential.element[=].constraint[=].expression = "manufacturer.exists() or marketer.exists()"


* differential.element[+].id = "DDCCCoreDataSet.vaccination.vaccine"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.vaccine"
* differential.element[=].short = "Vaccine or prophylaxis"
* differential.element[=].definition = "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = "https://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-vaccines"

* differential.element[+].id = "DDCCCoreDataSet.vaccination.brand"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.brand"
* differential.element[=].short = "Vaccine brand"
* differential.element[=].definition = "The brand or trade name used to refer to the vaccine received."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding

* differential.element[+].id = "DDCCCoreDataSet.vaccination.manufacturer"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.manufacturer"
* differential.element[=].short = "Vaccine manufacturer"
* differential.element[=].definition = "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding

* differential.element[+].id = "DDCCCoreDataSet.vaccination.marketer"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.marketer"
* differential.element[=].short = "Vaccine market authorization holder"
* differential.element[=].definition = "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding

* differential.element[+].id = "DDCCCoreDataSet.vaccination.lot"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.lot"
* differential.element[=].short = "Vaccine lot number"
* differential.element[=].definition = "Lot number or batch number of vaccination."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

* differential.element[+].id = "DDCCCoreDataSet.vaccination.date"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.date"
* differential.element[=].short = "Date of vaccination"
* differential.element[=].definition = "Date in which the vaccine was provided."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.vaccination.dose"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.dose"
* differential.element[=].short = "Dose number"
* differential.element[=].definition = "Vaccine dose number."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #positiveInt

* differential.element[+].id = "DDCCCoreDataSet.vaccination.totalDoses"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.totalDoses"
* differential.element[=].short = "Total doses"
* differential.element[=].definition = "Total expected doses as defined by Member State care plan and immunization programme policies."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #positiveInt

* differential.element[+].id = "DDCCCoreDataSet.vaccination.country"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.country"
* differential.element[=].short = "Country of vaccination"
* differential.element[=].definition = "The country in which the individual has been vaccinated."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = "http://hl7.org/fhir/ValueSet/iso3166-1-3"

* differential.element[+].id = "DDCCCoreDataSet.vaccination.centre"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.centre"
* differential.element[=].short = "Administering centre"
* differential.element[=].definition = "The name or identifier of the vaccination facility responsible for providing the vaccination."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

* differential.element[+].id = "DDCCCoreDataSet.vaccination.signature"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.signature"
* differential.element[=].short = "Signature of health worker"
* differential.element[=].definition = "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Signature

* differential.element[+].id = "DDCCCoreDataSet.vaccination.practitioner"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.practitioner"
* differential.element[=].short = "Health worker identifier"
* differential.element[=].definition = "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "DDCCCoreDataSet.vaccination.disease"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.disease"
* differential.element[=].short = "Disease or agent targeted"
* differential.element[=].definition = "Name of disease vaccinated against (such as COVID-19)."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = $ICD11

* differential.element[+].id = "DDCCCoreDataSet.vaccination.nextDose"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.nextDose"
* differential.element[=].short = "Due date of next dose"
* differential.element[=].definition = "Date on which the next vaccination should be administered, if a next dose is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.certificate"
* differential.element[=].path = "DDCCCoreDataSet.certificate"
* differential.element[=].short = "Certificate Metadata"
* differential.element[=].definition = "Metadata associated with the certificate."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #BackboneElement

* differential.element[+].id = "DDCCCoreDataSet.certificate.issuer"
* differential.element[=].path = "DDCCCoreDataSet.certificate.issuer"
* differential.element[=].short = "Certificate issuer"
* differential.element[=].definition = ""
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Reference
* differential.element[=].type[=].targetProfile = "https://worldhealthorganization.github.io/ddcc/StructureDefinition/shc-organization"

* differential.element[+].id = "DDCCCoreDataSet.certificate.identifier"
* differential.element[=].path = "DDCCCoreDataSet.certificate.identifier"
* differential.element[=].short = "Certificate identifier"
* differential.element[=].definition = ""
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "DDCCCoreDataSet.certificate.period"
* differential.element[=].path = "DDCCCoreDataSet.certificate.period"
* differential.element[=].short = "Certificate Validity Period"
* differential.element[=].definition = ""
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Period

* differential.element[+].id = "DDCCCoreDataSet.certificate.period.start"
* differential.element[=].path = "DDCCCoreDataSet.certificate.period.start"
* differential.element[=].short = "Certificate valid from"
* differential.element[=].definition = ""
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.certificate.period.end"
* differential.element[=].path = "DDCCCoreDataSet.certificate.period.end"
* differential.element[=].short = "Certificate valid until"
* differential.element[=].definition = ""
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.certificate.version"
* differential.element[=].path = "DDCCCoreDataSet.certificate.version"
* differential.element[=].short = "Certificate schema version"
* differential.element[=].definition = ""
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string


