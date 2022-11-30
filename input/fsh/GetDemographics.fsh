Instance: GetDemographics
InstanceOf: OperationDefinition
Description: "This operation is used to query for a patient.  The response can contain 0 or 1 Patient."
Usage: #definition
* id = "bc-patient-get-demographics"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-get-demographics"
* name = "GetDemographics"
* title = "GetDemographics"
* status = #draft
* kind = #query
* code = #GetDemographics
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(GetDemographicsRequestBundle)
* outputProfile = Canonical(SearchResponseBundle)

* parameter[0].name = #GetDemographicsRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "GetDemographics request Bundle."
* parameter[0].type = #Bundle

* parameter[1].name = #SearchResponseBundle
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "GetDemograponics response Bundle."
* parameter[1].type = #Bundle

