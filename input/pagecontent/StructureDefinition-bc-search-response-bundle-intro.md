This Bundle profile applies to both Client Registry searches: Find Candidates and Get Demographics.  The type is collection and two entries are mandatory:  operationOutcome and parameters.
1. OperationOutcome is for warning or error messages.
3. The Parameters is for the response meta data such as dateTime and unique ID.

If the search matched one or more Patients, then there will be Bundle entries for Patients.

If the search criteria used mother's PHN then RelatedPerson resources may be returned, representing the mother.
