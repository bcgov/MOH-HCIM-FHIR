Instance: GetDemographicsQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a patient.  The response can contain 0 or 1 Patient."
Usage: #definition
* id = "bc-patient-get-demographics"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-get-demographics"
* name = "GetDemographics"
* title = "GetDemographics"
* status = #draft
* kind = #query
* code = #GetDemographics
* resource[0] = #Patient
* system = false
* type = true
* instance = true
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

* parameter[3].name = #PHN
* parameter[3].use = #in
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Patient PHN."
* parameter[3].type = #string

* parameter[4].name = #withHistory
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Boolean flag to return Patient's history.  If missing, defaults to false."
* parameter[4].type = #boolean

* parameter[5].name = #enterer
* parameter[5].use = #in                                                                    
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "UserId of sender."
* parameter[5].type = #Identifier
