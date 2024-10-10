
Patient is a core resource of the Client Registry FHIR implementation.  Patients are returned by queries ([Find Candidates](OperationDefinition-bc-patient-find-candidates.html) and [Get Demographics](OperationDefinition-bc-patient-get-demographics.html)) and modified or updated by [AddPatient](OperationDefinition-bc-patient-add.html), [RevisePatient](OperationDefinition-bc-patient-revise.html) and [MergePatient](OperationDefinition-bc-patient-merge.html) FHIR Operations. This profile primarily adds extensions to elements that the core Patient resource does not include such as business dates.

In the context of the Get Demographics request message, the Patient resource must have either a resource id ( Patient.id) or an identifier(Patient.identifier) in the same request. If they are both supplied the message will be rejected.

In the context of the Revise Person and Merge request message, the Patient resource must have an effective date (which is the business date when the patient presented for service, not a real time date).

