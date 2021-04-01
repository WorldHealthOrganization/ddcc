Alias: $LOINC = http://loinc.org


Profile:        SVC_Composition
Parent:         Composition
Id:             svc-composition
Title:          "SVC Composition"
Description:    """ 
Describes the logical structure for the health content contained in a SVC.  An [SVC Composition](StructureDefinition-svc-composition.html) should:
 * be accessible from a SVC Registry as located via the WHO Public Key Directory for the PHA referenced in the [author](StructureDefinition-svc-composition-definitions.html#Composition.agent).
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SVC Composition"
* ^abstract = true

* title = "International Certificate of Vaccination or Prophylaxis"
* author only Reference(SVC_Organization)
* subject 1..1
* subject only Reference(SVC_Patient)
* status 1..1


//  a document should have a type
* type = $LOINC#82593-5
* type ^short = "Kind of composition (\"Smart Vaccination Certificate\")"
* type ^definition = "Specifies that this composition refers to a Smart vaccination Certificate (Loinc \"11369-6\")"
* title MS

// Why only one identifier ?
* identifier 1..1 MS
* identifier.system 1..1
* identifier.value 1..1 MS

// * identifier.system = "urn:uuid"
// from the FHIR stadnard "If the identifier value itself is naturally a globally unique URI (e.g. an OID, a UUID, or a URI with no trailing local part), then the system SHALL be "urn:ietf:rfc:3986", and the URI is in the value (OIDs and UUIDs using urn:oid: and urn:uuid: - see note on the V3 mapping and the examples). Naturally globally unique identifiers are those for which no system has been assigned and where the value of the identifier is reasonably expected to not be re-used. Typically, these are absolute URIs of some kind."

 * identifier.system = "urn:ietf:rfc:3986"

* section 1..
// * section ^slicing.discriminator.type = #value
// * section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open
//  do you need ordered slices ?
* section ^slicing.ordered = true
* section contains Section_Vaccinations 1..1

* section[Section_Vaccinations] ^short = "Vaccinations Section"
* section[Section_Vaccinations] ^definition = "Vaccination Section lists the relvant vaccinations received by the patient"
* section[Section_Vaccinations].code 1.. MS
* section[Section_Vaccinations].code  = $LOINC#11369-6
* section[Section_Vaccinations].entry 1.. MS
* section[Section_Vaccinations].entry ^slicing.discriminator[0].type = #type
* section[Section_Vaccinations].entry ^slicing.discriminator[0].path = "$this"

* section[Section_Vaccinations].entry ^slicing.rules = #open

* section[Section_Vaccinations].entry ^slicing.ordered = true
* section[Section_Vaccinations].entry contains Section_Vaccinations_Entry 1.. MS
* section[Section_Vaccinations].entry[Section_Vaccinations_Entry] only Reference(SVC_Immunization)


Profile:        SVC_Composition_New
Parent:         SVC_Composition
Id:             svc-composition-new
Title:          "New SVC Composition"
Description:    """ 
Empty container for the health content contained on a new Paper SVC.

When a new Paper SVC is issued, the following rules apply to a [New SVC Composition](StructureDefinition-svc-composition-new.html):
  * a [Person.identifier](StructureDefinition-svc-patient-definitions.html#Person.identifier)  entry is generated for a [SVC Patient](StructureDefinition-svc-patient.html) with system set to 'urn:uuid' and value set to a v4 UUID.
  * [Composition.author](StructureDefinition-svc-composition-new-definitions.html#Composition.author) is set to reference the Organization resource associated to the PHA via the WHO Smart Directory
  * set the [status](StructureDefinition-svc-composition-new-definitions.html#Composition.status) to #preliminary
  * for each row of the Paper SVC, an [New SVC Immunization](StructureDefinition-svc-immunization-new.html) should be generated and an entry should be created to reference this


"""
* status  = #preliminary
* subject only Reference(SVC_Patient_New)
* ^abstract = false

Profile:        SVC_Composition_Updated
Parent:         SVC_Composition
Id:             svc-composition-updated
Title:          "Updated SVC Composition"
Description:    """ 
Populated container for the health content contained on a reissued Paper SVC which

When a Paper SVC is reissued, the following rules apply:
  * [status](StructureDefinition-svc-composition-new-definitions.html#Composition.status)  is set to #final
  * each row in the Vaccination Events section of the Paper SVC should contain a QR-code encoding an [SVC Immunization](StructureDefinition-svc-immunization.html)
  * transfer written content from the Vaccination Events section of the existing Paper SVC into corresponding [Updated SVC Immunizations](StructureDefinittion-svc-immunization.html)
  * preserve entries in the from the external SVC Composition that correspond to [Updated SVC Immunizations](StructureDefintion-svc-composition-updated.html)
#else /* RC2 */
  * transfer written content from the Vaccination Events section of the existing Paper SVC into corresponding [SVC Immunizations](StructureDefinittion-svc-immunization.html)



An Update SVC Composition may:
 * contain any other relevant health information appropriate to share (e.g. test results) according to the policy of the PHA.  It is up to the PHAs to define and manage bilateral data access policies.

"""
* status = #final
* subject only Reference(SVC_Patient_Updated)
* ^abstract = false


Profile:        SVC_Composition_Ingested
Parent:         SVC_Composition
Id:             svc-composition-ingested
Title:          "Ingested SVC Composition"
Description:    """ 
Populated container for the health content contained on a  Paper SVC issued by a PHA when ingesting an SVC issued by an external PHA

An Ingested SVC Composition should:
  * set [status](StructureDefinition-svc-composition-new-definitions.html#Composition.status) to #final
  * be accessible from a SVC Registry as located via the WHO SMART Directory for the associated PHA  
  * transfer written content from the Vaccination Events section of the existing Paper SVC into corresponding [Updated SVC Immunizations](StructureDefinition-svc-immunization.html)
  * preserve entries in the from the external [SVC Composition](StructureDefinition-svc-composition.html) that correspond to [Updated SVC Immunizations](StructureDefinition-svc-immunization.html)

An Ingested SVC Composition may be:
  * derived from a [New SVC Compostion](StructureDefinition-svc-composition-new.html) generated by the PHA
  * derived from located an existing Updated SVC Composition under the provenace of the PHA
  * contain any other relevant health information appropriate to share (e.g. test results) according to the policy of the PHA.  It is up to the PHAs to define and manage bilateral data access policies.

"""
* status = #final
* subject only Reference(SVC_Patient_Ingested)
* ^abstract = false

