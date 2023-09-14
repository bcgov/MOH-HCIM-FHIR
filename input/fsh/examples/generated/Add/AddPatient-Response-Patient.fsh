Instance: AddPatient-Response-Patient
InstanceOf: ClientRegistryPatient
Usage: #inline
* id = "da3c9784-deb8-4d70-96ec-32d4129b408d"
* identifier[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* identifier[=].value = "9999999999"
* identifier[=].period.start = "2023-01-23T13:46:27-08:00"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#AN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* identifier[=].value = "9999999999"
* identifier[=].period.start = "2023-01-23T13:46:27-08:00"
* identifier[=].assigner.display = "PHARM_RX"
* active = true
