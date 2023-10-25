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
//* entry[=].search.mode = #include
* entry[+].resource = FindNewbornByMumsPHN-Response-Outcome
* entry[=].fullUrl = "urn:uuid:c3e604ec-0917-41a8-9d90-1da8e6611234"
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:d71c7185-8419-455d-bd39-cb184193ddbc"    
//* entry[+].fullUrl = "https://hcim.ehealth.gov.bc.ca/Patient/249bfac6-d4d8-40da-91f9-1922124f67b3"
* entry[=].resource = FindNewbornByMumsPHN-Response-Patient1
//* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:c7c91331-ef61-4153-b01e-b8d6447b66c5"    
//* entry[+].fullUrl = "https://hcim.ehealth.gov.bc.ca/Patient/719066ea-5992-4fb3-b05a-1859340762c1"
* entry[=].resource = FindNewbornByMumsPHN-Response-Patient2
//* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:beda6325-3140-444e-af5b-0f6c320b98d1"    
//* entry[+].fullUrl = "https://hcim.ehealth.gov.bc.ca/Patient/2fc21607-32e0-463b-aef4-1aaee713d381"
* entry[=].resource = FindNewbornByMumsPHN-Response-Patient3
//* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:13cb4c36-102d-49c7-9f2e-f652ece39ecf"
* entry[=].resource = FindNewbornByMumsPHN-Response-RelatedPerson1
* entry[=].search.mode = #include
* entry[+].fullUrl = "urn:uuid:613f5d13-9753-4c0c-89f9-f2bce0622721"
* entry[=].resource = FindNewbornByMumsPHN-Response-RelatedPerson2
* entry[=].search.mode = #include
