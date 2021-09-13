Invariant:      who-ddcc-data-1
Description:    "Manufacturer or Market Authorization Holder SHALL be present"
Expression:     "manufacturer.exists() or maholder.exists()"
Severity:       #error

/* Inheritance doesn't seem to work well when it's modifying a backbone element.  Snapshot and differential don't combine
Logical:        DDCCCoreDataSet
Title:          "DDCC Core Data Set Logical Model"
Description:    "Data elements for the DDCC Core Data Set."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSet"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft

* name 1..1 SU string "Name" "The full name of the vaccinated person."
* birthDate 0..1 SU date "Date of birth" "The vaccinated person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes"
* identifier 0..1 SU Identifier "Unique identifier" "Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* sex 0..1 SU code "Sex" "Documentation of a specific instance of sex information for the vaccinated person."
* sex from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* vaccination 0..* SU BackboneElement "Vaccination Event" "A vaccination event."
* vaccination obeys who-ddcc-data-1
  * vaccine 1..1 SU Coding "Vaccine or prophylaxis" "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
  * vaccine from WHO_DDCC_Vaccines_COVID_19 (preferred)
  * brand 1..1 SU Coding "Vaccine brand" "The brand or trade name used to refer to the vaccine received."
  * manufacturer 0..1 SU Coding "Vaccine manufacturer" "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED."
  * maholder 0..1 SU Coding "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED."
  * lot 1..1 SU string "Vaccine lot number" "Lot number or batch number of vaccination."
  * date 1..1 SU date "Date of vaccination" "Date in which the vaccine was provided."
  * validFrom 0..1 date "Vaccination valid from" "Date upon which provided vaccination is considered valid."
  * dose 1..1 SU positiveInt "Dose number" "Vaccine dose number."
  * totalDoses 0..1 positiveInt "Total doses" "Total expected doses as defined by Member State care plan and immunization programme policies."
  * country 1..1 SU Coding "Country of vaccination" "The country in which the individual has been vaccinated."
  * country from http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)
  * centre 0..1 string "Administering centre" "The name or identifier of the vaccination facility responsible for providing the vaccination."
  * signature 0..1 Signature "Signature of health worker" "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature."
  * practitioner 0..1 Identifier "Health worker identifier" "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature."
  * disease 0..1 Coding "Disease or agent targeted" "Name of disease vaccinated against (such as COVID-19)."
  * disease from WHO_DDCC_Disease_Targeted_COVID_19 (preferred)
  * nextDose 0..1 date "Due date of next dose" "Date on which the next vaccination should be administered, if a next dose is REQUIRED."
  * period 0..1 Period "Certificate Validity Period" "Certificate validity period."
    * start 0..1 date "Certificate valid from" "Start date of certificate validity."
    * end 0..1 date "Certificate valid until" "End date of certificate validity."
* certificate 0..1 SU BackboneElement "Certificate Metadata" "Metadata associated with the certificate"    
  * issuer 1..1 SU Reference(DDCCOrganization) "Certificate issuer" "Certificate issuer."
  * hcid 1..1 SU Identifier "Health certificate identifier (HCID)" "Health certificate identifier (HCID)."
  * version 1..1 SU string "Certificate schema version" "Certificate schema version"
*/

