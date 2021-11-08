Instance: FindCandidatesQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a patient.  The response can contain 0 or more Paitents."
Usage: #definition
* id = "bc-patient-find-candidates"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-find-candidates"
* name = "FindCandidates"
* title = "Find Candidates"
* status = #draft
* kind = #query
* code = #FindCandidates
* resource[0] = #Patient
* system = false
* type = true
* instance = true
* inputProfile = "BCPatientBusinessParameters"

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
* parameter[2].documentation = "Message sender"
* parameter[2].type = #Identifier


* parameter[3].name = #address
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Patient address."
* parameter[3].type = #Address

* parameter[4].name = #gender
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Patient gender."
* parameter[4].type = #code

* parameter[5].name = #birthDate
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Patient birth date."
* parameter[5].type = #dateTime

* parameter[6].name = #deathDate
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Patient death date."
* parameter[6].type = #dateTime

* parameter[7].name = #name
* parameter[7].use = #in
* parameter[7].min = 0
* parameter[7].max = "1"
* parameter[7].documentation = "Patient name."
* parameter[7].type = #HumanName

* parameter[8].name = #telephone
* parameter[8].use = #in
* parameter[8].min = 0
* parameter[8].max = "1"
* parameter[8].documentation = "Patient telephone."
* parameter[8].type = #ContactPoint

* parameter[9].name = #identifier
* parameter[9].use = #in
* parameter[9].min = 0
* parameter[9].max = "1"
* parameter[9].documentation = "Patient identifier."
* parameter[9].type = #Identifier

* parameter[10].name = #mothersPHN
* parameter[10].use = #in
* parameter[10].min = 0
* parameter[10].max = "1"
* parameter[10].documentation = "Patient mother's PHN."
* parameter[10].type = #string

* parameter[11].name = #identifiersOnly
* parameter[11].use = #in
* parameter[11].min = 0
* parameter[11].max = "1"
* parameter[11].documentation = "Instruct the Client Registry to return Patient Identifiers only when true.  If not present, defauts to false."
* parameter[11].type = #boolean



