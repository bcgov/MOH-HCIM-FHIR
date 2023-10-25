Instance: FindNewbornByMumsPHN-Response-Patient2
InstanceOf: ClientRegistryPatient
Usage: #inline
* id = "2e5169f0-7a01-49cc-8006-39d4c2bdc0ee"
* identifier[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier[=].value = "9999999992"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* identifier[=].assigner.display = "MOH Client Registry - MOH_CRS"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#AN
* identifier[=].system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-mt-source-patient-id"
* identifier[=].value = "PC88F0F67VI3AJMI"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* identifier[=].assigner.display = "FHA Meditech - Fraser Valley - FHA_MT"
* active = true
* name.use = #usual
* name.family = "Shawley"
* name.given = "Baby Girl"
* name.period.start = "2023-01-23T13:58:38-08:00"
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2023-01-23T13:58:38-08:00"
* birthDate = "2023-01-22"
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2023-01-23T13:58:38-08:00"
* address[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].type = #physical
* address[=].line = "13719 Froe street"
* address[=].city = "Aylesford"
* address[=].state = "BC"
* address[=].country = "CA"
* address[=].period.start = "2023-01-23T13:58:38-08:00"
* address[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].type = #postal
* address[=].line = "24989 School street"
* address[=].city = "Thermal"
* address[=].state = "BC"
* address[=].country = "CA"
* address[=].period.start = "2023-01-23T13:58:38-08:00"
