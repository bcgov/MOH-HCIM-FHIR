Instance: Merge-Min-Request
InstanceOf: Parameters
Description: "Example of $Merge request with minimum data."
Usage: #example
* parameter[0].name = "target-patient"
* parameter[=].valueReference = Reference(Patient/89f6e0c5-b3e8-4ebe-9886-34f3a1b932b8)
* parameter[=].valueReference.identifier.use = #official
* parameter[=].valueReference.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id"
* parameter[=].valueReference.identifier.value = "U6UQG3285Z5NG23110E2"
* parameter[+].name = "source-patient"
* parameter[=].valueReference = Reference(Patient/95aef996-3bf9-4ccf-8584-96299735689a)
* parameter[=].valueReference.identifier.use = #official
* parameter[=].valueReference.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id"
* parameter[=].valueReference.identifier.value = "YR4E0OMAP2364ZX58222"
* parameter[+].name = "source-patient-identifier"
* parameter[=].valueIdentifier.use = #official
* parameter[=].valueIdentifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id"
* parameter[=].valueIdentifier.value = "9ICFAEF1A716U78HKR51"
* parameter[+].name = "result-patient"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.id = "89f6e0c5-b3e8-4ebe-9886-34f3a1b932b8"
* parameter[=].resource.meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient"
* parameter[=].resource.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* parameter[=].resource.extension.valuePeriod.start = "2025-01-16T12:54:54.7488769-08:00"
* parameter[=].resource.link.other.reference = "Patient/95aef996-3bf9-4ccf-8584-96299735689a"
* parameter[=].resource.link.type = #replaces