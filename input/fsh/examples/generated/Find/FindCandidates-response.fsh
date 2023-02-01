Instance: FindCandidates-Response
InstanceOf: SearchResponseBundle
Description: "Example of $FindCandidates response"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1a6f9323-5c60-4f55-8210-9b4403c05014"
* type = #searchset
* timestamp = "2023-01-23T13:58:38.9211651-08:00"
* total = 2
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Find.fhir"
* entry[0].fullUrl = "urn:uuid:c3e604ec-0917-41a8-9d90-1da8e66168d7"
* entry[=].resource = FindCandidates-response-Parameters
* entry[=].search.mode = #include
* entry[+].resource = FindCandidates-response-Outcome 
* entry[=].fullUrl = "urn:uuid:c3e604ec-0917-41a8-9d90-1da8e6615678"
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:f156cec9-77fe-40d2-a023-71f1442d4598"
* entry[=].resource = FindCandidates-response-Patient1
* entry[=].search.mode = #match
* entry[=].search.score = 159
* entry[+].fullUrl = "urn:uuid:d8c79350-2de1-4fee-bd65-67592628916f"
* entry[=].resource = FindCandidates-response-Patient1
* entry[=].search.mode = #match
* entry[=].search.score = 91