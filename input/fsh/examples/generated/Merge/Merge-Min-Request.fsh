Instance: Merge-Min-Request
InstanceOf: Parameters
Usage: #example
* parameter.name = "result-patient"
* parameter.resource.resourceType = "Patient"
* parameter.resource.id = "8cc7cdf9-afd9-416a-9ba8-2981f551b8a1"
* parameter.resource.meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient"
* parameter.resource.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* parameter.resource.extension.valuePeriod.start = "2024-11-28T06:22:01.0974407-08:00"
* parameter.resource.identifier[0].use = #official
* parameter.resource.identifier[=].system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id"
* parameter.resource.identifier[=].value = "MB220FXR155686125TUN"
* parameter.resource.identifier[+].use = #old
* parameter.resource.identifier[=].system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id"
* parameter.resource.identifier[=].value = "Q22TG5814EVZTNPGUII5"