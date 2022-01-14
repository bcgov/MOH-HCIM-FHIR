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
* parameter[2].documentation = "Source of request"
* parameter[2].type = #Identifier

* parameter[3].name = #identifier
* parameter[3].use = #in
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Patient identifier."
* parameter[3].type = #Identifier

* parameter[4].name = #enterer
* parameter[4].use = #in                                                                    
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "UserId of sender."
* parameter[4].type = #Identifier


