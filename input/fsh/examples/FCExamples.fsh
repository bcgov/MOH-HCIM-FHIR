Instance: Bundle-FindCandidates-UsingMomsPHN-Request-Example
InstanceOf: FindCandidatesRequestBundle
Description: "Example of $FindCandidates operation with Mother's PHN."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* link.relation = "self"
* link.url = "http://hlth.gov.bc.ca/fhir/client/Patient/$FindCandidates"

* entry[parameters].resource = Parameters-FindCandidates-Example
* entry[parameters].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f2222"

* entry[relatedPerson].resource = MothersPHN-RelatedPerson-ForFC
* entry[relatedPerson].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f1111" 
Instance: MothersPHN-RelatedPerson-ForFC
InstanceOf: RelatedPerson
Description: "RelatedPerson, representing Mother, for Find Candidate Operation by mother's PHN"
* identifier = IdentifierExampleMothersPHN
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH

// The patient in this FC request is the mother.
// Data absent reason was not passing validation and can't use uuid as 
// uuid is an internal reference (fullUrl in Bunlde must be found matching
// the uuid).  Instead we use the simple text display.
* patient.display = "The newborn."


Instance: Parameters-FindCandidates-Response-Example
InstanceOf: MetadataParametersOut
Description: "Example of $FindCandidates response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "123123345"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[requestParameters].name = "requestParameters"
* parameter[requestParameters].resource = Parameters-FindCandidates-Example

Instance: Bundle-FindCandidates-Response-Example
InstanceOf: SearchResponseBundle
Description: "Example of FindCandidates response Bundle.  Patient0 has PHN, alternate, SRI and SSRI identifier examples."
* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 3
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link.relation = "self"
* link.url = "http://hlth.gov.bc.ca/fhir/client/Patient/$FindCandidates"

* entry[parameters].resource = Parameters-FindCandidates-Response-Example
* entry[parameters].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"
* entry[parameters].search.mode = #include

* entry[operationOutcome].resource = OperationOutcome-Search-Example
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"
* entry[operationOutcome].search.mode = #outcome

* entry[2].resource = Patient-0-Example
* entry[2].search.score = 31
* entry[2].search.mode = #match
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

* entry[3].resource = Patient-1-Example
* entry[3].search.score = -53
* entry[3].search.mode = #match
* entry[3].fullUrl = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"

* entry[4].resource = Patient-2-Example
* entry[4].search.score = -56
* entry[4].search.mode = #match
* entry[4].fullUrl = "urn:uuid:072f48b7-43c5-4bec-8798-026cc432adcf"

Instance: Bundle-FindCandidates-Response-MomsPHN-Example
InstanceOf: SearchResponseBundle
Description: "Example of FindCandidates with mother's PHN response Bundle."
* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 2
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[parameters].resource = Parameters-FindCandidates-Response-Example
* entry[parameters].fullUrl = "61061501-9953-4fba-87fe-6ae30e79da33"
* entry[parameters].search.mode = #include

* entry[operationOutcome].resource = OperationOutcome-Search-Example
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"
* entry[operationOutcome].search.mode = #outcome

// This response is complex .... the response to the Find Candidates
// request must have child and mother with link->relatedPerson->child
// for each child.  This example has two children, twins.
//
// The mother Patient has two links, each link is to a related person
// and the related persons reference the boy and girl with a NCHILD code.
//
// bundle
//	- boy patient
//	- girl patient
//	- mother related person to boy
//	- mother related person to girl
//
// links between resource use references to Bundle-relative uuids


//child 1
* entry[2].resource = Patient-BabyGirl-Example
* entry[2].search.score = 100
* entry[2].search.mode = #match
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

// child 2
* entry[3].resource = Patient-BabyBoy-Example
* entry[3].search.score = 100
* entry[3].search.mode = #match
* entry[3].fullUrl = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"

* entry[4].resource = RelatedPerson-MotherOfBabyBoy-Example
* entry[4].fullUrl = "urn:uuid:425b6c71-b198-4e75-b32c-1b3086935c6a"
* entry[4].search.mode = #include

* entry[5].resource = RelatedPerson-MotherOfBabyGirl-Example
* entry[5].fullUrl = "urn:uuid:4a288971-8af6-4d77-a071-4ba3a10042e5"
* entry[5].search.mode = #include
