// Instance: HCIMCapabilityStatementClient
// InstanceOf: CapabilityStatement
// Usage: #definition
// * id = "bc-hcim-capability-statement-client"
// * version = "1.0"
// * name = "HCIMClientCapabilityStatement"
// * title = "BC HCIM Client Capability Statement"
// * status = #draft
// * date = "2021-11-18"
// * publisher = "BC Ministry of Health"
// * description = "This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client. I.e. sending notifications - FUTURE work."
// * kind = #capability
// * software.name = "BC HCIM FHIR Implementation"
// * fhirVersion = #4.0.1
// * format[0] = #json
// * rest[0].mode = #client

Alias: RestSec  = http://terminology.hl7.org/CodeSystem/restful-security-service
Alias: BCBundle = http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle

Instance: NotificationsClient-OperationsOnly
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Notifications Distributor (Client) — Operations Only"
Description: "PCR as a client posts notifications/distributions via a patient-level operation."
* id = "bc-hcim-capability-statement-client"
* version = "1.0"
* name = "HCIMClientCapabilityStatement"
* title = "BC HCIM Client Capability Statement"
* status = #active
* date = "2025-10-10"
* publisher = "BC Ministry of Health"
* description = "PCR as a client posts notifications/distributions via a patient-level operation. This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client, sending distributions (notifications)."
* kind = #capability
* software.name = "BC HCIM FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #json

* rest[0].mode = #client
* rest[0].security.service[0].coding[0].system = RestSec
* rest[0].security.service[0].coding[0].code = #OAuth

* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(ClientRegistryPatient)
* rest[0].resource[0].supportedProfile[0] = Canonical(SubscriptionNotificationBundle)

* rest[0].resource[0].operation[0].name = "PatientNotification"
* rest[0].resource[0].operation[0].definition = Canonical(PatientNotification)
* rest[0].resource[0].operation[0].documentation = "POST [base]/Patient/$PatientNotification with a bc-subscription-notification-bundle."
