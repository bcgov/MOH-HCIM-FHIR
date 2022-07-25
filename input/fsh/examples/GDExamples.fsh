Instance: Bundle-GetDemographics-Request-Example
InstanceOf: GetDemographicsRequestBundle
Description: "Example of $GetDemographics operation"
* type = #collection
* timestamp = "2011-09-13T16:11:43.000-07:00"
* link.relation = "self"
* link.url = "http://hlth.gov.bc.ca/fhir/client/Patient/$GetDemographics"

* entry[parameters].resource = Parameters-GetDemographics-Example
* entry[parameters].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f2222"

* entry[patient].resource = Patient-By-Example-GD-Example
* entry[patient].fullUrl = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f1111" 


Instance: Parameters-GetDemographics-Example
InstanceOf: MetadataParametersIn
Description: "Example of $GetDemographics operation"
* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[2].name = "history"
* parameter[2].valueBoolean = false

Instance: Parameters-GetDemographics-Response-Example
InstanceOf: MetadataParametersOut
Description: "Example of $GetDemographics response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

Instance: Bundle-GetDemographics-Response-Example
InstanceOf: SearchResponseBundle
Description: "Example of $GetDemographics operation response Bundle"
* total = 1
* type = #searchset
* timestamp = "2011-09-07T12:18:23.000-07:00"
* link.relation = "self"
* link.url = "https://your.search.search.url"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3a12f0c-a332-4ec9-94b9-d8539a02df48"
* entry[parameters].resource = Parameters-GetDemographics-Response-Example
* entry[parameters].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"
* entry[operationOutcome].resource = OperationOutcome-Search-Example
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"
* entry[2].resource = Patient-GetDemographics-Example
* entry[2].fullUrl = "urn:uuid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"

Instance: Parameters-GetDemographics-IN-Example
InstanceOf: Parameters
Description: "Example of $GetDemographics operation, IN parameters"
* parameter[0].name = "identifier"
* parameter[0].valueIdentifier = IdentifierExamplePHN

