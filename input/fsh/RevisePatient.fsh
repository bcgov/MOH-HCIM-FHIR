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
* parameter[2].name = #patient
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "The Patient."
* parameter[2].type = #Patient
* parameter[3].name = #enterer                                                              
* parameter[3].use = #in                                                                    
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "UserId of sender."
* parameter[3].type = #Identifier

