Invariant:      who-ddcc-data-1
Description:    "Manufacturer or Market Authorization Holder SHALL be present"
Expression:     "manufacturer.exists() or maholder.exists()"
Severity:       #error

Logical:        DDCCCoreDataSet
Title:          "DDCC Core Data Set Logical Model"
Description:    "Data elements for the DDCC Core Data Set."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSet"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft

* name 1..1 SU string "Name" "The full name of the person."
* birthDate 0..1 SU date "Date of birth" "The person's date of birth (DOB) if known. If unknown, use given DOB for administrative purposes"
* identifier 0..1 SU Identifier "Unique identifier" "Unique identifier for the person, according to the policies applicable to each country. There can be more than one unique identifier used to link records. (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* certificate 0..1 SU BackboneElement "Certificate Metadata" "Metadata associated with the certificate"    
  * issuer 1..1 SU Reference(DDCCOrganization) "Certificate issuer" "Certificate issuer."
  * hcid 1..1 SU Identifier "Health certificate identifier (HCID)" "Health certificate identifier (HCID)."
  * ddccid 0..1 SU Identifier "DDCC Identifier"
  * version 1..1 SU string "Certificate schema version" "Certificate schema version"
  * period 0..1 Period "Certificate Validity Period" "Certificate validity period."
    * start 0..1 date "Certificate valid from" "Start date of certificate validity."
    * end 0..1 date "Certificate valid until" "End date of certificate validity."

Mapping:        DDCCCoreDataSetToComposition
Source:         DDCCCoreDataSet
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCComposition"
Id:             ddcc-composition
Title:          "WHO Digital Documentation of COVID Certificates"

* certificate.issuer -> "Composition.author.identifier"
* certificate.period -> "Composition.event.period"

Mapping:        DDCCCoreDataSetToPatient
Source:         DDCCCoreDataSet
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCPatient"
Id:             ddcc-patient
Title:          "WHO Digital Documentation of COVID Certificates"

* name -> "Patient.name.text"
* birthDate -> "Patient.birthDate"
* identifier -> "Patient.identifier"

Logical:        DDCCCoreDataSet_VS
Id:             DDCCCoreDataSet.VS
Parent:         DDCCCoreDataSet
Title:          "DDCC Core Data Set Logical Model for Vaccination Status"
Description:    "Data elements for the DDCC Core Data Set for Vaccination Status."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSet.VS"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft
* ^type = "DDCCCoreDataSet"

* vaccination 1..1 SU BackboneElement "Vaccination Event" "A vaccination event."
* vaccination obeys who-ddcc-data-1
  * vaccine 1..1 SU Coding "Vaccine or prophylaxis" "Generic description of the vaccine or vaccine sub-type. e.g. COVID-19 mRNA vaccine, HPV vaccine."
  * vaccine from WHO_DDCC_Vaccines_COVID_19 (preferred)
  * brand 1..1 SU Coding "Vaccine brand" "The brand or trade name used to refer to the vaccine received."
  * manufacturer 0..1 SU Coding "Vaccine manufacturer" "Name of the manufacturer of the vaccine received. e.g. Serum institute of India, AstraZeneca. If vaccine manufacturer is unknown, market authorization holder is REQUIRED."
  * maholder 0..1 SU Coding "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED."
  * lot 1..1 SU string "Vaccine lot number" "Lot number or batch number of vaccination."
  * date 1..1 SU dateTime "Date of vaccination" "Date in which the vaccine was provided."
  * validFrom 0..1 date "Vaccination valid from" "Date upon which provided vaccination is considered valid."
  * dose 1..1 SU positiveInt "Dose number" "Vaccine dose number."   
  * totalDoses 0..1 positiveInt "Total doses" "Total expected doses as defined by Member State care plan and immunization programme policies."
  * country 1..1 SU Coding "Country of vaccination" "The country in which the individual has been vaccinated."
    * ^mapping.identity = "ddcc"
    * ^mapping.map = "Immunization.extension.where(url='https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCountryOfVaccination')"
  * country from http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)
  * centre 0..1 string "Administering centre" "The name or identifier of the vaccination facility responsible for providing the vaccination."   
  * signature 0..1 Signature "Signature of health worker" "REQUIRED for PAPER vaccination certificates ONLY. The health worker who provided the vaccination or the supervising clinician's hand-written signature."
  * practitioner 0..1 Identifier "Health worker identifier" "OPTIONAL for DIGITAL and PAPER vaccination certificates. The unique identifier for the health worker as determined by the member state. There can be more than one unique identifier used. (e.g. system generated ID, health profession number, cryptographic signature, or any other form of health worker unique identifier). This can be used in lieu of a paper-based signature." 
  * disease 0..1 Coding "Disease or agent targeted" "Name of disease vaccinated against (such as COVID-19)."
  * disease from WHO_DDCC_Disease_Targeted_COVID_19 (preferred)
  * nextDose 0..1 date "Due date of next dose" "Date on which the next vaccination should be administered, if a next dose is REQUIRED."


