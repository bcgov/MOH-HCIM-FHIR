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

Instance: Patient-MergePatient-Example
InstanceOf: PatientMerge
Description: "Example of a merge patient Patient"
* active = true
* identifier = IdentifierExampleSRINoPeriodForMerge
* link[0].type = #replaces
* link[0].other.identifier = IdentifierExampleSRINoPeriod
* link[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[0].extension.valueCode = #cancelled

* link[1].type = #replaces
* link[1].other.identifier = IdentifierExampleSSRINoPeriod
* link[1].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[1].extension.valueCode = #cancelled

* link[2].type = #replaces
* link[2].other.identifier = IdentifierExampleSSRINoPeriod
* link[2].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[2].extension.valueCode = #obsolete

* link[3].type = #replaces
* link[3].other.identifier = IdentifierExamplePHN2NoPeriod
* link[3].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[3].extension.valueCode = #obsolete
