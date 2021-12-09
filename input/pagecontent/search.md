><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

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

### Get Demographics Search

This interaction is used to retrieve the most current demographic information (i.e., name, address, gender, date of birth, and date of death if applicable) from the Client Registry if the PHN is known. 

If the patient has a PHN, a ‘get’ is performed against the Client Registry and the demographics returned and displayed to the user.

Using Get Demographics is referred to as performing a “deterministic search”. In a deterministic search, the outcome of the search can be predicted. Get Demographics will return only one client record because there is only one client record that corresponds to the provided PHN.

The Get Demographics is a synchronous request-response transaction

#### Get Demographics Search with Eligibility

There is a special operation when the user is requesting a GetDemographics search and also requesting that the Client Registry query an external site for the British Columbia insurance status of a Patient.  This a different FHIR Operation than GetDemographics.

### FHIR Structure for Searches

Below is a figure that shows the FHIR structure for the two searches.  The request is a Parameter resource and the response is a searchset Bundle with 0 or more Patients and one OperationOutcome.  The OperationOutcome is where you'll find warnings and errors regarding the search.

<span>
	<img src="searches_fhir.png" height="275"/>
</span>


#### Get Demographics Parameters

The IN and OUT search parameters and resources for Get Demographics can be found here [GetDemographics search](OperationDefinition-bc-patient-get-demographics.html).  For the withEligibility search see [GetDemographics.withEligibility](OperationDefinition-bc-patient-get-demographics-withEligibility.html).

#### Find Candidates Parameters

The IN and OUT search parameters for Find Candidates can be found here 
[FindCandidates search](OperationDefinition-bc-patient-find-candidates.html).

#### Search Score
In a searchset Bundle the entry.search.score attribute in FHIR is a decimal number between and including 0 and 1.  The Client Registry FHIR profile is non-conformant as the score returned by the Client Registry doesn't map well into the 0 to 1 range.  Therefore the Client Registry match score will be returned as is allowing users to continue to interpret this score as they currently do.

