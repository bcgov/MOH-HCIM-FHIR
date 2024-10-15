Instance: HistoryPatient
InstanceOf: OperationDefinition
Description: "This operation is used to return the historical attributes of a patient."
Usage: #definition
* id = "bc-patient-history"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-history"
* name = "HistoryPatient"
* title = "HistoryPatient"
* status = #draft
* kind = #operation
* code = #HistoryPatient
* resource[0] = #Patient
* system = false
* type = false
* instance = true
* outputProfile = Canonical(Bundle)

* parameter[0].name = #return
* parameter[0].use = #out
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The history operation response Bundle."
* parameter[0].type = #Bundle