Logical:        DDCCCoreDataSetPoV
//Parent:		Element
//Parent:         DDCCCoreDataSet
Title:          "DDCC Core Data Set Logical Model - Proof of Vaccination"
Description:    "Data elements for the DDCC Core Data Set - Proof of Vaccination."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSetPoV"
* ^version = "RC2"
* ^abstract = false
* ^status = #draft
* ^type = "DDCCCoreDataSetPoV"
* name 1..1 SU string "Name" "The full name of the vaccinated person."
* birthDate 0..1 SU date "Date of birth" "The vaccinated person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes"
* identifier 0..1 SU Identifier "Unique identifier" "Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* sex 0..1 SU code "Sex" "Documentation of a specific instance of sex information for the vaccinated person."
* sex from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* vaccination 0..* SU BackboneElement "Vaccination Event" "A vaccination event."
* vaccination obeys who-ddcc-data-1
  * vaccine 1..1 SU Coding "Vaccine or prophylaxis" "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
  * vaccine from WHO_DDCC_Vaccines_COVID_19 (preferred)
  * brand 1..1 SU Coding "Vaccine brand" "The brand or trade name used to refer to the vaccine received."
  * manufacturer 0..1 SU Coding "Vaccine manufacturer" "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED."
  * maholder 0..1 SU Coding "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED."
  * lot 1..1 SU string "Vaccine lot number" "Lot number or batch number of vaccination."
  * date 1..1 SU date "Date of vaccination" "Date in which the vaccine was provided."
  * validFrom 0..1 date "Vaccination valid from" "Date upon which provided vaccination is considered valid."
  * dose 1..1 SU positiveInt "Dose number" "Vaccine dose number."
  * totalDoses 0..1 positiveInt "Total doses" "Total expected doses as defined by Member State care plan and immunization programme policies."
  * country 1..1 SU Coding "Country of vaccination" "The country in which the individual has been vaccinated."
  * country from http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)
  * centre 0..1 string "Administering centre" "The name or identifier of the vaccination facility responsible for providing the vaccination."
  * signature 0..1 Signature "Signature of health worker" "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature."
  * practitioner 0..1 Identifier "Health worker identifier" "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature."
  * disease 0..1 Coding "Disease or agent targeted" "Name of disease vaccinated against (such as COVID-19)."
  * disease from WHO_DDCC_Disease_Targeted_COVID_19 (preferred)
  * nextDose 0..1 date "Due date of next dose" "Date on which the next vaccination should be administered, if a next dose is REQUIRED."
  * period 0..1 Period "Certificate Validity Period" "Certificate validity period."
    * start 0..1 date "Certificate valid from" "Start date of certificate validity."
    * end 0..1 date "Certificate valid until" "End date of certificate validity."
* certificate 0..1 SU BackboneElement "Certificate Metadata" "Metadata associated with the certificate"    
  * issuer 1..1 SU Reference(DDCCOrganization) "Certificate issuer" "Certificate issuer."
  * hcid 1..1 SU Identifier "Health certificate identifier (HCID)" "Health certificate identifier (HCID)."
  * version 1..1 SU string "Certificate schema version" "Certificate schema version"

Logical:        DDCCCoreDataSetCoC
//Parent:		Element
//Parent:         DDCCCoreDataSet
Title:          "DDCC Core Data Set Logical Model - Continuity of Care"
Description:    "Data elements for the DDCC Core Data Set - Continuity of Care."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSetCoC"
* ^version = "RC2"
* ^abstract = false
* ^status = #draft
* ^type = "DDCCCoreDataSetCoC"
* name 1..1 SU string "Name" "The full name of the vaccinated person."
* birthDate 0..1 SU date "Date of birth" "The vaccinated person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes"
* identifier 0..1 SU Identifier "Unique identifier" "Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* sex 0..1 SU code "Sex" "Documentation of a specific instance of sex information for the vaccinated person."
* sex from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* vaccination 0..* SU BackboneElement "Vaccination Event" "A vaccination event."
* vaccination obeys who-ddcc-data-1
  * vaccine 1..1 SU Coding "Vaccine or prophylaxis" "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
  * vaccine from WHO_DDCC_Vaccines_COVID_19 (preferred)
  * brand 1..1 SU Coding "Vaccine brand" "The brand or trade name used to refer to the vaccine received."
  * manufacturer 0..1 SU Coding "Vaccine manufacturer" "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED."
  * maholder 0..1 SU Coding "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED."
  * lot 1..1 SU string "Vaccine lot number" "Lot number or batch number of vaccination."
  * date 1..1 SU date "Date of vaccination" "Date in which the vaccine was provided."
  * validFrom 0..1 date "Vaccination valid from" "Date upon which provided vaccination is considered valid."
  * dose 1..1 SU positiveInt "Dose number" "Vaccine dose number."
  * totalDoses 0..1 positiveInt "Total doses" "Total expected doses as defined by Member State care plan and immunization programme policies."
  * country 1..1 SU Coding "Country of vaccination" "The country in which the individual has been vaccinated."
  * country from http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)
  * centre 0..1 string "Administering centre" "The name or identifier of the vaccination facility responsible for providing the vaccination."
  * centre 1..1 string "Administering centre" "The name or identifier of the vaccination facility responsible for providing the vaccination."
  * signature 0..1 Signature "Signature of health worker" "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature."
  * practitioner 0..1 Identifier "Health worker identifier" "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature."
  * disease 0..1 Coding "Disease or agent targeted" "Name of disease vaccinated against (such as COVID-19)."
  * disease from WHO_DDCC_Disease_Targeted_COVID_19 (preferred)
  * nextDose 0..1 date "Due date of next dose" "Date on which the next vaccination should be administered, if a next dose is REQUIRED."
  * period 0..1 Period "Certificate Validity Period" "Certificate validity period."
    * start 0..1 date "Certificate valid from" "Start date of certificate validity."
    * end 0..1 date "Certificate valid until" "End date of certificate validity."
