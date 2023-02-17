Instance: FindNewbornByMumsPHN-Response
InstanceOf: SearchResponseBundle
Description: "Example of $FindCandidates response with Mother's PHN."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:91dd7048-9bcc-405a-844b-47dc2656fd07"
* type = #searchset
* timestamp = "2023-01-23T13:58:38.9793487-08:00"
* total = 3
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Find.fhir"
* entry[0].fullUrl = "urn:uuid:b46f78e1-cfa1-41a6-ba9c-fafe6822791a"
* entry[=].resource = FindNewbornByMumsPHN-Response-Parameters
* entry[=].search.mode = #include
* entry[+].resource = FindNewbornByMumsPHN-Response-Outcome
* entry[=].fullUrl = "urn:uuid:c3e604ec-0917-41a8-9d90-1da8e6611234"
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:71092811-55f9-4e1f-8754-a6828da1d51c"
* entry[=].resource = FindNewbornByMumsPHN-Response-Patient1
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:69b91ae6-e147-4dd0-abe7-8912ec301fd9"
* entry[=].resource = FindNewbornByMumsPHN-Response-Patient2
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:e4e077df-3a85-4fa9-8df0-9ff7b2f00000"
* entry[=].resource = FindNewbornByMumsPHN-Response-Patient3
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:13cb4c36-102d-49c7-9f2e-f652ece39ecf"
* entry[=].resource = FindNewbornByMumsPHN-Response-RelatedPerson1
* entry[=].search.mode = #include
* entry[+].fullUrl = "urn:uuid:613f5d13-9753-4c0c-89f9-f2bce0622721"
* entry[=].resource = FindNewbornByMumsPHN-Response-RelatedPerson2
* entry[=].search.mode = #include