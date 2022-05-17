Instance: FindCandidates
InstanceOf: OperationDefinition
Description: "This operation is used to query for a patient.  The response can contain 0 or more Patients."
Usage: #definition
* id = "bc-patient-find-candidates"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-find-candidates"
* name = "FindCandidatesByExample"
* title = "Find Candidates By Example"
* status = #draft
* kind = #query
* code = #FindCandidates
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(FindCandidatesRequestBundle)

* parameter[0].name = #messageId
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Unique message ID in Parameters entry of the Bundle."
* parameter[0].type = #string
* parameter[0].searchType = #string

* parameter[1].name = #messageDateTime
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Message date and time in Parameters entry of the Bundle."
* parameter[1].type = #dateTime

* parameter[2].name = #sender
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Message sender in Parameters entry of the Bundle."
* parameter[2].type = #Identifier

* parameter[3].name = #enterer
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "UserId of enterer in Parameters entry of the Bundle."
* parameter[3].type = #Identifier

* parameter[4].name = #identifiersOnly
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Instruct the Client Registry to return Patient Identifiers only when true.  If not present, defaults to false.  This is located in the Parameters entry of the Bundle."
* parameter[4].type = #boolean

* parameter[5].name = #patient
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Patient resource as Bundle entry."
* parameter[5].type = #Patient

* parameter[6].name = #mothersPHN
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Patient mother's PHN as RelatedPerson.Identifier in Bundle."
* parameter[6].type = #RelatedPerson




