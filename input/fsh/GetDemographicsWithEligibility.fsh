Instance: GetDemographics.withEligibility
InstanceOf: OperationDefinition
Description: "This operation is used to query for a patient.  The response can contain 0 or 1 Patient and the insurance eligibility."
Usage: #definition
* id = "bc-patient-get-demographics-withEligibility"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-get-demographics-withEligibility"
* name = "GetDemographicswithEligibility"
* title = "GetDemographics withEligibility"
* status = #draft
* kind = #query
* code = #GetDemographics.withEligibility
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(BCMetadataParameters)

* parameter[0].name = #messageId
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Unique message ID."
* parameter[0].type = #string
* parameter[0].searchType = #string

* parameter[1].name = #messageDateTime
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Message date and time."
* parameter[1].type = #dateTime

* parameter[2].name = #sender
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Requesting organization."
* parameter[2].type = #Identifier

* parameter[3].name = #enterer
* parameter[3].use = #in                                                        
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "UserId of sender."
* parameter[3].type = #Identifier

* parameter[4].name = #identifier
* parameter[4].use = #in
* parameter[4].min = 1
* parameter[4].max = "1"
* parameter[4].documentation = "Patient identifier."
* parameter[4].type = #Identifier

* parameter[5].name = #withHistory
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Boolean flag to return Patient's history.  If missing, defaults to false."
* parameter[5].type = #boolean

* parameter[6].name = #identifiersOnly
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Instruct the Client Registry to return Patient Identifiers only when true.  If not present, defaults to false."
* parameter[6].type = #boolean


