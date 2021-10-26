The Find Candidates query is an Operation.  As such the request is a BCMetadataParameters resource where the request meta data and the search parameters are placed.  The response is a Bundle and the entries hold the: 
* input parameters echoed back in a Parameters resource, 
* the matched patients in a Patients resource and 
* an OperationOutcome resource with any errors or warnings.  

The response may not include any Patients if none matched the criteria.  If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the EMPI score.

Out structure:

Bundle Entry|Comments
:---|:---
OperationOutcome resource|This resource contains the search warnings and errors.
Patient resource|There may be 0 or more.
Parameters resource|These are the search parameters echoed back and the metadata.

>Can i specify the BCMetadataParameters in the OperationDefinition some how?  I.e. find candidates should only accept a BCMetadataParameters resource.

>Does FC use wildcards?

>Is birthTime date or dateTime?

>Is deceasedTime date or dateTime?

