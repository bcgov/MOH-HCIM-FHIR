Instance: Parameters-FindCandidatesByExample-Example
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[3].name = "patient"
* parameter[3].resource = Patient-By-Example-Example

* parameter[4].name = "identifiersOnly"
* parameter[4].valueBoolean = false

