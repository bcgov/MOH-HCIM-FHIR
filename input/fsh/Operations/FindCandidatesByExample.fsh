Instance: FindCandidates
InstanceOf: OperationDefinition
Description: "This operation is used to query for a patient.  The response can contain 0 or more Patients."
Usage: #definition
* id = "bc-patient-find-candidates"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-find-candidates"
* name = "FindCandidatesByExample"
* title = "Find Candidates By Example"
* status = #active
* kind = #query
* code = #FindCandidates
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(FindCandidatesRequestBundle)
* outputProfile = Canonical(SearchResponseBundle)

* parameter[0].name = #FindCandidatesRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The FindCandidates operation request Bundle."
* parameter[0].type = #Bundle

* parameter[1].name = #SearchResponseBundle
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "The FindCandidates operation response Bundle."
* parameter[1].type = #Bundle




