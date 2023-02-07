Patient is a core resource of the Client Registry FHIR implementation.  Patients are returned by queries ([Find Candidates](OperationDefinition-bc-patient-find-candidates.html) and [Get Demographics](OperationDefinition-bc-patient-get-demographics.html)) and modified or updated by [AddPatient](OperationDefinition-bc-patient-add.html), [RevisePatient](OperationDefinition-bc-patient-revise.html) and [MergePatient](OperationDefinition-bc-patient-merge.html) FHIR Operations. This profile primarily adds extensions to elements that the core Patient resource does not include such as business dates.


><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