* certificate 0..1 SU BackboneElement "Certificate Metadata" "Metadata associated with the certificate"    
  * issuer 1..1 SU Reference(DDCCOrganization) "Certificate issuer" "Certificate issuer."
  * hcid 1..1 SU Identifier "Health certificate identifier (HCID)" "Health certificate identifier (HCID)."
  * version 1..1 SU string "Certificate schema version" "Certificate schema version"


/*
Instance:       DDCCCoreDataSetPoV
InstanceOf:     StructureDefinition
Description:    "Data elements for the DDCC Core Data Set - Proof of Vaccination."
Usage:          #definition

* id = "DDCCCoreDataSetPoV"
* name = "DDCCCoreDataSetPoV"
* title = "DDCC Core Data Set - Proof of Vaccination Logical Model"
* description = "DDCC Core Data - Proof of Vaccination elements."
* url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSetPoV"
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
* differential.element[=].constraint[=].human = "Manufacturer or Market Authorization Holder SHALL be present"
* differential.element[=].constraint[=].expression = "manufacturer.exists() or maholder.exists()"


* differential.element[+].id = "DDCCCoreDataSet.vaccination.vaccine"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.vaccine"
* differential.element[=].short = "Vaccine or prophylaxis"
* differential.element[=].definition = "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Coding
* differential.element[=].binding.strength = #preferred
* differential.element[=].binding.valueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-vaccines-covid-19"

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

* differential.element[+].id = "DDCCCoreDataSet.vaccination.maholder"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.maholder"
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

* differential.element[+].id = "DDCCCoreDataSet.vaccination.validFrom"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.validFrom"
* differential.element[=].short = "Vaccination valid from"
* differential.element[=].definition = "Date upon which provided vaccination is considered valid."
* differential.element[=].min = 0
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
* differential.element[=].min = 0
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
* differential.element[=].binding.valueSet = "http://worldhealthorganization.github.io/ddcc/ValueSet/who-ddcc-disease-targeted-covid-19"

* differential.element[+].id = "DDCCCoreDataSet.vaccination.nextDose"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.nextDose"
* differential.element[=].short = "Due date of next dose"
* differential.element[=].definition = "Date on which the next vaccination should be administered, if a next dose is REQUIRED."
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.vaccination.period"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.period"
* differential.element[=].short = "Certificate Validity Period"
* differential.element[=].definition = "Certificate valifity period"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Period

* differential.element[+].id = "DDCCCoreDataSet.vaccination.period.start"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.period.start"
* differential.element[=].short = "Certificate valid from"
* differential.element[=].definition = "Start date of certificate validity"
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #date

* differential.element[+].id = "DDCCCoreDataSet.vaccination.period.end"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.period.end"
* differential.element[=].short = "Certificate valid until"
* differential.element[=].definition = "End date of certificate validity"
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
* differential.element[=].definition = "Certificate issuer"
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Reference
* differential.element[=].type[=].targetProfile = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCOrganization"

* differential.element[+].id = "DDCCCoreDataSet.certificate.hcid"
* differential.element[=].path = "DDCCCoreDataSet.certificate.hcid"
* differential.element[=].short = "Health certificate identifier (HCID)"
* differential.element[=].definition = "health certificate identifier"
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #Identifier

* differential.element[+].id = "DDCCCoreDataSet.certificate.version"
* differential.element[=].path = "DDCCCoreDataSet.certificate.version"
* differential.element[=].short = "Certificate schema version"
* differential.element[=].definition = "certificate schema version"
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

Instance:       DDCCCoreDataSetCoC
InstanceOf:     StructureDefinition
Description:    "Data elements for the DDCC Core Data Set - Continuity of Care."
Usage:          #definition

* id = "DDCCCoreDataSetCoC"
* name = "DDCCCoreDataSetCoC"
* title = "DDCC Core Data Set - Continuity of Care Logical Model"
* description = "DDCC Core Data - Continuity of Care elements."
* url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSetCoC"
* version = "RC2"
* kind = #logical
* abstract = false
* status = #draft
* type = "DDCCCoreDataSet"
* baseDefinition = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSetPoV"
* derivation = #specialization

* differential.element[+].id = "DDCCCoreDataSet.vaccination.centre"
* differential.element[=].path = "DDCCCoreDataSet.vaccination.centre"
* differential.element[=].short = "Administering centre"
* differential.element[=].definition = "The name or identifier of the vaccination facility responsible for providing the vaccination."
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].type[+].code = #string

*/
