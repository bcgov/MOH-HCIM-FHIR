Instance: COMP-Distribution-Notification
InstanceOf: Bundle
Usage: #example
* entry[0].fullUrl = "urn:uuid:0c19a592-9835-4039-a1f7-a9bcc050671f"
* entry[=].resource = Inline-Instance-for-COMP-Distribution
* entry[+].fullUrl = "https://hd4.hcim.ehealth.gov.bc.ca/Patient/PHNHere"
* entry[=].resource = COMPPatient
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:36acce9c-9a0f-40ae-99e0-3ab7f4e7613f"
* link.relation = "self"
* link.url = "urn:uuid:0c19a592-9835-4039-a1f7-a9bcc050671f"
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"
* timestamp = "2025-10-10T13:19:55.2838297-07:00"
* type = #collection

Instance: Inline-Instance-for-COMP-Distribution
InstanceOf: Parameters
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription"
* parameter[0].name = "messageId"
* parameter[=].valueString = "0c19a592-9835-4039-a1f7-a9bcc050671f"
* parameter[+].name = "messageDateTime"
* parameter[=].valueDateTime = "2025-10-10T13:17:47-07:00"
* parameter[+].name = "eventType"
* parameter[=].valueCodeableConcept.coding.system = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events"
* parameter[=].valueCodeableConcept.coding.code = #COMP
//* parameter[=].valueCodeableConcept.coding.display = "Composite View"

Instance: COMPPatient
InstanceOf: Patient
Usage: #inline
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2025-10-10T13:03:31-07:00"
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2025-10-10T13:03:31-07:00"
* active = true
* address[0].city = "Holberg"
* address[=].country = "CA"
* address[=].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #invalid
* address[=].line[0] = "7992 Wentworth Autoroute"
* address[=].line[+] = "Suite 6161"
* address[=].line[+] = "PO Box 3681"
* address[=].period.start = "2025-10-10T13:04:31-07:00"
* address[=].postalCode = "V3R 0T2"
* address[=].state = "BC"
* address[=].type = #physical
* address[+].city = "Winter Harbour"
* address[=].country = "CA"
* address[=].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #invalid
* address[=].line[0] = "5870 Silliman Grove"
* address[=].line[+] = "Rural Route 3233"
* address[=].line[+] = "PO Box 1510"
* address[=].period.start = "2025-10-10T13:04:31-07:00"
* address[=].postalCode = "V8N 1B7"
* address[=].state = "BC"
* address[=].type = #postal
* birthDate = "2006-06-05"
* gender = #male
* identifier.assigner.display = "MOH Client Registry - MOH_CRS"
* identifier.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier.extension.valueCode = #active
* identifier.period.start = "2025-10-10T13:03:31-07:00"
* identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier.use = #official
* identifier.value = "PHNHere"
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* name[0].family = "Hui"
* name[=].given[0] = "Preston"
* name[=].given[+] = "Wilfredo"
* name[=].given[+] = "Ward"
* name[=].period.start = "2025-10-10T13:03:31-07:00"
* name[=].use = #usual
* name[+].given = "Nicolas"
* name[=].period.start = "2025-10-10T13:03:31-07:00"
* name[=].use = #nickname
* telecom[0].period.start = "2025-10-10T13:03:31-07:00"
* telecom[=].system = #phone
* telecom[=].use = #mobile
* telecom[=].value = "644-569-9236"
* telecom[+].period.start = "2025-10-10T13:03:31-07:00"
* telecom[=].system = #phone
* telecom[=].use = #home
* telecom[=].value = "886-839-9045"
* telecom[+].period.start = "2025-10-10T13:03:31-07:00"
* telecom[=].system = #phone
* telecom[=].use = #work
* telecom[=].value = "875-281-5886"
* telecom[+].period.start = "2025-10-10T13:03:31-07:00"
* telecom[=].system = #email
* telecom[=].use = #mobile
* telecom[=].value = "Wilfredo5205@Grove.com"
* telecom[+].period.start = "2025-10-10T13:03:31-07:00"
* telecom[=].system = #email
* telecom[=].use = #home
* telecom[=].value = "Hui6193@Grove.com"
* telecom[+].period.start = "2025-10-10T13:03:31-07:00"
* telecom[=].system = #email
* telecom[=].use = #work
* telecom[=].value = "Preston6559@Grove.com"