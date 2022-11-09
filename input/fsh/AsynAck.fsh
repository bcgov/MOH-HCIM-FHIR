Profile: AsyncAckBundle
Parent: Bundle
Id: bc-async-ack-response-bundle
Description: "A Bundle that is used for the ACK response to an aynchronous operation request."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..2
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when sending the Client Registry a Find Candidates query."
* entry contains operationOutcome 1..1 MS and parameters 1..1 MS
* entry[parameters].resource only MetadataParametersAsync
* entry[parameters] ^short = "Metadata async resopnse parameters."
* entry[operationOutcome].resource only OperationOutcome
* entry[operationOutcome] ^short = "Acknowledgement of asynchronous operation request."

