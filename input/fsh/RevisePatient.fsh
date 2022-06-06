Instance: RevisePatient
InstanceOf: OperationDefinition
Description: "This operation is used to revise a patient's demographics."
Usage: #definition
* id = "bc-patient-revise"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-revise"
* name = "RevisePatient"
* title = "Revise Patient"
* status = #draft
* kind = #operation
* code = #RevisePatient
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(ReviseRequestBundle)
* outputProfile = Canonical(ReviseResponseBundle)

* parameter[0].name = #ReviseRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The RevisePatient operation request Bundle."
* parameter[0].type = #Bundle

* parameter[1].name = #ReviseResponseBundle
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "The RevisePatient operation response Bundle."
* parameter[1].type = #Bundle


