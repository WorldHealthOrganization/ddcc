Profile:        DDCCOrganization
Parent:         Organization
Id:             DDCCOrganization
Title:          "DDCC Organization"
Description:    """ 
Abstraction for a DDCC Organization. There should be a DDCC Organization associated 
to each public health authortiy (PHA) in the [WHO Public Key 
Directory](actors.html#who-pkd)
"""
* name 1.. MS


Profile:      DDCCOrganizationIdentifier
Parent:       Identifier
Id:           DDCCOrganizationIdentifier
Title:        "DDCC OrganizationIdentifier"
Description:  "Identifier for Orgnaization requiring system and at least one of use and value"
//* use 1..1 MS
//* use = #official
* system 1..1 MS 
* value 1..1 MS
* assigner MS
* assigner only Reference(DDCCOrganization)
 





