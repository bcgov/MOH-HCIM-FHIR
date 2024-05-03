Instance: AddNewbornByMumsPHN-Request-RelatedPerson
InstanceOf: RelatedPerson
Usage: #inline
* identifier.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier.extension.valueCode = #active
* identifier.use = #official
* identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier.value = "9253484802"
* identifier.period.start = "2023-01-23T13:46:27-08:00"
* patient = Reference(urn:uuid:66a90476-06d2-4e62-aba7-32d0566ecf41)
* relationship = $v3-RoleCode#NMTH