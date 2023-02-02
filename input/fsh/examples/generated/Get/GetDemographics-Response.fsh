Instance: GetDemographics-Response 
InstanceOf: SearchResponseBundle
Description: "Example of $GetDemographics response"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9b9cb4b5-6845-4d6b-b71e-b0cb42f92da9"
* type = #searchset
* timestamp = "2023-01-23T14:00:53.6840428-08:00"
* total = 1
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Get.fhir"
* entry[0].fullUrl = "urn:uuid:289d85b9-43a4-4902-9b52-76cb1f02ea69"
* entry[=].resource = GetDemographics-Response-Parameters
* entry[=].search.mode = #include
* entry[+].resource = GetDemographics-Response-Outcome
* entry[=].fullUrl = "urn:uuid:289d85b9-43a4-4902-9b52-76cb1f01234"
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:27fb3c46-a6ea-4986-8238-d94d6655cc1d"
* entry[=].resource = GetDemographics-Response-Patient
* entry[=].search.mode = #outcome