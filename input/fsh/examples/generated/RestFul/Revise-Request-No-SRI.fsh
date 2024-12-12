Instance: Revise-Request-No-SRI
InstanceOf: Patient
Usage: #example
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