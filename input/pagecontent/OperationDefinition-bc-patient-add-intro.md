><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

Add Patient is a FHIR Operation.  ‘force create’ and newborn interactions can be done with Add Patient Operation.

When adding a newborn the child's PHN is unknown (unassigned) and thus a RelatedPersion which identifies the mother is needed to process the request.


