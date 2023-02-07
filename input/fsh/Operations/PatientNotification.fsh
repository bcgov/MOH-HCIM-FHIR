Instance: PatientNotification
InstanceOf: OperationDefinition
Description: "This operation is used notify a user that a patient's record has changed."
Usage: #definition
* id = "bc-patient-notification"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-notification"
* name = "PatientNotification"
* title = "Patient Notification"
* status = #draft
* kind = #operation
* code = #PatientNotification
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(ReviseRequestBundle)

* parameter[0].name = #ReviseRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The request bundle."
* parameter[0].type = #Bundle

