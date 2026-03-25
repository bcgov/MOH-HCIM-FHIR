Instance: PatientNotification
InstanceOf: OperationDefinition
Description: "This operation is used notify a user that a patient's record has changed."
Usage: #definition
* id = "bc-patient-notification"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-notification"
* name = "PatientNotification"
* title = "Patient Notification"
* status = #active
* kind = #operation
* code = #PatientNotification
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(SubscriptionNotificationBundle)
* parameter[0].name = #SubscriptionNotificationBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The specific bundle entries that are needed when the Client Registry is sending a distribution (notification)."
* parameter[0].type = #Bundle 

