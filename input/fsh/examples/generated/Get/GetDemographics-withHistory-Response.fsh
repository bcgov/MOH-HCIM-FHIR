Instance: GetDemographics-withHistory-Response 
InstanceOf: SearchResponseBundle
Description: "Example of $GetDemographics response with History"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bb039f6f-3c18-4427-ad5e-d9de62dccf6b"
* type = #searchset
* timestamp = "2023-01-23T14:00:54.4107299-08:00"
* total = 1
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Get.fhir"
* entry[0].fullUrl = "urn:uuid:fb5ed5fa-e08f-4b88-948a-d81cd26d3453"
* entry[=].resource = GetDemographics-withHistory-Response-Parameters 
* entry[=].search.mode = #include
* entry[+].fullUrl = "urn:uuid:68e9d4a1-2be0-4fcb-991f-1d503cf74567"
* entry[=].resource = GetDemographics-withHistory-Response-Outcome  
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:68e9d4a1-2be0-4fcb-991f-1d503cf7f4ba"
* entry[=].resource = GetDemographics-withHistory-Response-Patient
* entry[=].search.mode = #match