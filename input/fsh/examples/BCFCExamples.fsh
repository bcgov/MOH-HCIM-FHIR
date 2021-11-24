Instance: FindCandidates
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

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

Instance: FindCandidates-UsingMomsPHN
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation with mother's PHN"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[3].name = "mothersPHN"
* parameter[3].valueString = "9123123432"

Instance: FindCandidates-UsingSSRI
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation with SSRI identifier"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

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
* parameter[9].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-ssri"
* parameter[9].valueIdentifier.value = "24234"
* parameter[9].valueIdentifier.assigner.display = "VPP_CER"

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
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"


Instance: FindCandidatesResponse
InstanceOf: BCSearchResponseBundle
Description: "Example of FindCandidates response Bundle.  Patient0 has PHN, alternate, SRI and SSRI identifier examples."
* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 3
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[parameters].resource = FindCandidates-ResponseMetadata
* entry[parameters].fullUrl = "61061501-9953-4fba-87fe-6ae30e79da33"

* entry[operationOutcome].resource = SearchOperationOutcome
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

* entry[2].resource = Patient0Response
* entry[2].search.score = 31
* entry[2].search.mode = #match
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

* entry[3].resource = Patient1Response
* entry[3].search.score = -53
* entry[3].search.mode = #match
* entry[3].fullUrl = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"

* entry[4].resource = Patient2Response
* entry[4].search.score = -56
* entry[4].search.mode = #match
* entry[4].fullUrl = "urn:uuid:072f48b7-43c5-4bec-8798-026cc432adcf"

Instance: FindCandidatesResponse-MomsPHN
InstanceOf: BCSearchResponseBundle
Description: "Example of FindCandidates with mother's PHN response Bundle."
* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 3
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[parameters].resource = FindCandidates-ResponseMetadata
* entry[parameters].fullUrl = "61061501-9953-4fba-87fe-6ae30e79da33"

* entry[operationOutcome].resource = SearchOperationOutcome
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

// This response is complex .... the response to the Find Candidates
// request must have child and mother with link->relatedPerson->child
// for each child.  This example has two children, twins.
//
// The mother Patient has two links, each link is to a related person
// and the related persons reference the boy and girl with a NCHILD code.
//
// bundle
//	- mother patient
//	- boy patient
//	- girl patient
//	- mother related person to boy
//	- mother related person to girl
//
// links between resource use references to Bundle-relative uuids


//child 1
* entry[2].resource = PatientBabyGirl
* entry[2].search.score = 100
* entry[2].search.mode = #match
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

// child 2
* entry[3].resource = PatientBabyBoy
* entry[3].search.score = 100
* entry[3].search.mode = #match
* entry[3].fullUrl = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"

// mother
* entry[4].resource = PatientMother
* entry[4].search.score = 100
* entry[4].search.mode = #match
* entry[4].fullUrl = "urn:uuid:072f48b7-43c5-4bec-8798-026cc432adcf"

* entry[5].resource = MotherRelatedFCBabyBoy
* entry[5].fullUrl = "urn:uuid:425b6c71-b198-4e75-b32c-1b3086935c6a"

* entry[6].resource = MotherRelatedFCBabyGirl
* entry[6].fullUrl = "urn:uuid:4a288971-8af6-4d77-a071-4ba3a10042e5"