Mapping:        DDCCCoreDataSetVSToImmunization
Source:         DDCCCoreDataSet_VS
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCImmunization"
Id:             ddcc-immunization
Title:          "WHO Digital Documentation of COVID Certificates"

* vaccination
  * vaccine -> "Immunization.vaccineCode"
  * brand -> "Immunization.extension[https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCEventBrand]"
  * manufacturer -> "Immunization.manufacturer"
  * maholder -> "Immunization.extension[https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCVaccineMarketAuthorization]"
  * lot -> "Immunization.lotNumber"
  * date -> "Immunization.occurrence"
  * validFrom -> "Immunization.extension[https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCVaccineValidFrom]"
  * dose -> "Immunization.protocolApplied.doseNumber"
  * totalDoses -> "Immunization.protocolApplied.seriesDoses"
  * country -> "Immunization.extension[https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCountryOfEvent]"
  * centre -> "Immunization.location"
  * practitioner -> "Immunization.performer.actor"
  * disease -> "Immunization.protocolApplied.targetDisease"
* certificate
  * issuer -> "Immunization.protocolApplied.authority.identifier"

Mapping:        DDCCCoreDataSetVSToImmunizationRecommendation
Source:         DDCCCoreDataSet_VS
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
Id:             ddcc-immunization-recommendation
Title:          "WHO Digital Documentation of COVID Certificates"

* vaccination.nextDose -> "ImmunizationRecommendation.dateCriterion.value"

Logical:        DDCCCoreDataSet_VS_PoV
Id:             DDCCCoreDataSet.VS.PoV
//Parent:		Element
Parent:         DDCCCoreDataSet_VS
Title:          "DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination"
Description:    "Data elements for the DDCC Core Data Set - Vaccination Status - Proof of Vaccination."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSet.VS.PoV"
* ^version = "RC2"
* ^abstract = false
* ^status = #draft
* ^type = "DDCCCoreDataSet"


Logical:        DDCCCoreDataSet_VS_CoC
Id:             DDCCCoreDataSet.VS.CoC
//Parent:		Element
Parent:         DDCCCoreDataSet_VS
Title:          "DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care"
Description:    "Data elements for the DDCC Core Data Set - Vaccination Status - Continuity of Care."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSet.VS.CoC"
* ^version = "RC2"
* ^abstract = false
* ^status = #draft
* ^type = "DDCCCoreDataSet"

* sex 0..1 SU code "Sex" "Documentation of a specific instance of sex information for the vaccinated person."
* sex from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* vaccination.centre 1..1 string "Administering centre" "The name or identifier of the vaccination facility responsible for providing the vaccination."

Mapping:        DDCCCoreDataSetVSCoCToPatient
Source:         DDCCCoreDataSet_VS_CoC
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCPatient"
Id:             ddcc-vs-coc-immunization-recommendation
Title:          "WHO Digital Documentation of COVID Certificates"

