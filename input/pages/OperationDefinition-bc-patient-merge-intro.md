><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

Merge Patient is a FHIR Operation.  

This operation needs the Patient.link.other field populated with an Identifier so the non-survivor Patients can be located.  There may be more than one set of Identifiers and each will be merged (if they represent more than a single non-surviving Patient).  See an example of linking the non-survivors [here](Bundle-Bundle-MergePatient-Request-Example.html).
