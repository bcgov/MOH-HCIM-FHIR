Instance: Revise-Async-ACK
InstanceOf: AsyncAckBundle
Description: "Example of an Asynchronous $Revise ACK message."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:157abc8c-036b-4fb6-960a-ba66e931189d"
* type = #collection
* timestamp = "2023-01-23T14:02:15.999572-08:00"
* link.relation = "canonical"
* link.url = "Patient\\Revise"
* entry[0].fullUrl = "urn:uuid:e12213c8-9351-4a9b-94cb-54d3710be5b4"
* entry[=].resource = Revise-Async-ACK-Parameters
* entry[+].resource = Revise-Async-ACK-Outcome
* entry[=].fullUrl = "urn:uuid:e12213c8-9351-4a9b-94cb-54d3710b9876"