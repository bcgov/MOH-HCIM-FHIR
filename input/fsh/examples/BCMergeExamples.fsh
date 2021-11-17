Instance: MergePatient-TwoNonSurvivors
InstanceOf: BCPatientBusinessParameters
Description: "Example of $MergePatient operation."

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "NHA"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "nvida"
* parameter[enterer].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-user"

* parameter[patient].name = "patient"
* parameter[patient].resource = PatientMP


Instance: MergePatient-EchoRequest
InstanceOf: BCPatientBusinessParameters
Description: "Example of $MergePatient operation that updates an existing Patient"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "PHARM"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "klgodfre"
* parameter[enterer].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-user"

* parameter[patient].name = "patient"
* parameter[patient].resource = PatientRP

Instance: MergeResponseMetadata
InstanceOf: BCMetadataParameters
Description: "Example of Merge response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[messageRequestId].name = "messageRequestId"
* parameter[messageRequestId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

Instance: MergePatientResponse
InstanceOf: BCMergeResponseBundle
Description: "A sample RevisePatient and MergePatient Operation response."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[0].resource = MergePatient-EchoRequest
* entry[0].fullUrl = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[1].resource = RPMPOperationOutcome
* entry[1].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

* entry[2].resource = PatientRPMPResponse
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

