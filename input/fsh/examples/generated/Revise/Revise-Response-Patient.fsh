Instance: Revise-Response-Patient
InstanceOf: ClientRegistryPatient
Usage: #inline
* identifier[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* identifier[=].value = "9999999999"
* identifier[=].period.start = "2023-01-23T14:02:15-08:00"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#AN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* identifier[=].value = "2B6F8GN410H1T27NPE"
* identifier[=].period.start = "2023-01-23T14:02:15-08:00"
* identifier[=].assigner.display = "VPP_CER"
* active = true