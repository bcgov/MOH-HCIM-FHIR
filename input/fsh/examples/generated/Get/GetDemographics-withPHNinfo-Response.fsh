Instance: GetDemographics-withPHNInfo-Response
InstanceOf: SearchResponseBundle
Description: "Example of $GetDemographics response with PHN info. Only organization users with specific access will receive this data, to be used by the admin Webapp "
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:501f39c8-a388-49a8-aaaa-cbd5d76bb5bd"
* type = #searchset
* timestamp = "2023-01-23T14:00:53.7668522-08:00"
* total = 1
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Get.fhir"
* entry[0].fullUrl = "urn:uuid:fb5ed5fa-e08f-4b88-948a-d81cd26d3453"
* entry[=].resource = GetDemographics-withHistory-Response-Parameters
* entry[=].search.mode = #include
* entry[+].fullUrl = "urn:uuid:99982f86-4044-48a6-9e63-3d221f3a9876"
* entry[=].resource = GetDemographics-withPHNInfo-Response-Outcome 
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:99982f86-4044-48a6-9e63-3d221f3a5f0d"
* entry[=].resource = GetDemographics-withPHNInfo-Response-Patient 
* entry[=].search.mode = #outcome