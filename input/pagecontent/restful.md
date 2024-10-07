
### RESTful Find
The RESTful Find uses the name and other criteria (e.g. date of birth) to find the client’s record and PHN via a “probabilistic search” in the Client Registry. In a probabilistic search, the outcome of the search cannot be predicted.

RESTful Find can return many matches depending on the information provided.

Specific search criteria include: 
- Name (Given *and* Surname); 
- Date of birth; 
- Phone number; 
- Street address; or 
- Postal code.

Name is mandatory with at least one of date of birth, address number and street, postal code or phone number

Find is a synchronous request-response transaction.

Request-ID information is passed via HTTP headers for FHIR RESTful messaging.

The following parameters are supported (all parameters must be URL encoded):
- Family
- Given
- Gender
- Birthdate
- Address-line
- Address-city
- Address-province
- Address-postalcode
- Address-country
- Phone
- Email

The RESTful API path incorporates the URN pattern "[baseURL]/Patient?family=[LastName]&given=[FirstName]&gender=[Gender]&birthdate=[BirthDate]&address-line=[AddressLine1]&address-city=[City]&address-province=[Province]&address-country=[Country]&phone=[Phone]&email=[Email]".

Note that Find by Mothers PHN, multiple given names and multiple address lines is not supported via RESTful.

More details are in the [response Bundle](StructureDefinition-bc-search-response-bundle.html) definitions.

### RESTful Get

RESTful Get retrieves the most current demographic information (i.e., name, address, gender, date of birth, and date of death if applicable) from the Client Registry if the PHN is known. 

If the patient has a PHN or other identifier, a ‘get’ is performed against the Client Registry and the demographics returned and displayed to the user.

Using Get is referred to as performing a “deterministic search”. In a deterministic search, the outcome of the search can be predicted. Get will return only one client record because there is only one client record that corresponds to the provided Identifier.

The Get Demographics is a synchronous request-response transaction.

The RESTful API path incorporates the URN pattern /Patient/[phn]. RESTful Get supports the use of the identifier parameter for searches that do not use the resource locator. Identifier parameter is a token that passes both the source system and identifier in the format system|value. 
The URN pattern [baseURL]/Patient?identifier=[Identifier].

The resourceId mst be passed via HTTP headers for the FHIR RESTful messaging.

The passing of the history and identifiers only interaction parameters is supported via the HTTP URL as a suffix using the format
[baseURL]/Patient/[interaction]?identifier=[Identifier]. Where the valid interactions for a RESTful Get are "_history" and "_identifiersOnly".

More details can be found in the [response Bundle](StructureDefinition-bc-search-response-bundle.html) definitions.


### RESTful Get Examples

GET|
:---|:---
Search by PHN|https://hd2broker.hcim.ehealth.gov.bc.ca/Patient/?identifier=https%3A%2F%2Ffhir.infoway-inforoute.ca%2FNamingSystem%2Fca-bc-patient-healthcare-id%7C[phn]
Search by PHN With History|https://hd2broker.hcim.ehealth.gov.bc.ca/Patient/?identifier=https%3A%2F%2Ffhir.infoway-inforoute.ca%2FNamingSystem%2Fca-bc-patient-healthcare-id%7C[phn]
Search by PHN Return Identifiers Only|https://hd2broker.hcim.ehealth.gov.bc.ca/Patient/?identifier=https%3A%2F%2Ffhir.infoway-inforoute.ca%2FNamingSystem%2Fca-bc-patient-healthcare-id%7C[phn]
Search by SRI|https://hd2broker.hcim.ehealth.gov.bc.ca/Patient/?identifier=https%3A%2F%2Fhealth.gov.bc.ca%2Ffhir%2FNamingSystem%2Fca-bc-fha-mt-source-patient-id%7C[sri]
Search by SSRI|https://hd2broker.hcim.ehealth.gov.bc.ca/Patient/?identifier=https%3A%2F%2Fhealth.gov.bc.ca%2Ffhir%2FNamingSystem%2Fca-bc-fha-arh-source-patient-id%7C[ssri]
Search by Resource ID|https://[baseURL]/Patient/[phn]
Search by Resource ID with History|https://[baseURL]/Patient/[phn]/_history
Search by Resource ID Return Identifiers Only|https://[baseURL]/Patient/[phn]/_history
{:.grid}

### RESTful Find Examples

FIND|
:---|:---
Search by Name and Address|https://[baseURL]/Patient/?family=[surname]&given=[firstname]&address-line=[addressLine1]
Search by Name and Phone|https://[baseURL]/Patient/?family=[surname]&given=[firstname]&phone=[phoneNumber]
Search by Name and Date of Birth|https://[baseURL]/Patient/?family=[surname]&given=[firstname]&birthdate=[birthDate]
{:.grid}


