//Alias: $bc-oo-codes = http://hlth.gov.bc.ca/fhir/client/bc-oo-codes

Instance: Merge-Response
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "outcome"
* parameter[=].resource.resourceType = "OperationOutcome"
* parameter[=].resource.issue.severity = #information
* parameter[=].resource.issue.code = #business-rule
* parameter[=].resource.issue.details = $bc-oo-codes#BCHCIM.PM.0.0008
* parameter[=].resource.issue.details.text = "The Person Merge request has completed successfully."
* parameter[+].name = "result"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* parameter[=].resource.identifier.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* parameter[=].resource.identifier.extension.valueCode = #active
* parameter[=].resource.identifier.use = #official
* parameter[=].resource.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vpp-cer-source-patient-id"
* parameter[=].resource.identifier.value = "72W771J7WC20CUUAPE92"
* parameter[=].resource.identifier.period.start = "2024-12-11T09:01:59-08:00"
* parameter[=].resource.identifier.assigner.display = "VPP Cerner"