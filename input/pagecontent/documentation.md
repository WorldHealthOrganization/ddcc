# Overview

## Health Interventions
The key interventions for routine antenatal care (ANC) are the following, as defined in the WHO UHC compendium of essential interventions:

Health interventions are represented using _strategy_ and _pathway_ artifacts:

|Code|Description|Artifact|
|---|---|---|
|ANC.INT.01|Health education and counselling to promote healthy pregnancy|TODO: Link to ANCEducationAndCounselingStrategy|
|ANC.INT.02|Nutritional supplementation during pregnancy|TODO: Link to ANCNutritionalSupplmentationStrategy|
|ANC.INT.03|Maternal and fetal assessment and screening during pregnancy|TODO: Link to ANCMaternalAndFetalAssessmentStrategy|
|ANC.INT.04|Preventive measures and vaccination during pregnancy|TODO: Link to ANCPreventiveMeasuresStrategy|
|ANC.INT.05|Treatment for physiological symptoms during pregnancy|TODO: Link to ANCTreatmentStrategy|
|ANC.INT.06|Antenatal care models with a minimum of eight contacts|TODO: Link to ANCContactSchedule|

## Generic personas

A persona is a depiction of a relevant stakeholder, or "end-user", of the system. Personas are represented with profiles of the appropriate FHIR resource, as depicted in the following table:

