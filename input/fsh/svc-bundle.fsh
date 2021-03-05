Profile:        SVC-Bundle
Parent:         Bundle
Id:             svc-bundle
Title:          "SVC Bundle"
Description:    """ 
An SVC Bundle contains the content to be encoded in QR-code on the front page of a Paper SVC.

"""
* type = document
* entry 3..3
* entry[0].type = #Patient
* entry[0].type only Reference(SVC-Patient)
* entry[1].type only Reference(SVC-Composition)
* entry[2].type only Reference(SVC-Provenance)



Profile:        SVC-Bundle-New
Parent:         SVC-Bundle
Id:             svc-bundle-new
Title:          "New SVC Bundle"
Description:    """ 
An SVC Bundle contains the content to be encoded in QR-code on the front page of a Paper SVC.

An new SVC Bundle is derived from an existing SVC Bundle according to the following rules:
 * preserve the content in the existing SVC Bundle
 * amend this by transferring the non-digital demographic content  from the Paper SVC into the SVC Patient resource 
"""
* type = document
* entry 3..3
* entry[0].type = #Patient
* entry[0].type only Reference(SVC-Patient-Updated)
* entry[1].type only Reference(SVC-Composition-Updated)
* entry[2].type only Rerefence(SVC-Provenance-Digital-Updated)

Profile:        SVC-Bundle-Updated
Parent:         SVC-Bundle
Id:             svc-bundle-updated
Title:          "Updated SVC Bundle"
Description:    """ 
An Updated SVC Bundle is generated PHA when the PHA transfers content from a Paper SVC in which case it should:
 * generate an Updated SVC Patient 
 * generate an Updated SVC Compostion
"""
* type = document
* entry 3..3
* entry[0].type = #Patient
* entry[0].type only Reference(SVC-Patient-Updated)
* entry[1].type only Reference(SVC-Composition-Updated)
* entry[2].type only Rerefence(SVC-Provenance-Digital-Updated)



Profile:        SVC-Bundle-Ingested
Parent:         SVC-Bundle
Id:             svc-bundle-ingested
Title:          "Ingested SVC Bundle"
Description:    """ 
An Ingested SVC Bundle is generated PHA when the PHA transfers content from a Paper SVC issued by an extenral PHA, in which case it should:
 * generate an Updated SVC Patient 
 * generate an Ingested SVC Compostion
"""
* type = document
* entry 3..3
* entry[0].type = #Patient
* entry[0].type only Reference(SVC-Patient-Ingested)
* entry[1].type only Reference(SVC-Composition-Ingested)
* entry[2].type only Rerefence(SVC-Provenance-Digital-Ingested)
