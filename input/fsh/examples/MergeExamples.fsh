Instance: Bundle-MergePatient-Request-Example
InstanceOf: MergeRequestBundle
Description: "Example of $MergePatient operation."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* link.relation = "self"
* link.url = "http://hlth.gov.bc.ca/fhir/client/Patient/$MergePatient"

* entry[parameters].resource = Parameters-MergePatient-TwoNonSurvivors-Example
* entry[parameters].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f2222"

* entry[patient].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f4444"
* entry[patient].resource = Patient-MergePatient-Example

Instance: Parameters-MergePatient-TwoNonSurvivors-Example
InstanceOf: MetadataParametersIn
Description: "Example of $MergePatient operation."

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

Instance: Parameters-MergePatient-Response-Example
InstanceOf: MetadataParametersOut
Description: "Example of Merge response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

Instance: Bundle-MergePatient-Response-Example
InstanceOf: MergeResponseBundle
Description: "A sample MergePatient Operation response."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[0].resource = Parameters-MergePatient-Response-Example
* entry[0].fullUrl = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[1].resource = OperationOutcome-Example
* entry[1].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

