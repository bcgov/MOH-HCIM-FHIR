Instance: GetDemographics-Request-By-SSRI
InstanceOf: Bundle
Description: "Example of $GetDemographics request by SSRI."
Usage: #example
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-get-demographics-request-bundle"
* type = #collection
* timestamp = "2024-11-28T06:27:01.2143422-08:00"
* link.relation = "self"
* link.url = "urn:uuid:86c5ee37-6bf1-4cb2-a6b3-400dfc876507"
* entry[0].fullUrl = "urn:uuid:f38e3ec9-9b39-4d2a-b8e5-0471ae234dda"
* entry[=].resource = GetDemographics-Request-By-SSRI-Parameters
* entry[+].fullUrl = "urn:uuid:8ef35b62-3ed8-4caa-8bed-c0cff5b72738"
* entry[=].resource = GetDemographics-Request-By-SSRI-Patient

Instance: GetDemographics-Request-By-SSRI-Parameters
InstanceOf: Parameters
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-in"
* parameter[0].name = "messageId"
* parameter[=].valueString = "76648f54-2dd3-40f4-b6bd-5c39386061b2"
* parameter[+].name = "history"
* parameter[=].valueBoolean = false
* parameter[+].name = "identifiersOnly"
* parameter[=].valueBoolean = false

Instance: GetDemographics-Request-By-SSRI-Patient
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension.valuePeriod.start = "2024-11-28T06:22:01.0974407-08:00"
* identifier.use = #official
* identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id"
* identifier.value = "MB220FXR155686125TUN"