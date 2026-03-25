Instance: NEW-Distribution-Notification
InstanceOf: Bundle
Usage: #example
* entry[0].fullUrl = "urn:uuid:356859ba-983b-40d6-a03c-5a99f05c96b5"
* entry[=].resource = Inline-Instance-for-NEW-Distribution
* entry[+].fullUrl = "https://hd4.hcim.ehealth.gov.bc.ca/Patient/PHNHere"
* entry[=].resource = NEWPatient
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6eaf44d4-4bb6-4518-9daa-ab4de8a397a8"
* link.relation = "self"
* link.url = "urn:uuid:356859ba-983b-40d6-a03c-5a99f05c96b5"
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"
* timestamp = "2025-10-10T14:21:13.2932894-07:00"
* type = #collection

Instance: Inline-Instance-for-NEW-Distribution
InstanceOf: Parameters
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription"
* parameter[0].name = "messageId"
* parameter[=].valueString = "356859ba-983b-40d6-a03c-5a99f05c96b5"
* parameter[+].name = "messageDateTime"
* parameter[=].valueDateTime = "2025-10-10T15:06:59-07:00"
* parameter[+].name = "eventType"
* parameter[=].valueCodeableConcept.coding.system = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events"
* parameter[=].valueCodeableConcept.coding.code = #NEW
//* parameter[=].valueCodeableConcept.coding.display = "New"

Instance: NEWPatient
InstanceOf: Patient
Usage: #inline
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2025-10-10T15:06:59-07:00"
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2025-10-10T15:06:59-07:00"
* active = true
* address.city = "Pender Harbour"
* address.country = "CA"
* address.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address.extension.valueCode = #unknown
* address.line = "4852 Catalina Expressway"
* address.period.start = "2025-10-10T15:06:59-07:00"
* address.postalCode = "V3R 1L4"
* address.state = "BC"
* address.type = #physical
* birthDate = "2004-03-28"
* gender = #male
* identifier.assigner.display = "MOH Client Registry - MOH_CRS"
* identifier.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier.extension.valueCode = #active
* identifier.period.start = "2025-10-10T15:06:59-07:00"
* identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier.use = #official
* identifier.value = "PHNHere"
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* name.family = "Kleiber"
* name.given = "Nigel"
* name.period.start = "2025-10-10T15:06:59-07:00"
* name.use = #usual
* telecom[0].period.start = "2025-10-10T15:06:59-07:00"
* telecom[=].system = #phone
* telecom[=].use = #home
* telecom[=].value = "305-501-8219"
* telecom[+].period.start = "2025-10-10T15:06:59-07:00"
* telecom[=].system = #email
* telecom[=].use = #home
* telecom[=].value = "Kleiber9140@Lawn.com"