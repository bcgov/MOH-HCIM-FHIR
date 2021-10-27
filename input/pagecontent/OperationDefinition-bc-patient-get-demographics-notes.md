The response is a Bundle and the entries hold the: 
* input parameters echoed back in a Parameters resource, 
* the matched patients in a Patients resource and 
* an OperationOutcome resource with any errors or warnings.

The response may not include any Patients if none matched the criteria.  If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the EMPI score.

See [Get Demographics response](StructureDefinition-bc-search-response-bundle.html)

