/*Instance: Bundle-RevisePatient-Request-Example
InstanceOf: ReviseRequestBundle
Description: "Example of $RevisePatient operation."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* link.relation = "self"
* link.url = "http://hlth.gov.bc.ca/fhir/client/Patient/$RevisePatient"

* entry[parameters].resource = Parameters-RevisePatient-Example
* entry[parameters].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f2222"

* entry[patient].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f4444"
* entry[patient].resource = Patient-RevisePatient-Example

Instance: Parameters-RevisePatient-Example
InstanceOf: MetadataParametersIn
Description: "Example of $RevisePatient operation that updates an existing Patient"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

Instance: Parameters-RevisePatient-Response-Example
InstanceOf: MetadataParametersOut
Description: "Example of Revise response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

Instance: Bundle-RevisePatient-Response-Example
InstanceOf: ReviseResponseBundle
Description: "A sample RevisePatient Operation response."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"

* entry[0].resource = Parameters-RevisePatient-Response-Example
* entry[0].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"

* entry[1].resource = OperationOutcome-Example-RP
* entry[1].fullUrl = "urn:uuid:2435edad-33f3-4a54-bbdb-1d28d25ce8c7"

/* entry[2].resource = Patient-AddReviseOrMergePatient-Response-Example
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"*/