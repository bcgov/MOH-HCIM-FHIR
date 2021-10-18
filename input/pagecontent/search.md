### Find Candidates Search
The Find Candidates interaction uses the name and other criteria (e.g. date of birth) to find the client’s record and PHN via a “probabilistic search” in the Client Registry. In a probabilistic search, the outcome of the search cannot be predicted.

The Find Candidates transaction could return many matches depending on the information provided.

Specific search criteria include: 
- Surname; 
- Given names; 
- Date of birth; 
- Phone number; 
- Street address; or 
- Postal code. 

The Find Candidates is a synchronous request-response transaction.

### Get Demographics Search
This interaction is used to retrieve the most current demographic information (i.e., name, address, gender, date of birth, and date of death if applicable) from the Client Registry and confirm MSP eligibility for a specific person when the PHN is known. 

If the patient has a PHN, a ‘get’ is performed against the Client Registry and the demographics returned and displayed to the user.

Using Get Demographics is referred to as performing a “deterministic search”. In a deterministic search, the outcome of the search can be predicted. Get Demographics will return only one client record because there is only one client record that corresponds to the provided PHN.

The Get Demographics is a synchronous request-response transaction

### FHIR Structure for Searches
Below is a figure that shows the FHIR structure for the two searches.  The request is a Parameter resource and the response is a searchset Bundle with 0 or more Patients and one OperationOutcome.  The OperationOutcome is where you'll find warnings and errors regarding the search.

<span width="100%">
![FHIR Structure - Searches](searches_fhir.png "FHIR Structure for Searches")
</span>

Client Registry FHIR searches do not support parameters found in the FHIR international specification: _content, _id, _lastUpdated, _profile, _query, _security, _source, _tag, _text and _filter.  As well modifiers, prefixes, search hierarchies, chained parameters, reverse chaining, sorting, paging, includes, revincludes, 

>Shamil reviewed PLR IG and wanted more like the above in the IG - lists of FHIR features our FHIR sever will not support in words and in the capability statement.  I'm not sure we want to make lists like the above all over the place in here.  It may be easier to say "This is what we support, nothing else."

#### Get Demographics Parameters In

The IN search parameters for Get Demographics are as follows.

Parameter Name|Parameter Value|Comments
:---|:---|:---
identifier|**Not sure need to include the structure for PHN, SSRIs**
withHistory|parameter.value[boolean]|True or false

#### Get Demographics Out Bundle

This is a searchset Bundle.  The Bundle will contain a search score (entry.search.score) directly copied from the EMPI (not scaled between 0 and 1 as the international FHIR specification states).

Bundle Entry|Comments
:---|:---
OperationOutcome resource|This resource contains the search warnings and errors
Patient resource|For Get Demographics there may be 0 Patients if no match is found
Parameters resource|These are the search parameters echoed back
2nd Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

#### Find Candidates In

The IN search parameters for Find Candidates are as follows.

Parameter Name|Parameter Value|Comments
:---|:---|:---
address|parameter.value[Address]|Includes: country, state, city, postalCode, line, use, type|
gender|parameter.value[code]|Includes codes: female, male or other
birthTime|parameter.value[dateTime]|Date and time of birth
deceasedTime|parameter.value[dateTime]|Date and time of passing
name|parameter.value[HumanName]|Includes: family, multiple given and use code
telephone|parameter.value[ContactPoint]|Includes: use and value
mothersPHN|parameter.value[string]|PHN
returnIdentifiersOnly|parameter.value[boolean]|If true, instructs Client Registry to return Patients with only their identifiers

>Does FC use wildcards?

>Is birthTime date or dateTime?

>Is deceasedTime date or dateTime?

#### Find Candidate Out Bundle
This is a searchset Bundle with the EMPI score copied directly into entry.search.score with no scaling.

Bundle Entry|Comments
:---|:---
OperationOutcome resource|This resource contains the search warnings and errors
Patient resource|There may be 0 or more
Parameters resource|These are the search parameters echoed back
2nd Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

#### Search Score
In a searchset Bundle the entry.search.score attribute in FHIR is a decimal number between and including 0 and 1.  The Client Registry FHIR profile is non-conformant as the score returned by the EMPI doesn't map well into the 0 to 1 range.  Therefore the EMPI match score will be returned as is allowing users to continue to interpret this score as they currently do.

