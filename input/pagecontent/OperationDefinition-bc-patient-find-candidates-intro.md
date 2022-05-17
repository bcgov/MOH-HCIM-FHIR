><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

The Find Candidates query is a FHIR Operation.  

The request is a Bundle with Resources for search parameters (MetadataParameters), a Patient to match against and possibly a RelatedPerson representing the Mother with a PHN Identifier.  

The Patient Bundle entry is a [Patient by Example](StructureDefinition-bc-patient-by-example.html).  The patient is a constrained Patient resouce limited to the availabe search criteria.  See the Find Candiates [search design](search.html#find-candidates-search) for more details on the critera.
