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
* entry[+].fullUrl = "urn:uuid:0913f566-d444-405c-9de7-9250f3173bd4"
* entry[=].resource = AddPatient-Response-Patient