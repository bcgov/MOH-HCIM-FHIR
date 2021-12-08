The response is a Bundle and the entries hold the: 
* input parameters echoed back in a Parameters resource, 
* the matched patients in Patient resources and 
* an OperationOutcome resource with any errors or warnings.
* a Coverage resource with eligibillity value, status and business dates

The response may not include any Patients if none matched the criteria.  If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the Client Registry score.  The coverage resource 

See [Get Demographics with Eligibility response](StructureDefinition-bc-search-withEligibiliy-response-bundle.html)

