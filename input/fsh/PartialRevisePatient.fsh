Instance: PartialUpdatePatient
InstanceOf: OperationDefinition
Description: "This operation is used to update a patient's demographics, applied to only specific Patient attributes."
Usage: #definition
* id = "bc-patient-update"
* url = "http://hl7.org/fhir/ca-bc/client/OperationDefinition/bc-patient-update"
* name = "PartialUpdatePatient"
* title = "Partial Update Patient"
* status = #draft
* kind = #operation
* code = #PartialUpdatePatient
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(PartialUpdateRequestBundle)
* outputProfile = Canonical(ReviseResponseBundle)

* parameter[0].name = #UpdatePatientRequestBundle
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Update request Bundle."
* parameter[0].type = #Bundle

* parameter[1].name = #RevisePatientResponseBundle
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Update response Bundle (which is the ReviseResponseBundle)."
* parameter[1].type = #Bundle
