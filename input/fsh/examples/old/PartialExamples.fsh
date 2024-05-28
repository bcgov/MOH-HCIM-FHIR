/**Instance: Bundle-UpdatePatient-Request-Example
InstanceOf: PartialUpdateRequestBundle
Description: "A sample UpdatePatient request. This example shows a Address update that replaces an existing address."
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[0].resource = Parameters-UpdatePatient-Request-Example
* entry[0].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"

* entry[1].resource = Patient-UpdatePatient-Request-Example
* entry[1].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

Instance: Patient-UpdatePatient-Request-Example
InstanceOf: PartialPatientUpdate
Description: "Patient example for a UpdatePatient operation that changes the Address."
* address[0] = Address-0-Example
* address[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-update-patient-operation-extension"
* address[0].extension.valueCodeableConcept.coding.system = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-update-patient-operation-code-system"
* address[0].extension.valueCodeableConcept.coding.code = #replace
* identifier = IdentifierExampleSRINoPeriod

Instance: Parameters-UpdatePatient-Request-Example
InstanceOf: MetadataParametersIn
Description: "Example of Update response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

Instance: Parameters-UpdatePatient-Response-Example
InstanceOf: MetadataParametersOut
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

/* entry[2].resource = Patient-AddReviseOrMergePatient-Response-Example
* entry[2].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"*/