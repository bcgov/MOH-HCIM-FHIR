Instance: AddPatient
InstanceOf: OperationDefinition
Description: "This operation is used for newborns or to 'force create' a patient."
Usage: #definition
* id = "bc-patient-add"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-add"
* name = "AddPatient"
* title = "AddPatient"
* status = #draft
* kind = #operation
* code = #AddPatient
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(AddRequestBundle)
* outputProfile = Canonical(AddResponseBundle)

* parameter[0].name = #AddRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The AddPatient operation request Bundle."
* parameter[0].type = #Bundle

* parameter[1].name = #AddResponseBundle
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "The AddPatient operation response Bundle."
* parameter[1].type = #Bundle