* sex -> "Patient.gender"

Logical:        DDCCCoreDataSet_TR
Id:             DDCCCoreDataSet.TR
Parent:         DDCCCoreDataSet
Title:          "DDCC Core Data Set Logical Model for Test Result"
Description:    "Data elements for the DDCC Core Data Set for Test Result."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCoreDataSet.TR"
* ^version = "RC2"
* ^abstract = true
* ^status = #draft
* ^type = "DDCCCoreDataSet"

* test 1..1 SU BackboneElement "Test Event" "A test event."
  * pathogen 1..1 SU Coding "Pathogen targeted" "Name of the pathogen being tested for (such as SARS-CoV-2). "
  * pathogen from WHO_DDCC_Agent_Targeted_COVID_19 (preferred)
  * type 1..1 SU Coding "Type of test" "Name of the type of test that was conducted e.g. NAAT."
  * type from WHO_DDCC_Type_of_Test_COVID_19 (preferred)
  * brand 0..1 SU Coding "Test brand" "The brand or trade name used to refer to the test conducted."
  * manufacturer 0..1 SU Coding "Test manufacturer" "Name of the manufacturer of the test conducted."
  * origin 0..1 SU Coding "Specimen Sample Origin" "The type of sample that was taken  e.g. Nasopharyngeal swab or Saliva specimen."
  * origin from WHO_DDCC_Sample_Origin_COVID_19 (preferred)
  * date 1..1 SU dateTime "Date and time of sample collection" "Date and time when sample was collected."
  * result 0..1 Coding "Test result" "Detected or Not detected presence of SARS-CoV-2 infection."
  * result from WHO_DDCC_Test_Result_COVID_19 (preferred)
  * centre 0..1 Coding "Test centre or facility name" "A codable name or identifier of the facility responsible for conducting the test."
  * country 1..1 SU Coding "Test centre country" "The country in which the individual has been tested."
  * country from http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred) 

Mapping:        DDCCCoreDataSetTRToObservation
Source:         DDCCCoreDataSet_TR
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCObservation"
Id:             ddcc-observation
Title:          "WHO Digital Documentation of COVID Certificates"

* test
  * type -> "Observation.code"
  * origin -> "Observation.method"
  * date -> "Observation.effective"
  * result -> "Observation.value"

Mapping:        DDCCCoreDataSetTRToSpecimen
Source:         DDCCCoreDataSet_TR
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCSpecimen"
Id:             ddcc-specimen
Title:          "WHO Digital Documentation of COVID Certificates"

* test
  * origin -> "Specimen.code"
  * date -> "Specimen.collection.collected"

Mapping:        DDCCCoreDataSetTRToTest
Source:         DDCCCoreDataSet_TR
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCTest"
Id:             ddcc-test
Title:          "WHO Digital Documentation of COVID Certificates"

* test
  * manufacturer -> "Device.manufacturer"
  * type -> "Device.type"
  * pathogen -> "Device.property.valueCode"
  * brand -> "Device.property.valueCode"

Mapping:        DDCCCoreDataSetTRToDignosticReport
Source:         DDCCCoreDataSet_TR
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCDiagnosticReport"
Id:             ddcc-diagnostic-report
Title:          "WHO Digital Documentation of COVID Certificates"

* test
  * type -> "DiagnosticReport.code"
  * date -> "DiagnosticReport.effective"

Mapping:        DDCCCoreDataSetTRToProcedure
Source:         DDCCCoreDataSet_TR
Target:         "http://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCProcedure"
Id:             ddcc-procedure
Title:          "WHO Digital Documentation of COVID Certificates"

* test
  * date -> "Procedure.performed"
  * centre -> "Procedure.location"
  * country -> "Procedure.extension[https://worldhealthorganization.github.io/ddcc/StructureDefinition/DDCCCountryOfEvent]"
