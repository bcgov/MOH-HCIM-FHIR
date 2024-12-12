//Alias: $bc-oo-codes = http://hlth.gov.bc.ca/fhir/client/bc-oo-codes

Instance: GetDemographics-Response-Masked
InstanceOf: Bundle
Description: "Example of $GetDemographics masked response."
Usage: #example
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-search-response-bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:be0ea88b-cb92-46a5-8ae8-5aaa943d99c0"
* type = #searchset
* timestamp = "2024-11-28T06:27:01.3305055-08:00"
* total = 1
* link.relation = "canonical"
* link.url = "https://localhost/$GetDemographics"
* entry[0].fullUrl = "urn:uuid:a5aadea1-11ad-4428-a7d3-88a8e284c261"
* entry[=].resource = GetDemographics-Response-Masked-Parameters
* entry[+].resource = GetDemographics-Response-Masked-Outcome
* entry[=].search.mode = #outcome
* entry[+].resource = GetDemographics-Response-Masked-Patient

Instance: GetDemographics-Response-Masked-Parameters
InstanceOf: Parameters
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-out"
* parameter[0].name = "messageId"
* parameter[=].valueString = "76648f54-2dd3-40f4-b6bd-5c39386061b2"
* parameter[+].name = "history"
* parameter[=].valueBoolean = false
* parameter[+].name = "identifiersOnly"
* parameter[=].valueBoolean = false

Instance: GetDemographics-Response-Masked-Outcome
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #information
* issue.code = #business-rule
* issue.details = $bc-oo-codes#BCHCIM.GD.0.0013
* issue.details.text = "The get demographics query completed successfully."

Instance: GetDemographics-Response-Masked-Patient
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name[=].extension.valueCode = #masked
* name[=].use = #usual
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name[=].extension.valueCode = #masked
* name[=].use = #nickname
* telecom[0].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom[=].extension.valueCode = #masked
* telecom[=].system = #phone
* telecom[=].use = #mobile
* telecom[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom[=].extension.valueCode = #masked
* telecom[=].system = #phone
* telecom[=].use = #home
* telecom[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom[=].extension.valueCode = #masked
* telecom[=].system = #phone
* telecom[=].use = #work
* telecom[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom[=].extension.valueCode = #masked
* telecom[=].system = #email
* telecom[=].use = #mobile
* telecom[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom[=].extension.valueCode = #masked
* telecom[=].system = #email
* telecom[=].use = #home
* telecom[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom[=].extension.valueCode = #masked
* telecom[=].system = #email
* telecom[=].use = #work
* gender.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* gender.extension.valueCode = #masked
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* birthDate.extension.valueCode = #masked
* address[0].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address[=].extension.valueCode = #masked
* address[=].type = #physical
* address[+].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address[=].extension.valueCode = #masked
* address[=].type = #postal