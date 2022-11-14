Instance: MergePatient
InstanceOf: OperationDefinition
Description: "This operation is used to merge patients."
Usage: #definition
* id = "bc-patient-merge"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-merge"
* name = "MergePatient"
* title = "Merge Patient"
* status = #draft
* kind = #operation
* code = #MergePatient
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(MergeRequestBundle)
* outputProfile = Canonical(MergeResponseBundle)

* parameter[0].name = #MergeRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The merge request Bundle."
* parameter[0].type = #Bundle

* parameter[1].name = #MergeResponseBundle
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "The merge response Bundle."
* parameter[1].type = #Bundle


