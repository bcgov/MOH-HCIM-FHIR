Instance: GetDemographics-Response-Patient
InstanceOf: ClientRegistryPatient
Usage: #inline
* identifier[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id"
* identifier[=].value = "9999999999"
* identifier[=].assigner.display = "MOH Client Registry - MOH_CRS"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#AN
* identifier[=].system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-mt-source-patient-id"
* identifier[=].value = "8H1496LN8U1F17JP0H2VV"
* identifier[=].period.start = "2023-01-23T14:00:53-08:00"
* identifier[=].assigner.display = "FHA Meditech - Fraser Valley - FHA_MT"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
//* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-ab-patient-healthcare-id"
* identifier[=].value = "4N2H10HY59EQ210Y5M098X0EPDM08I7KX38583O"
* identifier[=].period.start = "2023-01-23T14:00:53-08:00"
* active = true
* name[0].use = #usual
* name[=].family = "Colpitts"
* name[=].given[0] = "Benedetta"
* name[=].given[+] = "Wuliton"
* name[=].given[+] = "Ararinda"
* name[=].period.start = "2023-01-23T14:00:53-08:00"
* name[+].use = #official
* name[=].given[0] = "Ahanu"
* name[=].given[+] = "Bardo"
* name[=].given[+] = "Natalene"
* name[=].period.start = "2023-01-23T14:00:53-08:00"
* name[+].use = #nickname
* name[=].given = "Athanasia"
* name[=].period.start = "2023-01-23T14:00:53-08:00"
* telecom[0].system = #phone
* telecom[=].value = "2045588814"
* telecom[=].use = #mobile
* telecom[=].period.start = "2023-01-23T14:00:53-08:00"
* telecom[+].system = #phone
* telecom[=].value = "7705666584"
* telecom[=].use = #home
* telecom[=].period.start = "2023-01-23T14:00:53-08:00"
* telecom[+].system = #phone
* telecom[=].value = "8156366902"
* telecom[=].use = #work
* telecom[=].period.start = "2023-01-23T14:00:53-08:00"
* telecom[+].system = #email
* telecom[=].value = "Agapios.Nesmith@cgi.com"
* telecom[=].use = #mobile
* telecom[=].period.start = "2023-01-23T14:00:53-08:00"
* telecom[+].system = #email
* telecom[=].value = "Editta.Panchik@cgi.com"
* telecom[=].use = #home
* telecom[=].period.start = "2023-01-23T14:00:53-08:00"
* telecom[+].system = #email
* telecom[=].value = "Weayaya.Sharber@cgi.com"
* telecom[=].use = #work
* telecom[=].period.start = "2023-01-23T14:00:53-08:00"
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2023-01-23T14:00:53-08:00"
* birthDate = "2005-05-24"
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2023-01-23T14:00:53-08:00"
* deceasedDateTime = "2006-08-28"
* deceasedDateTime.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedDateTime.extension[=].valuePeriod.start = "2023-01-23T14:00:53-08:00"
* deceasedDateTime.extension[+].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension"
* deceasedDateTime.extension[=].extension[0].url = "deathVerifiedFlag"
* deceasedDateTime.extension[=].extension[=].valueBoolean = false
* deceasedDateTime.extension[=].extension[+].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedDateTime.extension[=].extension[=].valuePeriod.start = "2023-01-23T14:00:53-08:00"
* address[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].type = #physical
* address[=].line = "30729 Middleville road"
* address[=].city = "Signal mountain"
* address[=].state = "BC"
* address[=].country = "CA"
* address[=].period.start = "2023-01-23T14:00:53-08:00"
* address[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].type = #postal
* address[=].line = "47625 Colony street"
* address[=].city = "Benton township"
* address[=].state = "BC"
* address[=].country = "CA"
* address[=].period.start = "2023-01-23T14:00:53-08:00"