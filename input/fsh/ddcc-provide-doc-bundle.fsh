Profile:        DDCCSubmissionSet
Parent:         http://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet
Title:          "DDCC Submission Set"
Description:    """
DDCC Submission Set for ITI-65
"""

* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(DDCCPatient)
* entry.item only Reference(DDCCDocumentReference or DDCCFolder)

Profile:        DDCCProvideDocumentBundle
Parent:         http://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle
Title:          "DDCC Provide Document Bundle"
Description:    """
DDCC Provide Document Bundle for ITI-65
"""

* entry[SubmissionSet].resource only DDCCSubmissionSet
* entry[DocumentRefs].resource only DDCCDocumentReference
* entry[Folders].resource only DDCCFolder
* entry[Patient].resource only DDCCPatient
