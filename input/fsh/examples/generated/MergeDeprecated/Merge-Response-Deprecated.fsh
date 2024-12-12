Instance: Merge-Response-Deprecated
InstanceOf: MergeResponseBundle
Description: "Example of $Merge response."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5af209ac-343b-497c-8be3-7394b677318c"
* type = #collection
* timestamp = "2023-01-23T14:45:48.1142315-08:00"
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Merge.fhir"
* entry[0].fullUrl = "urn:uuid:30f9e023-c3dc-43e3-bf91-b46da0836c16"
* entry[=].resource = Merge-Response-Parameters
* entry[+].resource = Merge-Response-Outcome
* entry[=].fullUrl = "urn:uuid:30f9e023-c3dc-43e3-bf91-b46da0831234"