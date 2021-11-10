This Bundle profile applies to both Client Registry searches: Find Candidates and Get Demographics.  The type is collection and three entries are mandatory:  operationOutcome, paramtereRequest, and parameters.
1. OperationOutcome is for warning or error messages.
2. ParametersRequest echoes back the the search parameters provided in the request.
3. The Parameters is for the response meta data such as dateTime adn unique ID.
4. If Patients matched the search criteria one or more Patient resources may also be returned.

