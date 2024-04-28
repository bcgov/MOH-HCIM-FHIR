
### Find Candidates Search
The Find Candidates interaction uses the name and other criteria (e.g. date of birth) to find the client’s record and PHN via a “probabilistic search” in the Client Registry. In a probabilistic search, the outcome of the search cannot be predicted.

The Find Candidates transaction could return many matches depending on the information provided.

Specific search criteria include: 
- Name (Given *and* Surname); 
- Date of birth; 
- Phone number; 
- Street address; or 
- Postal code.
- Mother's PHN

The Mother's PHN can be used alone and will return the mother and children.  Otherwise, name is mandatory with at least one of date of birth, address number and street, postal code or phone number

The Find Candidates is a synchronous request-response transaction.

Find Candidates uses a, search by example, pattern.  I.e. the request will contain an example Patient with attributes like name, date of birth, etc populated.  HCIM will search for Patients similar to the Patient in the request.  If desired the user can omit the Patient and use a RelatedPerson resource that represents the Mother and contains (in the identifier) the Mother's PHN.  More details are in the [request Bundle](StructureDefinition-bc-find-candidates-request-bundle.html) and [response Bundle](StructureDefinition-bc-search-response-bundle.html) definitions.

### Get Demographics Search

This interaction is used to retrieve the most current demographic information (i.e., name, address, gender, date of birth, and date of death if applicable) from the Client Registry if the PHN is known. 

If the patient has a PHN or other identifier, a ‘get’ is performed against the Client Registry and the demographics returned and displayed to the user.

Using Get Demographics is referred to as performing a “deterministic search”. In a deterministic search, the outcome of the search can be predicted. Get Demographics will return only one client record because there is only one client record that corresponds to the provided Identifier.

The Get Demographics is a synchronous request-response transaction.

More details can be found in the [request Bundle](StructureDefinition-bc-get-demographics-request-bundle.html) and [response Bundle](StructureDefinition-bc-search-response-bundle.html) definitions.


### FHIR Structure for Searches

Below is a figure that shows the FHIR structure for the two searches.  The request is a collection Bundle resource and the response is a searchset Bundle with 0 or more Patients and one OperationOutcome.  The OperationOutcome is where you'll find warnings and errors regarding the search.

<span>
	<img src="searches_fhir.png" height="300"/>
</span>


#### Get Demographics Parameters

The IN and OUT search parameters and resources for Get Demographics can be found here [GetDemographics search](OperationDefinition-bc-patient-get-demographics.html).

#### Find Candidates Parameters

The IN and OUT search parameters for Find Candidates can be found here 
[FindCandidates search](OperationDefinition-bc-patient-find-candidates.html).

#### Search Score
In a searchset Bundle the entry.search.score attribute in FHIR is a decimal number between and including 0 and 1.  The Client Registry FHIR profile is non-conformant as the score returned by the Client Registry doesn't map well into the 0 to 1 range.  Therefore the Client Registry match score will be returned as is allowing users to continue to interpret this score as they currently do.

