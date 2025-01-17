The FHIR Mimic R5 Merge Person feature is one that modifies the format of the existing R4 Merge Person interface so that it aligns closely with the R5 version of the FHIR specifications.

Some of the differences include:
* Identifier in the Parameters (source-patient-identifier) needs to include the [merge-status-extension](StructureDefinition-bc-merge-status-extension.html)
* Preview parameter is not allowed
* Merge Patient identifiers its own value set that allows official, secondary and old. Old will indicate non-survivors in the patient in the result-patient and only for merge patients.

#### Examples
 
See [Merge Patient request](Parameters-Merge-Request.html) example.
See [Merge Patient response](Parameters-Merge-Response.html) example.
