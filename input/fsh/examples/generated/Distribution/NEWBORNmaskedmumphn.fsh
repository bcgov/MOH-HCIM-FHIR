Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: NEWBORN-Distribution-Notification-Masked-MumPHN
InstanceOf: Bundle
Usage: #example
* entry[0].fullUrl = "urn:uuid:bb122554-dd6b-4c3a-a162-c80c388a637b"
* entry[=].resource = Inline-Instance-for-NEWBORN-Distribution-Masked-MumPHN
* entry[+].fullUrl = "https://hd4.hcim.ehealth.gov.bc.ca/Patient/PHNHere"
* entry[=].resource = NEWBORNPatient
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7305f123-d3c1-45be-8417-f5a13bb767fc"
* link.relation = "self"
* link.url = "urn:uuid:bb122554-dd6b-4c3a-a162-c80c388a637b"
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"
* timestamp = "2025-10-10T08:03:00.3381027-07:00"
* type = #collection

Instance: Inline-Instance-for-NEWBORN-Distribution-Masked-MumPHN
InstanceOf: Parameters
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription"
* parameter[0].name = "messageId"
* parameter[=].valueString = "bb122554-dd6b-4c3a-a162-c80c388a637b"
* parameter[+].name = "messageDateTime"
* parameter[=].valueDateTime = "2025-10-10T07:50:31-07:00"
* parameter[+].name = "eventType"
* parameter[=].valueCodeableConcept.coding.system = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events"
* parameter[=].valueCodeableConcept.coding.code = #NEWBORN
//* parameter[=].valueCodeableConcept.coding.display = "Newborn"

Instance: NEWBORNPatient
InstanceOf: Patient
Usage: #inline
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2025-10-10T07:50:31-07:00"
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2025-10-10T07:50:31-07:00"
* active = true
* address[0].city = "View Royal"
* address[=].country = "CA"
* address[=].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].line[0] = "5049 Wright Close"
* address[=].line[+] = "Suite 8953"
* address[=].line[+] = "PO Box 8801"
* address[=].period.start = "2025-10-10T07:50:31-07:00"
* address[=].postalCode = "V7G 1J7"
* address[=].state = "BC"
* address[=].type = #physical
* address[+].city = "Winter Harbour"
* address[=].country = "CA"
* address[=].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].line[0] = "6346 Stanley Stravenue"
* address[=].line[+] = "Apt 8782"
* address[=].line[+] = "PO Box 8813"
* address[=].period.start = "2025-10-10T07:50:31-07:00"
* address[=].postalCode = "V1M 2E1"
* address[=].state = "BC"
* address[=].type = #postal
* birthDate = "2025-10-10"
* contained.active = true
* contained.identifier.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* contained.identifier.value.extension.valueCode = #masked
* contained.identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* contained.identifier.use = #official
* contained.relationship = $v3-RoleCode#NMTH
* contained.resourceType = "RelatedPerson"
* gender = #unknown
* identifier.assigner.display = "MOH Client Registry - MOH_CRS"
* identifier.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier.extension.valueCode = #active
* identifier.period.start = "2025-10-10T07:50:31-07:00"
* identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier.use = #official
* identifier.value = "PHNHere"
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* name.family = "Wilmore"
* name.given = "Baby"
* name.period.start = "2025-10-10T07:50:31-07:00"
* name.use = #usual
* telecom[0].period.start = "2025-10-10T07:50:31-07:00"
* telecom[=].system = #phone
* telecom[=].use = #mobile
* telecom[=].value = "2197208370"
* telecom[+].period.start = "2025-10-10T07:50:31-07:00"
* telecom[=].system = #phone
* telecom[=].use = #home
* telecom[=].value = "5399043795"
* telecom[+].period.start = "2025-10-10T07:50:31-07:00"
* telecom[=].system = #phone
* telecom[=].use = #work
* telecom[=].value = "6513957301"
* telecom[+].period.start = "2025-10-10T07:50:31-07:00"
* telecom[=].system = #email
* telecom[=].use = #mobile
* telecom[=].value = "Houston7830@Stravenue.com"
* telecom[+].period.start = "2025-10-10T07:50:31-07:00"
* telecom[=].system = #email
* telecom[=].use = #home
* telecom[=].value = "Wilmore569@Stravenue.com"
* telecom[+].period.start = "2025-10-10T07:50:31-07:00"
* telecom[=].system = #email
* telecom[=].use = #work
* telecom[=].value = "Errol9948@Stravenue.com"