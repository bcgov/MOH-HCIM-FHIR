Instance: Merge
InstanceOf: OperationDefinition
Description: "This operation is used to merge patients."
Usage: #definition
* id = "bc-patient-merge"
* url = "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-merge"
* name = "MergePatient"
* title = "Merge Patient"
* status = #draft
* kind = #operation
* code = #Merge
* resource[0] = #Patient
* system = false
* type = true
* instance = false
* inputProfile = Canonical(Parameters)
* inputProfile = Canonical(Parameters)
* outputProfile = Canonical(Parameters)

* parameter[0].name = #source-patient
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "A direct resource reference to the source patient resource (this may include an identifier)."
* parameter[0].type = #Patient

* parameter[1].name = #source-patient-identifier
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "When source-patient-identifiers are provided, the server is expected to perform an internal lookup to identify the source patient record. The server SHALL reject the request if the provided identifiers do not resolve to a single patient record. This resolution MAY occur asynchronously, for example, as a part of a review by a user."
* parameter[1].type = #Identifier

* parameter[1].name = #target-patient
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "A direct resource reference to the target patient resource. This is the surviving patient resource, the target for the merge."
* parameter[1].type = #Patient

* parameter[1].name = #target-patient-identifier
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "When target-patient-identifiers are provided, the server is expected to perform an internal lookup to identify the target patient record. The server SHALL reject the request if the provided identifiers do not resolve to a single patient record. This resolution MAY occur asynchronously, for example, as a part of a review by a user."
* parameter[1].type = #Identifier

* parameter[1].name = #result-patient
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "The details of the Patient resource that is expected to be updated to complete with and must have the same patient.id and provided identifiers included. This resource MUST have the link property included referencing the source patient resource. It will be used to perform an update on the target patient resource. In the absence of this parameter the servers should copy all identifiers from the source patient into the target patient, and include the link property. This is often used when properties from the source patient are desired to be included in the target resource. The receiving system may also apply other internal business rules onto the merge which may make the resource different from what is provided here."
* parameter[1].type = #Patient

* parameter[1].name = #return
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "The Parameters resource will include: The Input parameters to the operation, An OperationOutcome containing errors, warnings, and information messages, The resulting merged Patient resource (or a patient reference if the patient is not committed), Optionally a Task resource to track any additional processing that was required."
* parameter[1].type = #Parameters

