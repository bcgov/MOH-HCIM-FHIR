Instance: Revise-Response
InstanceOf: ReviseResponseBundle
Description: "Example of a $Revise Patient Response message."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:db5d47ac-0323-4def-9d2f-97d84a6f341d"
* type = #collection
* timestamp = "2023-01-23T14:02:15.9747697-08:00"
* link.relation = "canonical"
* link.url = "Patient\\Revise"
* entry[0].fullUrl = "urn:uuid:e12213c8-9351-4a9b-94cb-54d3710be5b4"
* entry[=].resource = Revise-Response-Parameters
* entry[=].search.mode = #include
* entry[+].fullUrl = "urn:uuid:445c4b0d-95f7-4492-88ba-b491516b4567"
* entry[=].resource = Revise-Response-Outcome
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:445c4b0d-95f7-4492-88ba-b491516b1508"
* entry[=].resource = Revise-Response-Patient
* entry[=].search.mode = #outcome