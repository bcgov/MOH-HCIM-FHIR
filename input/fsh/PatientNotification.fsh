Instance: PatientNotification
InstanceOf: OperationDefinition
Description: "This operation is used notify a user that a patient's record has chagned."
Usage: #definition
* id = "bc-patient-notification"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-notification"
* name = "PatientNotification"
* title = "Patient Notification"
* status = #draft
* kind = #operation
* code = #PatientNotification
* resource[0] = #Patient
* system = false
* type = true
* instance = true
* inputProfile = Canonical(BCPatientBusinessParameters)

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
* parameter[2].name = #sender
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Source of request"
* parameter[2].type = #Identifier
* parameter[3].name = #patient
* parameter[3].use = #in
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "The Patient."
* parameter[3].type = #Patient

