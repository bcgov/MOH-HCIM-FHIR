><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

The Find Candidates query is a FHIR Operation.  

The request is a Bundle with Resources for message meta data, a Patient to match against and possibly a RelatedPerson representing the Mother with a PHN Identifier. The response is a Bundle with Resources for Patient's that matched, response meta data, operation outcome resources and if using mother's PHN RelatedPerson resources.  

This is a 'search by example' and the Patient resource may be populated with various values and combinations of values. Those values are matched against the Client Registry. 

Please refer also to the [Identifiers](identifiers.html) page to find more details regarding how to use Identifier in your query.

For optimal searching and to be conformant with Health Information Exchange standards please review the Client Registry conformance standards found [here](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software/conformance-standards).  Those documents specify combinations of values that are best suited to find your Patients.

