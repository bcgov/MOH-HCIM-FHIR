Instance: FindNewbornByMumsPHN-Response-Patient3
InstanceOf: ClientRegistryPatient
Usage: #inline
* id = "7668592e-2316-4ea8-bbab-bb601239e71e"
* identifier[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier[=].value = "9999999999"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* identifier[=].assigner.display = "MOH Client Registry - MOH_CRS"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#AN
* identifier[=].system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-mt-source-patient-id"
* identifier[=].value = "9ZJVK0Z8Y4QS232"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* identifier[=].assigner.display = "FHA Meditech - Fraser Valley - FHA_MT"
* active = true
* name.use = #usual
* name.family = "Shawley"
* name.given = "Dietrich"
* name.period.start = "2023-01-23T13:58:38-08:00"
* telecom.system = #phone
* telecom.value = "3142487326"
* telecom.use = #home
* telecom.period.start = "2023-01-23T13:58:38-08:00"
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2023-01-23T13:58:38-08:00"
* birthDate = "2022-12-17"
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
* link[0].other = Reference(urn:uuid:13cb4c36-102d-49c7-9f2e-f652ece39ecf)
* link[=].type = #seealso
* link[+].other = Reference(urn:uuid:613f5d13-9753-4c0c-89f9-f2bce0622721)
* link[=].type = #seealso
