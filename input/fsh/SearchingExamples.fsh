Instance: FindCandidates
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[3].name = "address"
* parameter[3].valueAddress.type = #postal
* parameter[3].valueAddress.line[0] = "123 Any St"
* parameter[3].valueAddress.line[1] = "line 2"
* parameter[3].valueAddress.line[2] = "line 3"
* parameter[3].valueAddress.line[3] = "line 4"
* parameter[3].valueAddress.city = "Victoria"
* parameter[3].valueAddress.state = "BC"
* parameter[3].valueAddress.country = "CA"
* parameter[3].valueAddress.postalCode = "V1V1V1"

* parameter[4].name = "gender"
* parameter[4].valueCode = #male

* parameter[5].name = "birthDate"
* parameter[5].valueDate = 1959-12-30

* parameter[6].name = "deceased-date"
* parameter[6].valueDateTime = 2005-05-05

* parameter[7].name = "name"
* parameter[7].valueHumanName.given = "Barney"
* parameter[7].valueHumanName.family = "Purple"
* parameter[7].valueHumanName.use = #official

* parameter[8].name = "telecom"
* parameter[8].valueContactPoint.system = #phone
* parameter[8].valueContactPoint.value = "1234567890"
* parameter[8].valueContactPoint.use = #home

* parameter[9].name = "identifiersOnly"
* parameter[9].valueBoolean = false

Instance: FindCandidates-MomsPHN
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation with mother's PHN"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[3].name = "mothersPHN"
* parameter[3].valueString = "9123123432"

Instance: FindCandidates-SSRI
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation with SSRI identifier"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[3].name = "address"
* parameter[3].valueAddress.type = #postal
* parameter[3].valueAddress.line[0] = "123 Any St"
* parameter[3].valueAddress.line[1] = "line 2"
* parameter[3].valueAddress.line[2] = "line 3"
* parameter[3].valueAddress.line[3] = "line 4"
* parameter[3].valueAddress.city = "Victoria"
* parameter[3].valueAddress.state = "BC"
* parameter[3].valueAddress.country = "CA"
* parameter[3].valueAddress.postalCode = "V1V1V1"

* parameter[4].name = "gender"
* parameter[4].valueCode = #male

* parameter[5].name = "birthDate"
* parameter[5].valueDate = 1959-12-30

* parameter[6].name = "deceased-date"
* parameter[6].valueDateTime = 2005-05-05

* parameter[7].name = "name"
* parameter[7].valueHumanName.given = "Barney"
* parameter[7].valueHumanName.family = "Purple"
* parameter[7].valueHumanName.use = #official

* parameter[8].name = "telecom"
* parameter[8].valueContactPoint.system = #phone
* parameter[8].valueContactPoint.value = "1234567890"
* parameter[8].valueContactPoint.use = #home

* parameter[9].name = "identifier"
* parameter[9].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-ssri"
* parameter[9].valueIdentifier.value = "24234"
* parameter[9].valueIdentifier.assigner.display = "VPP_CER"



Instance: GetDemographics
InstanceOf: BCMetadataParameters
Description: "Example of $GetDemographics operation"
* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "bob@me.com"
* parameter[enterer].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-userid"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[4].name = "identifier"
* parameter[4].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* parameter[4].valueIdentifier.value = "912345892"
* parameter[4].valueIdentifier.type.coding.code = #JHN
* parameter[4].valueIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* parameter[5].name = "history"
* parameter[5].valueBoolean = true


Instance: FindCandidates-ResponseMetadata
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[messageRequestId].name = "messageRequestId"
* parameter[messageRequestId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"


Instance: GetDemographics-ResponseMetadata
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[messageRequestId].name = "messageRequestId"
* parameter[messageRequestId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"


Instance: FindCandidatesResponse
InstanceOf: Bundle
Description: "Example of $FindCandidates response Bundle.  Patient0 has PHN, alternate, SRI and SSRI identifier examples."
* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 4
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[0].resource = FindCandidates-ResponseMetadata
* entry[0].fullUrl = "61061501-9953-4fba-87fe-6ae30e79da33"

* entry[1].resource = FindCandidates
* entry[1].fullUrl = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[2].resource = Patient0Response
* entry[2].search.score = 31
// crashes sushi * entry[1].search.mode = #match
* entry[2].fullUrl = "usr:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

* entry[3].resource = Patient1Response
* entry[3].search.score = -53
// crashes sushi * entry[2].search.mode = #match
* entry[3].fullUrl = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"

* entry[4].resource = Patient2Response
* entry[4].search.score = -56
// crashes sushi * entry[3].search.mode = #match
* entry[4].fullUrl = "urn:uuid:072f48b7-43c5-4bec-8798-026cc432adcf"

Instance: Patient0Response
InstanceOf: Patient
Description: "Example of Patient for query response Bundle with 4 different kinds of identifiers: SRI-PHN, SRI, SSRI and alternative."
* address.type = #physical
* address.line = "666 YELLOW BRICK RD"
* address.city = "PRINCE GEORGE"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8W 3P9"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"

* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[1].system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier[1].value = "CER2234"
* identifier[1].assigner.display = "VPP_CER"

* identifier[2].system = "http://hl7.org/fhir/bc-hcim/bc-ssri"
* identifier[2].value = "VCHA234"
* identifier[2].assigner.display = "VPP_LION"

* identifier[3].system = "http://hl7.org/fhir/bc-hcim/bc-out-of-province-sri"
* identifier[3].value = "90348733a"
* identifier[3].assigner.display = "MB"

* name.given = "PURPLE"
* name.family = "BARNEY"
* gender = #male
* birthDate = 1940-06-06
* deceasedBoolean = false

Instance: Patient1Response
InstanceOf: Patient
Description: "Example of Patient for query response Bundle"
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
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "SARAH"
* name.given[1] = "LYNN"
* name.family = "PURPLE"
* gender = #female
* birthDate = 1973-05-18

Instance: Patient2Response
InstanceOf: Patient
Description: "Example of Patient for query response Bundle"
* address.type = #postal
* address.line = "PO BOX 5"
* address.city = "CRESTON"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V0B 1G0"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "BAILEY"
* name.family = "PURPLE"
* gender = #female
* birthDate = 1985-12-14

Instance: GetDemographicsResponse
InstanceOf: Bundle
Description: "Example of $GetDemographics operation response Bundle"
* type = #searchset
* timestamp = "2011-09-07T12:18:23.000-07:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3a12f0c-a332-4ec9-94b9-d8539a02df48"
* entry[0].resource = GetDemographics-ResponseMetadata
* entry[0].fullUrl = "61061501-9953-4fba-87fe-6ae30e79da33"

* entry[1].resource = GetDemographics
* entry[1].fullUrl = "urn:uunid:753f756d-63b2-4086-86a4-d7768fd5374a"

* entry[2].resource = PatientDemographicsResponse
* entry[2].fullUrl = "urn:uunid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"

Instance: GetDemographicsINParameters
InstanceOf: Parameters
Description: "Example of $GetDemographics operation, IN parameters"
* parameter[0].name = "identifier"
* parameter[0].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* parameter[0].valueIdentifier.value = "9xxxxxxxx"
* parameter[0].valueIdentifier.type.coding.code = #JHN

Instance: PatientDemographicsResponse
InstanceOf: Patient
Description: "Example of Patient for $GetDemographics operation response"
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
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "JILLIAN"
* name.given[1] = "DAWN"
* name.given[2] = "THIRD NAME"
* name.family = "COOK-ADAMS"
* gender = #female
* birthDate = 1972-10-16
