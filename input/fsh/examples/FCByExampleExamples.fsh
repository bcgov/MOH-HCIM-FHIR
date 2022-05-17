Instance: Bundle-FindCandidatesByExample-Request-Example
InstanceOf: FindCandidatesRequestBundle
Description: "Example of $FindCandidates operation"
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* link.relation = "self"
* link.url = "http://hlth.gov.bc.ca/fhir/client/Patient/$FindCandidates"

* entry[parameters].resource = Parameters-FindCandidates-Example
* entry[parameters].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f2222"

* entry[patient].resource = Patient-By-Example-Example
* entry[patient].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f1111" 


Instance: Parameters-FindCandidates-Example
InstanceOf: MetadataParameters
Description: "Example of $FindCandidates search parameters."
* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[3].name = "identifiersOnly"
* parameter[3].valueBoolean = false