TODO: Expand ANCPersona code system to include all these references, use content from [CPGCommonPersona](http://build.fhir.org/ig/HL7/cqf-recommendations/CodeSystem-cpg-common-persona.html)

|Occupational title|Description|ISCO code|Profile|
|---|---|---|---|
|Auxilliary nurse midwife (ANM)|TODO: Link to ANC content|3221 (Nursing associate professional)<br/>3222 (Midwifery associate professional)|[ANCAuxilliaryNurseMidwife profile](StructureDefinition-ancanmpractitionerrole.html)|
|Midwife|TODO: Link to ANC content|2222 (Midwifery professional)|[ANCMidwife profile](StructureDefinition-ancmidwifepractitionerrrole.html)|
|Nurse|TODO: Link to ANC content|2221 (Nursing professional)|[ANCNurse profile](StructureDefinition-ancpractitioner.html)|
|Pregnant woman|TODO: Link to ANC content|N/A|[ANCPregnantWoman profile](StructureDefinition-ancpatient.html)|
|Adolescent client|TODO: Link to ANC content|N/A|TODO: Link to ANCAdolescentClient profile|
|Lay health worker|TODO: Link to ANC content|3259 (Health associate professionals not elsewhere classified)|TODO: Link to ANCLayHealthWorker profile|
|Community health worker|TODO: Link to ANC content|3253 (Community health workers)|TODO: Link to ANCCommunityHealthWorker profile|

NOTE: There are other personas in the Digital Adaptation Kit (Nurse/Midwife supervisor, Facility Manager) that are not represented here.

TODO: Reference additional considerations for contextualizing personas from the DAK

## User scenarios
User scenarios are a narrative description of how different personas would interact with each other. The user scenario is provided to help the reader better understand how the system will be used and how it would fit into existing workflows. The following illustrative examples provide scenarios that may be common within ANC. In the subsequent component on workflows, these types of scenarios will be presented in a visual diagram, as opposed to narrative form. Note: these scenarios are not exhaustive and are only intended to contextualize the workflows in Component 4.

User scenarios within this implementation guide are represented with ExampleScenario resources.

### User scenario for first antenatal care contact

[First Contact Example Scenario](examples-first-contact.html)

### User scenario for second antenatal care contact

TODO: Link to ExampleScenario

### User scenario for an adolescent client

TODO: Link to ExampleScenario

## Business processes

|Label|Process name|Process ID|Artifact|
|---|---|---|---|
|A|Registration|ANC.A|TODO: Link to ANCRegistration (use [CPGCommonRegistration](http://build.fhir.org/ig/HL7/cqf-recommendations/PlanDefinition-cpg-common-registration.html))|
|B|Routine ANC Contact|ANC.B|TODO: Link to ANCContact (use planDefinition-ANCContact)|
|C|ANC referral|ANC.C|TODO: Link to ANCReferral|
|D|ANC health promotion, follow-up in the community|ANC.D|TODO: Link to ANCHealthPromotionProcess/ANCCommunityFollowupProcess|
|E|Reporting on aggregate indicators|ANC.E|TODO: Link to ANCIndicatorReportingProcess|

NOTE: C, D, and E are not fully specified by this implementation guide

### Routine ANC Contact

TODO: Each of these will have data requirements that are either met/unmet, and a corresponding questionnaire (either explicitly specified, or derived from missing/incomplete data requirements) to be used as an interface for completing the activity. Each of these should map to one of the common process codes in [CPGCommonProcess](http://build.fhir.org/ig/HL7/cqf-recommendations/CodeSystem-cpg-common-process.html):

1. Rapid assessment and management (RAM)
2. Danger signs needing referral?
3. Confirm pregnancy
4. First contact
5. Quick check
6. Profile
7. Check symptoms and follow-up
8. Conduct physical exam
9. Conduct laboratory test and imaging
10. Counselling, in-facility management and treatment
11. Urgent referral?
12. Scheduling
13. Self-care in the home or community

## Data elements

Data elements are represented within this implementation guide using FHIR profiles of the appropriate resource as well as libraries of associated calculation logic for calculated, or inferred, data elements.

Note that some "Data elements" from the perspective of the Data Dictionary presented in the DAK are actually rollups. For example, Patient last name is a specific data element within the DAK, but is represented as one of many elements in the ANCPatient profile.

### Data elements by activity

#### ANC.B10.1 Behaviour counselling

|Data Element Id|Data Element|
|---|---|
|ANC.B10.1.DE1|[Counselling conducted on caffeine reduction](StructureDefinition-anc-b10-1-de1.html)|
|ANC.B10.1.DE10|[Reason counselling on alcohol / substance use was not conducted](StructureDefinition-anc-b10-1-de10.html)|
|ANC.B10.1.DE2|[Reason counselling on caffeine reduction was not done](StructureDefinition-anc-b10-1-de2.html)|
|ANC.B10.1.DE3|[Counselling conducted on tobacco cessation](StructureDefinition-anc-b10-1-de3.html)|
|ANC.B10.1.DE4|[Reason counselling on tobacco cessation was not conducted](StructureDefinition-anc-b10-1-de4.html)|
|ANC.B10.1.DE5|[Counselling conducted on second-hand smoke](StructureDefinition-anc-b10-1-de5.html)|
|ANC.B10.1.DE6|[Reason counselling on second-hand smoke was not conducted](StructureDefinition-anc-b10-1-de6.html)|
|ANC.B10.1.DE7|[Counselling conducted on condom use](StructureDefinition-anc-b10-1-de7.html)|
|ANC.B10.1.DE8|[Reason counselling on condom use was not conducted](StructureDefinition-anc-b10-1-de8.html)|
|ANC.B10.1.DE9|[Counselling conducted on alcohol / substance use](StructureDefinition-anc-b10-1-de9.html)|

#### ANC.B10.2 Physiological symptoms counselling

|Data Element Id|Data Element|
|---|---|
|ANC.B10.2.DE1|[Counselling conducted on non-pharma measures to relieve nausea and vomiting](StructureDefinition-anc-b10-2-de1.html)|
|ANC.B10.2.DE10|[Reason counselling on non-pharmacological treatment for the relief of leg cramps was not conducted](StructureDefinition-anc-b10-2-de10.html)|
|ANC.B10.2.DE11|[Counselling conducted on use of magnesium and calcium to relieve leg cramps](StructureDefinition-anc-b10-2-de11.html)|
|ANC.B10.2.DE12|[Reason counselling on use of magnesium and calcium to relieve leg cramps was not conducted](StructureDefinition-anc-b10-2-de12.html)|
|ANC.B10.2.DE13|[Counselling conducted on dietary modifications to relieve constipation](StructureDefinition-anc-b10-2-de13.html)|
|ANC.B10.2.DE14|[Reason counselling on dietary modifications to relieve constipation was not conducted](StructureDefinition-anc-b10-2-de14.html)|
|ANC.B10.2.DE15|[Counselling conducted on use of wheat bran or other fibre supplements to relieve constipation](StructureDefinition-anc-b10-2-de15.html)|
|ANC.B10.2.DE16|[Reason counselling on use of wheat bran or other fibre supplements to relieve constipation was not conducted](StructureDefinition-anc-b10-2-de16.html)|
|ANC.B10.2.DE17|[Counselling conducted on regular exercise, physiotherapy, support belts and acupuncture to relieve low back and pelvic pain](StructureDefinition-anc-b10-2-de17.html)|
|ANC.B10.2.DE18|[Reason counselling on regular exercise, physiotherapy, support belts and acupuncture to relieve low back and pelvic pain was not conducted](StructureDefinition-anc-b10-2-de18.html)|
|ANC.B10.2.DE19|[Counselling conducted on non-pharmacological options for varicose veins and oedema](StructureDefinition-anc-b10-2-de19.html)|
|ANC.B10.2.DE2|[Reason counselling on non-pharma measures to relieve nausea and vomiting was not conducted](StructureDefinition-anc-b10-2-de2.html)|
|ANC.B10.2.DE20|[Reason counselling on non-pharmacological options for varicose veins and oedema was not conducted](StructureDefinition-anc-b10-2-de20.html)|
|ANC.B10.2.DE3|[Counselling conducted on pharmacological treatments for nausea and vomiting](StructureDefinition-anc-b10-2-de3.html)|
|ANC.B10.2.DE4|[Reason counselling on pharmacological treatments for nausea and vomiting was not conducted](StructureDefinition-anc-b10-2-de4.html)|
|ANC.B10.2.DE5|[Counselling conducted on diet and lifestyle changes to prevent and relieve heartburn](StructureDefinition-anc-b10-2-de5.html)|
|ANC.B10.2.DE6|[Reason counselling on diet and lifestyle changes to prevent and relieve heartburn was not conducted](StructureDefinition-anc-b10-2-de6.html)|
|ANC.B10.2.DE7|[Counselling conducted on antacid preparations to relieve heartburn](StructureDefinition-anc-b10-2-de7.html)|
|ANC.B10.2.DE8|[Reason counselling on antacid preparations to relieve heartburn was not conducted](StructureDefinition-anc-b10-2-de8.html)|
|ANC.B10.2.DE9|[Counselling on non-pharmacological treatment for the relief of leg cramps](StructureDefinition-anc-b10-2-de9.html)|

#### ANC.B10.3 Diet counselling

|Data Element Id|Data Element|
|---|---|
|ANC.B10.3.DE1|[Counselling conducted on healthy eating and keeping physically active](StructureDefinition-anc-b10-3-de1.html)|
|ANC.B10.3.DE2|[Reason counselling on healthy eating and keeping physically active was not conducted](StructureDefinition-anc-b10-3-de2.html)|
|ANC.B10.3.DE3|[Counselling conducted on increasing daily energy and protein intake](StructureDefinition-anc-b10-3-de3.html)|
|ANC.B10.3.DE4|[Reason counselling on increasing daily energy and protein intake was not conducted](StructureDefinition-anc-b10-3-de4.html)|
|ANC.B10.3.DE5|[Counselling conducted on balanced energy and protein dietary supplementation](StructureDefinition-anc-b10-3-de5.html)|
|ANC.B10.3.DE6|[Reason counselling on balanced energy and protein dietary supplementation was not conducted](StructureDefinition-anc-b10-3-de6.html)|

#### ANC.B10.4 Diagnosis & treatment

|Data Element Id|Data Element|
|---|---|
|ANC.B10.4.DE1|[Hypertension](StructureDefinition-anc-b10-4-de1.html)|
|ANC.B10.4.DE10|[Syphilis counselling, treatment and further testing](StructureDefinition-anc-b10-4-de10.html)|
|ANC.B10.4.DE11|[Seven-day antibiotic regimen for asymptomatic bacteriuria (ASB) provided](StructureDefinition-anc-b10-4-de11.html)|
|ANC.B10.4.DE12|[Reason seven-day antibiotic regimen for asymptomatic bacteriuria (ASB) not provided](StructureDefinition-anc-b10-4-de12.html)|
|ANC.B10.4.DE13|[Counselling conducted on TB screening positive](StructureDefinition-anc-b10-4-de13.html)|
|ANC.B10.4.DE14|[Counselling conducted on gestational diabetes mellitus (GDM)](StructureDefinition-anc-b10-4-de14.html)|
|ANC.B10.4.DE15|[Counselling conducted on diabetes mellitus (DM)](StructureDefinition-anc-b10-4-de15.html)|
|ANC.B10.4.DE16|[Counselling conducted on anaemia](StructureDefinition-anc-b10-4-de16.html)|
|ANC.B10.4.DE2|[Severe hypertension](StructureDefinition-anc-b10-4-de2.html)|
|ANC.B10.4.DE3|[Pre-eclampsia](StructureDefinition-anc-b10-4-de3.html)|
|ANC.B10.4.DE4|[Severe pre-eclampsia](StructureDefinition-anc-b10-4-de4.html)|
|ANC.B10.4.DE5|[Counselling conducted on hypertension](StructureDefinition-anc-b10-4-de5.html)|
|ANC.B10.4.DE6|[Counselling conducted on HIV positive](StructureDefinition-anc-b10-4-de6.html)|
|ANC.B10.4.DE7|[Counselling conducted on hepatitis B positive](StructureDefinition-anc-b10-4-de7.html)|
|ANC.B10.4.DE8|[Counselling conducted on hepatitis C positive](StructureDefinition-anc-b10-4-de8.html)|
|ANC.B10.4.DE9|[Syphilis counselling and treatment](StructureDefinition-anc-b10-4-de9.html)|

#### ANC.B10.5 Nutrition supplementation

|Data Element Id|Data Element|
|---|---|
|ANC.B10.5.DE1|[Amount of iron prescribed](StructureDefinition-anc-b10-5-de1.html)|
|ANC.B10.5.DE2|[Type of iron supplement dosage provided](StructureDefinition-anc-b10-5-de2.html)|
|ANC.B10.5.DE3|[Amount of daily dose of folic acid prescribed](StructureDefinition-anc-b10-5-de3.html)|
|ANC.B10.5.DE4|[Reason iron and folic acid not prescribed](StructureDefinition-anc-b10-5-de4.html)|
|ANC.B10.5.DE5|[Amount of vitamin A supplementation provided](StructureDefinition-anc-b10-5-de5.html)|
|ANC.B10.5.DE6|[Type of vitamin A supplement dosage provided](StructureDefinition-anc-b10-5-de6.html)|
|ANC.B10.5.DE7|[Vitamin A supplementation not provided](StructureDefinition-anc-b10-5-de7.html)|
|ANC.B10.5.DE8|[Amount of daily calcium supplements provided](StructureDefinition-anc-b10-5-de8.html)|
|ANC.B10.5.DE9|[Reason calcium not prescribed](StructureDefinition-anc-b10-5-de9.html)|

#### ANC.B.10.6 Risk reduction & general counselling

|Data Element Id|Data Element|
|---|---|
|ANC.B.10.6.DE1|[Risk of pre-eclampsia](StructureDefinition-anc-b-10-6-de1.html)|
|ANC.B.10.6.DE2|[Pre-eclampsia risk counselling provided](StructureDefinition-anc-b-10-6-de2.html)|
|ANC.B.10.6.DE3|[Amount of daily aspirin prescribed until delivery](StructureDefinition-anc-b-10-6-de3.html)|
|ANC.B.10.6.DE4|[Reason aspirin not prescribed](StructureDefinition-anc-b-10-6-de4.html)|
|ANC.B.10.6.DE5|[Risk of gestational diabetes mellitus (GDM)](StructureDefinition-anc-b-10-6-de5.html)|
|ANC.B.10.6.DE6|[Gestational diabetes mellitus (GDM) risk counselling conducted](StructureDefinition-anc-b-10-6-de6.html)|
|ANC.B.10.6.DE7|[Counselling conducted on HIV risk](StructureDefinition-anc-b-10-6-de7.html)|
|ANC.B.10.6.DE8|[PrEP for HIV prevention provided](StructureDefinition-anc-b-10-6-de8.html)|
|ANC.B.10.6.DE9|[Reason PrEP for HIV prevention was not provided](StructureDefinition-anc-b-10-6-de9.html)|
|ANC.B.10.6.DE10|[Counselling conducted on seeking care when danger signs occur](StructureDefinition-anc-b-10-6-de10.html)|
|ANC.B.10.6.DE11|[Counsel to immediately go to the hospital if severe danger signs are present](StructureDefinition-anc-b-10-6-de11.html)|
|ANC.B.10.6.DE12|[Counselling on ANC contact schedule conducted](StructureDefinition-anc-b-10-6-de12.html)|
|ANC.B.10.6.DE13|[Counselling conducted on birth preparedness and complications readiness](StructureDefinition-anc-b-10-6-de13.html)|
|ANC.B.10.6.DE14|[Planned birth place](StructureDefinition-anc-b-10-6-de14.html)|
|ANC.B.10.6.DE15|[Counselling conducted on Rh factor negative](StructureDefinition-anc-b-10-6-de15.html)|
|ANC.B.10.6.DE16|[Counselling conducted on intrapartum antibiotic to prevent early neonatal Group B Streptococcus (GBS) infection](StructureDefinition-anc-b-10-6-de16.html)|
|ANC.B.10.6.DE17|[Counselling on postpartum family planning conducted](StructureDefinition-anc-b-10-6-de17.html)|
|ANC.B.10.6.DE18|[Family planning method provided](StructureDefinition-anc-b-10-6-de18.html)|
|ANC.B.10.6.DE19|[Counselling conducted on breastfeeding](StructureDefinition-anc-b-10-6-de19.html)|

#### ANC.B.10.7 Immunizations

|Data Element Id|Data Element|
|---|---|
|ANC.B.10.7.DE1|[Tetanus toxoid (TT) 1 immunization provided](StructureDefinition-anc-b-10-7-de1.html)|
|ANC.B.10.7.DE10|[Date tetanus toxoid 5 immunization was received](StructureDefinition-anc-b-10-7-de10.html)|
|ANC.B.10.7.DE11|[Reason tetanus toxoid (TT) vaccination not provided](StructureDefinition-anc-b-10-7-de11.html)|
|ANC.B.10.7.DE12|[Counselling conducted on Hep B negative](StructureDefinition-anc-b-10-7-de12.html)|
|ANC.B.10.7.DE13|[Hepatitis B-1 immunization provided](StructureDefinition-anc-b-10-7-de13.html)|
|ANC.B.10.7.DE14|[Date hepatitis B-1 immunization was received](StructureDefinition-anc-b-10-7-de14.html)|
|ANC.B.10.7.DE15|[Hepatitis B-2 immunization provided](StructureDefinition-anc-b-10-7-de15.html)|
|ANC.B.10.7.DE16|[Date hepatitis B-2 immunization was received](StructureDefinition-anc-b-10-7-de16.html)|
|ANC.B.10.7.DE17|[Hepatitis B-3 immunization provided](StructureDefinition-anc-b-10-7-de17.html)|
|ANC.B.10.7.DE18|[Date hepatitis B-3 immunization was received](StructureDefinition-anc-b-10-7-de18.html)|
|ANC.B.10.7.DE19|[No doses of hepatitis B](StructureDefinition-anc-b-10-7-de19.html)|
|ANC.B.10.7.DE2|[Date tetanus toxoid 1 immunization was received](StructureDefinition-anc-b-10-7-de2.html)|
|ANC.B.10.7.DE20|[Reason Hep B vaccination not provided](StructureDefinition-anc-b-10-7-de20.html)|
|ANC.B.10.7.DE21|[Flu immunization provided](StructureDefinition-anc-b-10-7-de21.html)|
|ANC.B.10.7.DE22|[Date flu immunization was received](StructureDefinition-anc-b-10-7-de22.html)|
|ANC.B.10.7.DE23|[Reason flu vaccine not provided](StructureDefinition-anc-b-10-7-de23.html)|
|ANC.B.10.7.DE3|[Tetanus toxoid (TT) 2 immunization provided](StructureDefinition-anc-b-10-7-de3.html)|
|ANC.B.10.7.DE4|[Date tetanus toxoid 2 immunization was received](StructureDefinition-anc-b-10-7-de4.html)|
|ANC.B.10.7.DE5|[Tetanus toxoid (TT) 3 immunization provided](StructureDefinition-anc-b-10-7-de5.html)|
|ANC.B.10.7.DE6|[Date tetanus toxoid 3 immunization was received](StructureDefinition-anc-b-10-7-de6.html)|
|ANC.B.10.7.DE7|[Tetanus toxoid (TT) 4 immunization provided](StructureDefinition-anc-b-10-7-de7.html)|
|ANC.B.10.7.DE8|[Date tetanus toxoid 4 immunization was received](StructureDefinition-anc-b-10-7-de8.html)|
|ANC.B.10.7.DE9|[Tetanus toxoid (TT) 5 immunization provided](StructureDefinition-anc-b-10-7-de9.html)|

#### ANC.B.10.8 Intimate partner violence counselling

|Data Element Id|Data Element|
|---|---|
|ANC.B.10.8.DE1|[Clinical enquiry for intimate partner violence (IPV) done](StructureDefinition-anc-b-10-8-de1.html)|
|ANC.B.10.8.DE2|[Reason clinical enquiry for intimate partner violence (IPV) not done](StructureDefinition-anc-b-10-8-de2.html)|
|ANC.B.10.8.DE3|[Intimate partner violence or sexual violence risk assessment conducted](StructureDefinition-anc-b-10-8-de3.html)|
|ANC.B.10.8.DE4|[Risk factors for clients subjected to intimate partner violence or sexual assault](StructureDefinition-anc-b-10-8-de4.html)|
|ANC.B.10.8.DE5|[Woman suspected or confirmed to be subjected to intimate partner violence or sexual violence](StructureDefinition-anc-b-10-8-de5.html)|
|ANC.B.10.8.DE6|[IPV enquiry results](StructureDefinition-anc-b-10-8-de6.html)|
|ANC.B.10.8.DE7|[Reporting](StructureDefinition-anc-b-10-8-de7.html)|
|ANC.B.10.8.DE8|[Presenting symptoms/conditions](StructureDefinition-anc-b-10-8-de8.html)|
|ANC.B.10.8.DE9|[Types of violence](StructureDefinition-anc-b-10-8-de9.html)|

#### ANC.B10.9 Deworming & malaria prophylaxis

|Data Element Id|Data Element|
|---|---|
|ANC.B10.9.DE1|[Reason no preventative treatment provided](StructureDefinition-anc-b10-9-de1.html)|
|ANC.B10.9.DE10|[Reason malaria prophylaxis not provided](StructureDefinition-anc-b10-9-de10.html)|
|ANC.B10.9.DE2|[Counselling conducted on malaria prevention](StructureDefinition-anc-b10-9-de2.html)|
|ANC.B10.9.DE3|[Reason counselling on malaria prevention was not conducted](StructureDefinition-anc-b10-9-de3.html)|
|ANC.B10.9.DE4|[IPTp-SP dose 1 provided](StructureDefinition-anc-b10-9-de4.html)|
|ANC.B10.9.DE5|[IPTp-SP dose 1 date](StructureDefinition-anc-b10-9-de5.html)|
|ANC.B10.9.DE6|[IPTp-SP dose 2 provided](StructureDefinition-anc-b10-9-de6.html)|
|ANC.B10.9.DE7|[IPTp-SP dose 2 date](StructureDefinition-anc-b10-9-de7.html)|
|ANC.B10.9.DE8|[IPTp-SP dose 3 provided](StructureDefinition-anc-b10-9-de8.html)|
|ANC.B10.9.DE9|[IPTp-SP dose 3 date](StructureDefinition-anc-b10-9-de9.html)|

#### ANC.B11. Urgent referral needed?

|Data Element Id|Data Element|
|---|---|
|ANC.B11..DE1|[Referred to hospital](StructureDefinition-anc-b11-de1.html)|
|ANC.B11..DE2|[Reason referral not done](StructureDefinition-anc-b11-de2.html)|

### Data elements by profile

TODO

### Data elements by recommendation

TODO

## Decision-support logic

Decision tables within this implementation guide are represented with a combination of recommendation definitions and libraries of associated criteria logic.

|Decision Table|Description|
|---|---|
|[ANC.DT.01 Danger signs](PlanDefinition-ANCDT01.html)|Before each contact, during the Quick Check, the health worker should check whether the woman has any of the danger signs listed here – if yes, she should be referred to the hospital urgently; if no, the normal contact should be continued as normal|
|[ANC.DT.02 Adolescent HEADSS asessement](PlanDefinition-ANCDT02.html)|If client is an adolescent, conduct Home-Eating-Activity-Drugs-Sexuality-Safety-Suicide (HEADSS) assessment|
|[ANC.DT.03 Check symptoms and follow up](PlanDefinition-ANCDT03.html)|Depending on current and/or persistant symptoms, physiological symptoms counselling may be required|
|[ANC.DT.04 Conducting physical exams](PlanDefinition-ANCDT04.html)|Depending on the results of some physical exams, additional examinations or repeat measurements are required|
|[ANC.DT.05 Evaluating labour](PlanDefinition-ANCDT05.html)|During a cervical exam, if cervical dilation is greater than 2 cm evaluate the possibility of labour|
|[ANC.DT.06 Physical symptoms and exam results requiring referral](PlanDefinition-ANCDT06.html)|If the woman has any of the following physical exam results, refer to the hospital|
|[ANC.DT.07 Ultrasound recommendation](PlanDefinition-ANCDT07.html)|An ultrasound is recommended for all pregnant women before 24 weeks of gestation (early ultrasound). If there's no ultrasound available at that health-carte facility, the woman should be referred to another facility in which she can receive an ultrasound.|
|[ANC.DT.08 HIV testing](PlanDefinition-ANCDT08.html)|Depending on the population prevalence, and woman's medical history, conduct HIV testing|
|[ANC.DT.09 Heptatitis B testing](PlanDefinition-ANCDT09.html)|Depending on the population prevalence, and woman's medical history, conduct hepatitis B testing|
|[ANC.DT.10 Hepatitis C testing](PlanDefinition-ANCDT10.html)|Depending on the population prevalence, and woman's medical history, conduct hepatitis C testing|
|[ANC.DT.11 Syphilis testing](PlanDefinition-ANCDT11.html)|Depending on the contact schedule, and woman's syphilis diagnosis, test for syphilis|
|[ANC.DT.12 Urine testing](PlanDefinition-ANCDT12.html)|Conditions in which urine testing is required|
|[ANC.DT.13 Tuberculosis screening](PlanDefinition-ANCDT13.html)|Conditions in which screening for TB is recommended|
|[ANC.DT.14 Other](PlanDefinition-ANCDT14.html)|Additional blood tests|
|[ANC.DT.15 Behaviour counselling required](PlanDefinition-ANCDT15.html)|Depending on the woman's behaviours reported during the first contact and the woman's reported persistent behaviours, additional counselling may or may not be required |
|[ANC.DT.16 Dietary counselling](PlanDefinition-ANCDT16.html)|ALL women should have "Healthy eating and keeping physically active counselling" with guidance on nutrition and exercise. If a woman is classified as "underweight" AND she is part of a population whereby the prevalence of undernourishment is greater than or equal to 20%, then additional dietary counselling is needed.|
|[ANC.DT.17 Pre-eclampsia, severe pre-eclampsia and hypertension diagnosis](PlanDefinition-ANCDT17.html)|If the woman presents with any of the following symptoms and/or test results, conduct counselling and referral as needed|
|[ANC.DT.18 HIV diagnosis](PlanDefinition-ANCDT18.html)|If the woman tests positive for HIV, provide counselling and referral as needed|
|[ANC.DT.19 Hepatitis B diagnosis](PlanDefinition-ANCDT19.html)|If the woman tests positive for hepatitis B, provide counselling and referral as needed|
|[ANC.DT.20 Hepatitis C diagnosis](PlanDefinition-ANCDT20.html)|If the woman tests positive for hepatitis C, provide counselling and referral as needed|
|[ANC.DT.21 Syphilis diagnosis](PlanDefinition-ANCDT21.html)|If the woman tests positive for syphilis, provide counselling and treatment as needed|
|[ANC.DT.22 Asymptomatic bacteriuria (ASB) diagnosis](PlanDefinition-ANCDT22.html)|If the woman tests positive for ASB, provide counselling and treatment as needed.|
|[ANC.DT.23 Gestational diabetes mellitus (GDM) and diabetes mellitus (DM) during pregnancy diagnosis](PlanDefinition-ANCDT23.html)|If the woman's blood glucose test results are as follows, provide the necessary counselling and treatment|
|[ANC.DT.24 TB diagnosis](PlanDefinition-ANCDT24.html)|If the woman's TB screening results are positive for TB, provide the required treatment as per local TB protocols|
|[ANC.DT.25 Anaemia, iron and folic acid supplementation](PlanDefinition-ANCDT25.html)|Testing for anaemia is recommended for all pregnant women. Regardless of test results, iron and folic acid supplementation is recommended. The amount of iron and folic acid supplementation will vary depending on anaemia diagnosis, population prevalence of anaemia, and whether the woman has side-effects due to iron and folic acid supplementation.|
|[ANC.DT.26 Calcium and vitamin A supplementation](PlanDefinition-ANCDT26.html)|Depending on the population, additional calcium and/or vitamin A supplements maybe required|
|[ANC.DT.27 Pre-eclampsia risk counselling](PlanDefinition-ANCDT27.html)|If the woman has risk factors for developing pre-eclampsia, provide counselling to reduce risk of developing pre-eclampsia|
|[ANC.DT.28 Gestational diabetes mellitus (GDM) risk counselling](PlanDefinition-ANCDT28.html)|If the woman has risk factors for developing gestational diabetes mellitus (GDM), provide counselling to reduce risk of developing GDM|
|[ANC.DT.29 HIV risk counselling](PlanDefinition-ANCDT29.html)|If the woman has risk factors for contracting HIV, provide counselling to reduce risk of contracting HIV|
|[ANC.DT.30 General risk reduction counselling](PlanDefinition-ANCDT30.html)|Depending on a variety of risk factors and/or gestational age, provide additional counselling accordingly|
|[ANC.DT.31 Flu immunization](PlanDefinition-ANCDT31.html)|If the woman has not yet been immunized with the seasonal flu vaccine, she should be immunized|
|[ANC.DT.32 Tetanus toxoid-containing vaccination](PlanDefinition-ANCDT32.html)|If the woman has not yet been fully immunized against tetanus, she should be immunized			|
|[ANC.DT.33 Breastfeeding counselling](PlanDefinition-ANCDT33.html)|General counselling to be provided/reviewed at every contact|
|[ANC.DT.34 Birth preparedness counselling](PlanDefinition-ANCDT34.html)|General counselling to be provided/reviewed at every contact|
|[ANC.DT.35 Family planning counselling](PlanDefinition-ANCDT35.html)|General counselling to be provided/reviewed at every contact|
|[ANC.DT.36 Intimate partner violence (IPV) clinical inquiry](PlanDefinition-ANCDT36.html)|You may suspect that a woman has been subjected to intimiate partner violence if she has any of the following risk factors|
|[ANC.DT.37 Intimate partner violence (IPV) first-line support and treatment](PlanDefinition-ANCDT37.html)|Woman has been subjected to IPV|
|[ANC.DT.38 Deworming and malaria prophylaxis](PlanDefinition-ANCDT38.html)|IF the woman is currently in a malaria-endemic setting, or in an area where there is greater than 20% prevalence of infection with any soil-transmitted helminths, THEN she should receive preventative treatment accordingly|

## Indicators

This section details indicators and performance metrics that would be aggregated from core data elements identified in Component 5. These indicators are based on the Global ANC monitoring framework (25) and the WHO–UNICEF guidance for RMNCAH programme managers on the analysis and use of health facility data (10). These indicators may be aggregated automatically from the digital tracking tool to populate a digital HMIS, such as DHIS2.

Indicator definitions are represented using the FHIR Measure resource (CPGMetric profile).

|Indicator ID|Title|Artifact|Reference|
|---|---|---|---|
|ANC.IND.1|Percentage of pregnant women with first ANC contact in the first trimester (before 12 weeks of gestation)|TODO: Link to Measure{CPGMetric}|Global ANC monitoring framework (25)(br/>WHO–UNICEF guidance for RMNCAH programme managers on the analysis and use of health facility data (10)

TODO: Generate this list or build/maintain manually?

TODO: Generate artifact skeletons for these?

## Functional requirements

TODO: Link to/display functional/non-functional requirements

## References

TODO: Add references from Digital adaptation kit
