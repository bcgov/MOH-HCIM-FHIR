Instance: AddPatient-Request
InstanceOf: AddRequestBundle
Description: "Example of $Add Patient request with all data fields populated."
Usage: #example
* type = #collection
* timestamp = "2023-01-23T13:46:27.8145754-08:00"
* link.relation = "self"
* link.url = "urn:uuid:492f0b38-e195-4249-b8d7-8000218842e9"
* entry[0].fullUrl = "urn:uuid:0185235c-f8ea-4107-8979-591ddc2df30b"
* entry[=].resource = AddPatient-Request-Parameters
* entry[+].fullUrl = "urn:uuid:951b9e8e-5c78-44d5-91b1-ad6fb748de4b"
* entry[=].resource = AddPatient-Request-Patient 