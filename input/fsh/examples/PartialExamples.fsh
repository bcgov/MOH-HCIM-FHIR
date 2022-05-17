Instance: Parameters-UpdatePatient-Example
InstanceOf: MetadataParameters
Description: "Example of $RevisePatient operation that updates an existing Patient"

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

* parameter[4].name = "SRI"
* parameter[4].valueIdentifier = IdentifierExampleSRINoPeriod

* parameter[5].name = "patchOperation"
* parameter[5].resource = Parameters-DeletePatch-Example

Instance: Parameters-UpdatePatient-Response-Example
InstanceOf: MetadataParameters
Description: "Example of Update response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

Instance: Bundle-UpdatePatient-Response-Example
InstanceOf: ReviseResponseBundle
Description: "A sample UpdatePatient Operation response."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[0].resource = Parameters-UpdatePatient-Response-Example
* entry[0].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"

* entry[1].resource = OperationOutcome-Example
* entry[1].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

* entry[2].resource = Patient-AddReviseOrMergePatient-Response-Example
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"


Instance: Parameters-DeletePatch-Example
InstanceOf: Parameters
Description: "An example of a delete patch, which is used for a partial update of a Patient resource.  This example deletes a physical address."
* parameter[0].part[0].name = "type"
* parameter[0].part[0].valueCode = #delete
* parameter[0].name = "operation"
* parameter[0].part[1].name = "path"
* parameter[0].part[1].valueString = "Patient.address.where(type = 'physical')"
