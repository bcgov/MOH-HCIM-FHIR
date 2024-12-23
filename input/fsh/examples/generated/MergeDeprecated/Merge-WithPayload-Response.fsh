/*Instance: Merge-WithPayload-Response
InstanceOf: MergeResponseBundle
Description: "Example of $Merge response with payload."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a9dfb452-0127-4f07-bbf3-61f757c9b98a"
* type = #collection
* timestamp = "2023-01-23T14:45:48.2127738-08:00"
* link.relation = "canonical"
* link.url = "https://ig.cgi.com/Patient/Merge.fhir"
* entry[0].fullUrl = "urn:uuid:c82fbb43-a275-4a29-8b6c-319f0a15d7b9"
* entry[=].resource = Merge-WithPayload-Response-Parameters
* entry[+].resource = Merge-WithPayload-Response-Outcome
* entry[=].fullUrl = "urn:uuid:c82fbb43-a275-4a29-8b6c-319f0a154567"
*/
