><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

Patient History is a FHIR Operation.  This is only a GET Operation with no input parameters. This Operation is equivalent to the $GetDemographics using the withHistory parameter.  See this page [$GetDemographics paramters](OperationDefinition-bc-patient-get-demographics.html#metadata-in-parameters).

The response is a regular search response Bundle (a collection) with a Patient and/or OperationOutcome.
