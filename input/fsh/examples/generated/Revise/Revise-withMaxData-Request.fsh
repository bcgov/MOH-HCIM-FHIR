Instance: Revise-withMaxData-Request
InstanceOf: Bundle
Description: "Example of $Revise request with all data fields populated."
Usage: #example
* meta.profile = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-request-bundle"
* type = #collection
* timestamp = "2023-01-23T14:02:15.7695447-08:00"
* link.relation = "self"
* link.url = "urn:uuid:1d822cfb-c6a5-43db-ac7e-277234bceb2a"
* entry[0].fullUrl = "urn:uuid:e12213c8-9351-4a9b-94cb-54d3710be5b4"
* entry[=].resource = Revise-withMaxData-Request-Parameters
* entry[+].fullUrl = "urn:uuid:112a2ba8-c3c9-4b08-8cfd-f025b85b3e0c"
* entry[=].resource = Revise-withMaxData-Request-Patient