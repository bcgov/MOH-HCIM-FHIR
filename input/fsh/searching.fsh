Instance: FindCandidates
InstanceOf: Parameters

* parameter[0].name = "address"
* parameter[0].valueAddress.type = #postal
* parameter[0].valueAddress.line[0] = "123 Any St"
* parameter[0].valueAddress.line[1] = "line 2"
* parameter[0].valueAddress.line[2] = "line 3"
* parameter[0].valueAddress.line[3] = "line 4"
* parameter[0].valueAddress.city = "Victoria"
* parameter[0].valueAddress.state = "BC"
* parameter[0].valueAddress.country = "CA"
* parameter[0].valueAddress.postalCode = "V1V1V1"
* parameter[1].name = "gender"
* parameter[1].valueCode = #male
* parameter[2].name = "birthDate"
* parameter[2].valueDate = 1959-12-30
* parameter[3].name = "deceased-date"
* parameter[3].valueDateTime = 2005-05-05
* parameter[4].name = "identifier"
* parameter[4].valueIdentifier.system = "http://hl7.org/fhir/sid/bc-phn"
* parameter[4].valueIdentifier.value = "12345892"
* parameter[5].name = "name"
* parameter[5].valueHumanName.given = "Barney"
* parameter[5].valueHumanName.family = "Purple"
* parameter[5].valueHumanName.use = #official
* parameter[6].name = "telecom"
* parameter[6].valueContactPoint.system = #phone
* parameter[6].valueContactPoint.value = "1234567890"
* parameter[6].valueContactPoint.use = #home
* parameter[7].name = "motherPHN"
* parameter[7].valueIdentifier.system = "http://hl7.org/fhir/sid/bc-phn"
* parameter[7].valueIdentifier.value = "9xxxxxxxx"
* parameter[8].name = "requester"
* parameter[8].valueIdentifier.system = "http://hl7.org/fhir/sid/bc-userId"
* parameter[8].valueIdentifier.value = "you@me.com"

Instance: GetDemographics
InstanceOf: Parameters

* parameter[0].name = "identifier"
* parameter[0].valueIdentifier.system = "http://hl7.org/fhir/sid/bc-phn"
* parameter[0].valueIdentifier.value = "12345892"
* parameter[1].name = "history"
* parameter[1].valueBoolean = true
* parameter[2].name = "requester"
* parameter[2].valueIdentifier.system = "http://hl7.org/fhir/sid/bc-userId"
* parameter[2].valueIdentifier.value = "you@me.com"

Instance: FindCandidatesResponse
InstanceOf: Bundle

* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 3
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* entry[0].resource = FindCandidates
* entry[1].resource = Patient0Response
* entry[1].search.score = 31
* entry[2].resource = Patient1Response
* entry[2].search.score = -53
* entry[3].resource = Patient2Response
* entry[3].search.score = -56

Instance: Patient0Response
InstanceOf: Patient
* address.type = #physical
* address.line = "666 YELLOW BRICK RD"
* address.city = "PRINCE GEORGE"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8W 3P9"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"
* identifier.system = "http://hl7.org/fhir/sid/bc-phn"
* identifier.value = "9999999999"
* name.given = "PURPLE"
* name.family = "BARNEY"
* gender = #male
* birthDate = 1940-06-06

Instance: Patient1Response
InstanceOf: Patient
* address.type = #physical
* address.line = "123 FRONT ST"
* address.city = "VICTORIA"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V6N2W2"
* address[1].type = #postal
* address[1].line = "123 Front St"
* address[1].city = "Victoria"
* address[1].state = "BC"
* address[1].country = "CA"
* address[1].postalCode = "V6N2W2"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505557841"
* identifier.system = "http://hl7.org/fhir/sid/bc-phn"
* identifier.value = "9999999999"
* name.given = "SARAH"
* name.given[1] = "LYNN"
* name.family = "PURPLE"
* gender = #female
* birthDate = 1973-05-18

Instance: Patient2Response
InstanceOf: Patient
* address.type = #postal
* address.line = "PO BOX 5"
* address.city = "CRESTON"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V0B 1G0"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hl7.org/fhir/sid/bc-phn"
* identifier.value = "9999999999"
* name.given = "BAILEY"
* name.family = "PURPLE"
* gender = #female
* birthDate = 1985-12-14

Instance: GetDemographicsResponse
InstanceOf: Bundle

* type = #searchset
* timestamp = "2011-09-07T12:18:23.000-07:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3a12f0c-a332-4ec9-94b9-d8539a02df48"
* entry[0].resource = FindCandidates
* entry[1].resource = PatientDemographicsResponse

Instance: PatientDemographicsResponse
InstanceOf: Patient
* address.type = #physical
* address.line = "321 SUNSHINE PL"
* address.line[1] = "NEW LINE 2"
* address.line[2] = "NEW LINE 3"
* address.city = "VANCOUVER"
* address.state = "BC"
* address[1].type = #postal
* address[1].line = "1824 CROSS RD"
* address[1].line[1] = "LINE 2"
* address[1].line[2] = "LINE 3"
* address[1].city = "VANCOUVER"
* address[1].state = "BC"
* address[1].postalCode = "V9L 4H2"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "6048883322"
* identifier.system = "http://hl7.org/fhir/sid/bc-phn"
* identifier.value = "9999999999"
* name.given = "JILLIAN"
* name.given[1] = "DAWN"
* name.given[2] = "THIRD NAME"
* name.family = "COOK-ADAMS"
* gender = #female
* birthDate = 1972-10-16
