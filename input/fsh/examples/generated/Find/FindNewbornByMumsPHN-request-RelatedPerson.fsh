Instance: FindBabiesByMumsPHN-RelatedPerson
InstanceOf: RelatedPerson
Usage: #inline
* identifier.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier.extension.valueCode = #active
* identifier.use = #official
//* identifier.type = $v2-0203#JHN
* identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier.value = "9999999999"
* identifier.assigner.display = "MOH Client Registry - MOH_CRS"
* patient = Reference(e418862f-1759-42de-98a9-00433a779e9b)
* relationship = $v3-RoleCode#NMTH