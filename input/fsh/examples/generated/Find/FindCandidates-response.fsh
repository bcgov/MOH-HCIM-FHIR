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
//* entry[=].search.mode = #include
* entry[+].resource = FindCandidates-response-Outcome 
* entry[=].fullUrl = "urn:uuid:c3e604ec-0917-41a8-9d90-1da8e6615678"
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:b24a0288-a7b4-4219-8374-856b03a47715"
//* entry[+].fullUrl = "https://hcim.ehealth.gov.bc.ca/Patient/2d71a59d-1ec3-4678-8e6e-eac7a9bc1980"
* entry[=].resource = FindCandidates-response-Patient1
* entry[=].search.mode = #match
* entry[=].search.score = 159
* entry[+].fullUrl = "urn:uuid:db8b0c05-a81f-49ea-8110-92cc826ff09e"
//* entry[+].fullUrl = "https://hcim.ehealth.gov.bc.ca/Patient/9f5b4f12-2bc2-4ff9-8c66-33e397014099"
* entry[=].resource = FindCandidates-response-Patient2
* entry[=].search.mode = #match
* entry[=].search.score = 91
