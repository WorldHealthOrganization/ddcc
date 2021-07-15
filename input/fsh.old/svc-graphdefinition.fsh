
Profile:	SHF_GraphDefinition
Parent:         GraphDefinition
Id:             shf-graphdefinition
Title:          "SHF Graph Defintion"
Description:    """ 
Abstract Graph Definition for Smart Health Folder to describe information retrieved under a [Retrieve Smart Health Folder](transactions.html#retrieve-health-folder) transaction.
"""
* ^publisher = "World Health Organization (WHO)"
* . ^short = "SHF Composition"
* ^abstract = true
* start = #Composition


Instance:       SVC_Graph
InstanceOf:     SHF_GraphDefinition
Title:          "GraphDefintion for retrieving a Smart Vaccination Certificate from the Smart Health Folder"
Usage:          #definition
* id = "svc-graph"
* name = "GraphDefintion for retrieving a Smart Vaccination Certificate from the Smart Health Folder"
* status = #draft
* experimental = true
* date = "2021-05-06"
* description = """
SHF Graph Definition for retrieving Smart Vaccination Certificates under a [Retrieve Smart Health Folder](transactions.html#retrieve-health-folder) transaction.
"""
* link[+].path = "SHF_Composition.section[Section_Health_Certificates].entry[SVC]"
* link[=].description = "SVC Composition Entry"
* link[=].target[+].type = #Immunization



