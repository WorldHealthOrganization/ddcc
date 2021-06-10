Profile:        DDCCDigitalTwin
Parent:         http://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder
Title:          "DDCC Digital Twin"
Description:    """
DDCC Digital Twin of the Paper Certificate
"""

* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(DDCCPatient)
* entry.item only Reference(DDCCDocumentReference)
