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
* parameter[0].name = #messageId
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Unique message ID."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #messageDate
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Message date and time."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #PHN
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Patient PHN."
* parameter[2].type = #string
* parameter[3].name = #withHistory
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Boolean flag to return Patient's history.  If missing, defaults to false."
* parameter[3].type = #boolean
