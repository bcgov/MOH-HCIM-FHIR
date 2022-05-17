Instance: MergePatient
InstanceOf: OperationDefinition
Description: "This operation is used to merge patients."
Usage: #definition
* id = "bc-patient-merge"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-merge"
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

* parameter[0].name = #messageId
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Unique message ID."
* parameter[0].type = #string

* parameter[1].name = #messageDate
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Message date and time."
* parameter[1].type = #string

* parameter[2].name = #sender
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Requesting organization."
* parameter[2].type = #Identifier

* parameter[3].name = #enterer
* parameter[3].use = #in                                                        
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "UserId of sender."
* parameter[3].type = #Identifier

* parameter[4].name = #patient
* parameter[4].use = #in
* parameter[4].min = 1
* parameter[4].max = "1"
* parameter[4].documentation = "The Patient with merge information."
* parameter[4].type = #Patient

