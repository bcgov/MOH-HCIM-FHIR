Instance: FindCandidates-response-Patient1
InstanceOf: ClientRegistryPatient
Usage: #inline
* identifier[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* identifier[=].value = "9999999990"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#AN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* identifier[=].value = "3FMF9LXL5109WXROQ2"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* identifier[=].assigner.display = "VCHA_VGH"
* identifier[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* identifier[=].extension.valueCode = #active
* identifier[=].use = #official
* identifier[=].type = $v2-0203#JHN
* identifier[=].system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SK"
* identifier[=].value = "57874VZMR531EI0Q2H"
* identifier[=].period.start = "2023-01-23T13:58:38-08:00"
* active = true
* name[0].use = #usual
* name[=].family = "Pinchock"
* name[=].given[0] = "Elefteria"
* name[=].given[+] = "Aida"
* name[=].given[+] = "Patxi"
* name[=].period.start = "2023-01-23T13:58:38-08:00"
* name[+].use = #official
* name[=].given[0] = "Zachary"
* name[=].given[+] = "Irune"
* name[=].given[+] = "Adoette"
* name[=].period.start = "2023-01-23T13:58:38-08:00"
* name[+].use = #nickname
* name[=].given = "Keriann"
* name[=].period.start = "2023-01-23T13:58:38-08:00"
* telecom[0].system = #phone
* telecom[=].value = "5614353278"
* telecom[=].use = #mobile
* telecom[=].period.start = "2023-01-23T13:58:38-08:00"
* telecom[+].system = #phone
* telecom[=].value = "4509409511"
* telecom[=].use = #home
* telecom[=].period.start = "2023-01-23T13:58:38-08:00"
* telecom[+].system = #phone
* telecom[=].value = "3524387170"
* telecom[=].use = #work
* telecom[=].period.start = "2023-01-23T13:58:38-08:00"
* telecom[+].system = #email
* telecom[=].value = "Marianne.Huot@cgi.com"
* telecom[=].use = #mobile
* telecom[=].period.start = "2023-01-23T13:58:38-08:00"
* telecom[+].system = #email
* telecom[=].value = "Andoni.Schoninger@cgi.com"
* telecom[=].use = #home
* telecom[=].period.start = "2023-01-23T13:58:38-08:00"
* telecom[+].system = #email
* telecom[=].value = "Kord.Stavrides@cgi.com"
* telecom[=].use = #work
* telecom[=].period.start = "2023-01-23T13:58:38-08:00"
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2023-01-23T13:58:38-08:00"
* birthDate = "1925-05-14"
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2023-01-23T13:58:38-08:00"
* deceasedDateTime = "1927-03-28"
* deceasedDateTime.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedDateTime.extension[=].valuePeriod.start = "2023-01-23T13:58:38-08:00"
* deceasedDateTime.extension[+].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension"
* deceasedDateTime.extension[=].extension[0].url = "deathVerifiedFlag"
* deceasedDateTime.extension[=].extension[=].valueBoolean = false
* deceasedDateTime.extension[=].extension[+].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedDateTime.extension[=].extension[=].valuePeriod.start = "2023-01-23T13:58:38-08:00"
* address[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].type = #physical
* address[=].line = "6140 Sharon lane"
* address[=].city = "Glasgow"
* address[=].state = "BC"
* address[=].country = "CA"
* address[=].period.start = "2023-01-23T13:58:38-08:00"
* address[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* address[=].extension.valueCode = #unknown
* address[=].type = #postal
* address[=].line = "42593 Rue saint-antoine"
* address[=].city = "East broughton"
* address[=].state = "BC"
* address[=].country = "CA"
* address[=].period.start = "2023-01-23T13:58:38-08:00"