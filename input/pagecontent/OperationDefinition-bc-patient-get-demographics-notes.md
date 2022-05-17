The response is a Bundle and the entries hold the: 
* input parameters echoed back in a Parameters resource, 
* the matched patients in a Patients resource,
* if the search was using a Mother's PHN there will be RelatedPerson resources in the response that contain the Mother's PHN and indicate a relationship to one of the returned Patients and
* an OperationOutcome resource with any errors or warnings.

The response may not include any Patients if none matched the criteria.  If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the Client Registry score.

See [Get Demographics response](StructureDefinition-bc-search-response-bundle.html)

