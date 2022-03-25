Instance: Parameters-GetDemographics-Example
InstanceOf: BCMetadataParameters
Description: "Example of $GetDemographics operation"
* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "bob@me.com"
* parameter[enterer].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-userid"

* parameter[4].name = "identifier"
* parameter[4].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* parameter[4].valueIdentifier.value = "912345892"
* parameter[4].valueIdentifier.type.coding.code = #JHN
* parameter[4].valueIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* parameter[5].name = "history"
* parameter[5].valueBoolean = false

Instance: Parameters-GetDemographics-Response-Example
InstanceOf: BCMetadataParameters
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
InstanceOf: BCSearchResponseBundle
Description: "Example of $GetDemographics operation response Bundle"
* type = #searchset
* timestamp = "2011-09-07T12:18:23.000-07:00"
* link.relation = "self"
* link.url = "https://your.search.search.url"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3a12f0c-a332-4ec9-94b9-d8539a02df48"
* entry[parameters].resource = Parameters-GetDemographics-Response-Example
* entry[parameters].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"
* entry[parameters].search.mode = #include
* entry[operationOutcome].resource = OperationOutcome-Search-Example
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"
* entry[operationOutcome].search.mode = #outcome
* entry[2].resource = Patient-GetDemographics-Example
* entry[2].fullUrl = "urn:uuid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"
* entry[2].search.mode = #include

Instance: Parameters-GetDemographics-IN-Example
InstanceOf: Parameters
Description: "Example of $GetDemographics operation, IN parameters"
* parameter[0].name = "identifier"
* parameter[0].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* parameter[0].valueIdentifier.value = "9834902274"
* parameter[0].valueIdentifier.type.coding.code = #JHN
* parameter[0].valueIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
