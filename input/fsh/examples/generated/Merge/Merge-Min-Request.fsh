Instance: Merge-Min-Request
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "target-patient"
* parameter[=].valueReference = Reference(Patient/449a2449-4115-43b1-898c-41824b7a9486)
* parameter[=].valueReference.identifier.use = #official
* parameter[=].valueReference.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vpp-cer-source-patient-id"
* parameter[=].valueReference.identifier.value = "72W771J7WC20CUUAPE92"
* parameter[+].name = "source-patient"
* parameter[=].valueReference = Reference(Patient/a2c95a23-b7ad-4bf1-b026-f9823e2d0eca)
* parameter[=].valueReference.identifier.use = #official
* parameter[=].valueReference.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vpp-cer-source-patient-id"
* parameter[=].valueReference.identifier.value = "SIR366V4142XX8BR614N"
* parameter[+].name = "result-patient"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.id = "449a2449-4115-43b1-898c-41824b7a9486"
* parameter[=].resource.meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient"
* parameter[=].resource.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* parameter[=].resource.extension.valuePeriod.start = "2024-12-11T09:01:59.3890729-08:00"
* parameter[=].resource.link.other.reference = "Patient/a2c95a23-b7ad-4bf1-b026-f9823e2d0eca"
* parameter[=].resource.link.type = #replaces