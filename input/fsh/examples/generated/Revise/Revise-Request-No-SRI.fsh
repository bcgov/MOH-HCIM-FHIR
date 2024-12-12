Instance: Revise-Request-No-SRI
InstanceOf: Bundle
Description: "Example of $Revise request with no SRI."
Usage: #example
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-request-bundle"
* type = #collection
* timestamp = "2024-11-28T06:27:01.3453761-08:00"
* link.relation = "self"
* link.url = "urn:uuid:378954cb-6473-4399-b99c-1bd2988950ae"
* entry[0].fullUrl = "urn:uuid:feece490-6a8b-48c3-bd35-6a16008c19ef"
* entry[=].resource = Revise-Request-No-SRI-Parameters
* entry[+].fullUrl = "urn:uuid:23d2b2f0-7724-4959-9007-302b26499633"
* entry[=].resource = Revise-Request-No-SRI-Patient

Instance: Revise-Request-No-SRI-Parameters
InstanceOf: Parameters
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-in"
* parameter[0].name = "messageId"
* parameter[=].valueString = "76648f54-2dd3-40f4-b6bd-5c39386061b2"
* parameter[+].name = "sender"
* parameter[=].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"
* parameter[=].valueIdentifier.value = "FHA"

Instance: Revise-Request-No-SRI-Patient
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension.valuePeriod.start = "2024-11-28T06:22:01.0974407-08:00"
* identifier.use = #official
* identifier.system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-msp-eligibility-id"
* identifier.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* identifier.value.extension.valueCode = #unknown
* name[0].use = #usual
* name[=].family = "Tabatabai"
* name[=].given[0] = "Proinnsias"
* name[=].given[+] = "Edmon"
* name[=].given[+] = "Beartlaidh"
* name[+].use = #nickname
* name[=].given = "Victor"
* telecom[0].system = #phone
* telecom[=].value = "3104702526"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "3366898069"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "2544265519"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "Constance.Besarra@cgi.com"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "Hank.Avey@cgi.com"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "Nerissa.Friede@cgi.com"
* telecom[=].use = #work
* gender = #female
* birthDate = "1996-02-18"
* address[0].type = #physical
* address[=].line = "7562 Railroad street"
* address[=].city = "Calistoga"
* address[=].state = "BC"
* address[=].postalCode = "V5QOX7"
* address[=].country = "CA"
* address[+].type = #postal
* address[=].line = "27523 Oak street"
* address[=].city = "Topmost"
* address[=].state = "BC"
* address[=].postalCode = "V4IUH0"
* address[=].country = "CA"