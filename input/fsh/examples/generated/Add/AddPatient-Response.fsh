Instance: AddPatient-Response
InstanceOf: AddResponseBundle
Description: "Example of a $Add Patient Response message."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ab8f071d-07ed-479b-a6ed-472066d26815"
* type = #collection
* timestamp = "2023-01-23T13:46:28.0255523-08:00"
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Add.fhir"
* entry[0].fullUrl = "urn:uuid:0185235c-f8ea-4107-8979-591ddc2df30b"
* entry[=].resource = AddPatient-Response-Parameters
* entry[+].resource = AddPatient-Response-Outcome 
* entry[=].fullUrl = "urn:uuid:0185235c-f8ea-4107-8979-591ddc2d1234"
//* entry[+].fullUrl = "https://hcim.ehealth.gov.bc.ca/Patient/da3c9784-deb8-4d70-96ec-32d4129b408d"
* entry[+].fullUrl = "urn:uuid:33f234d1-5781-45f2-8c8c-4b7cdd809078"
* entry[=].resource = AddPatient-Response-Patient
