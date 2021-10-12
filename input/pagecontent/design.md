><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

# Client Registry FHIR Design

See [Terminology](terminology.md) for definitions

## Design Approach
- The design team matched current Client Registry interactions 1 to 1 with equivalent FHIR interactions for all the flavours of:
	- Find Candidates
	- Get Demographics
	- Revise Patient
	- Merge Patient
	- Distribute Patient
- Asynchronous interaction will be supported
- New attributes will be included in FHIR that are not in V3 (such as more business dates)

## Design Assumptions
- FHIR is not expected to adversely affect performance, i.e. SLA is not changing for FHIR but will be extended to include FHIR
- Existing interfaces, such as V3, will not be deprecated and users can use a combination of V3 and FHIR to meet their needs
> Not sure if this is true, will users be able to use FHIR and V3 in some sort of combination?  I.e. Get Demo in FHIR than V# for Revise Patient?
- The Client Registry FHIR design will become a Provincial standard
- Asynchronous interactions will follow the same pattern as V3

## Design Outcomes - Overview
- The primary resource is Patient and Patient shall be used to communicate client attributes
- The JSON text format shall be used to receive and transmit FHIR resources
- FHIR Operations shall be used for Client Registry interactions
>RESTful interfaces will not be implemented for FHIR
- The Parameters resource used in Operations may include Patient resources as well as name value pair parameters such as search parameters or unique message identifiers and creation times
- Some FHIR extensions are necessary

### Patient Resource
All interactions will primarily use the Patient resource.  The Patient resource is ideal to represent clients as Patients has almost all of the necessary attributes and will require only a few extensions.  Patients also are recommended for enterprise master patient indices by the HL7 group and is in a Normative state, i.e. stable and ready for implementation.  See [FHIR standards evolution](http://hl7.org/fhir/versions.html#std-process) for a description of Normative. 

#### Patient Extensions
There are several extensions that are applied to the Patient resource.  The list below is an overview, more details on the extensions can be found be following the links on the Patient snapshot page.

Extension Name | Description | 
:--- | :--- |
Death valid flag | A boolean extension that indicates is the client's death has been verified by ...
Client effective date | A Period extension at the Patient level that represents the entire record
Address validation status | A code that represents the address validation status.  This will be part of every Patient.address

>There are more extensions, need to fill this in

#### Terminologies, CodeableConcepts, Codes and Value Sets

>Describe all the value sets being used and where we are using something different, I need help in this section

Attribute | Value Sets
:---|:---
Patient.name.use|<span style="color:red">Not sure how FHIR maps to Client Registry, is Legal the only code used?</span>
Patient.telecom.use|home, work, mobile are used and temp, old not allowed
Patient.telecom.system|phone or email are allowed, not the others
Patient.gender|male, female, unknown and other not allowed but <span style="color:red">Not sure</span>
Patient.address.type|postal and physical are used.  both not allowed
Patient.address.use|<span style="color:red">I think this is inferred to be always home</span>
Patient.identifier.system|<span style="color:red">Not sure</span>
Patient.identifier.type|<span style="color:red">Not sure</span>
Patient.identifier.use|<span style="color:red">Not sure</span>

### FHIR Operations
Client Registry will use the FHIR Operations pattern to exchange information.  These are the Operations that Client Registry FHIR will support:

Operations |
:--- |
https://..../$FindCandidates |
https://..../$GetDemographics |
https://..../$GetDemographics.History |
https://..../$RevisePatient |
https://..../$RevisePatient.Newborn |
https://..../$RevisePatient.Async |
https://..../$MergePatient |
https://..../$MergePatient.Async |

Suffixes such as History and Async inform the Client Registry FHIR server to perform the operation in a particular way such as returning historical attributes or responding asynchronously.

#### Requests
The body of the request message will vary depending on the business context however all message bodies will consist of at least one Parameter resource which in turn includes two Parameter resources.  The first Parameter.Parameter will hold operation information such as unique identifiers for the message, creation time, sender, receiver, enterer, etc  The second Parameter.Parameter resource will contain all the business information such as search parameters, resources like Patient, etc.

![FHIR Structure - Nested Parameters](design_nestedParameters.png "Nested Parameters")

#### Responses

Response resources are wrapped in Bundles that contain Patients and a OperationOutcome.  A search operation like Get Demographics or Find Candidates will be a searchset Bundle that echoes back the search parameters by including a Parameters resource in the Bundle.

## Design Outcomes - Details

This guide touches on some of the business and conformance rules regarding use of the Client Registry.  However this guide is not the source of conformance or business rules and the audience is referred to British Columbia's [Health Information Exchange](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software) web site for details on the Client Registry system and access to Client Registry.

### Operational Parameter Resource
As stated above each Parameter resource will contain two additional Parameter resources:  one for message operational attributes and the second for business elements.  Below are the allowed IN and OUT parameters for the operational Parameter resources.  These should be common to all messages.

Parameter Name|Parameter Value|Comments
:---|:---|:---
message id|parameter.value[string]|Message (unique) id
create time|parameter.value[dateTime]|Creation date of message
request message id|parameter.value[string]|Message (unique) id

### Searches
There are two searches available for Client Registry FHIR, Find Candidates and Get Demographics.  The operations are:

Search Operations |
:--- |
https://…./$FindCandidates |
https://…./$GetDemographics |
https://…./$GetDemographics.History |

Find Candidates may return 0 or more candidates, while Get Demographics is designed to return a single match.  These searches are expected to provide the required information to confirm a person's identify.

#### Find Candidates Search
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

#### Get Demographics Search
This interaction is used to retrieve the most current demographic information (i.e., name, address, gender, date of birth, and date of death if applicable) from the Client Registry and confirm MSP eligibility for a specific person when the PHN is known. 

If the patient has a PHN, a ‘get’ is performed against the Client Registry and the demographics returned and displayed to the user.

Using Get Demographics is referred to as performing a “deterministic search”. In a deterministic search, the outcome of the search can be predicted. Get Demographics will return only one client record because there is only one client record that corresponds to the provided PHN.

The Get Demographics is a synchronous request-response transaction

#### FHIR Structure for Searches
Below is a figure that shows the FHIR structure for the two searches.  The request is a Parameter resource and the response is a searchset Bundle with 0 or more Patients and one OperationOutcome.  The OperationOutcome is where you'll find warnings and errors regarding the search.

![FHIR Structure - Searches](searches_fhir.png "FHIR Structure for Searches")

Client Registry FHIR searches do not support parameters found in the FHIR international specification: _content, _id, _lastUpdated, _profile, _query, _security, _source, _tag, _text and _filter.  As well modifiers, prefixes, search hierarchies, chained parameters, reverse chaining, sorting, paging, includes, revincludes, 

>Shamil reviewed PLR IG and wanted more like the above in the IG - lists of FHIR features our FHIR sever will not support in words and in the capability statement.  I'm not sure we want to make lists like the above all over the place in here.  It may be easier to say "This is what we support, nothing else."

##### Get Demographics Parameters In

The IN search parameters for Get Demographics are as follows.

Parameter Name|Parameter Value|Comments
:---|:---|:---
identifier|<span style="color:red">Not sure need to include the structure for PHN, SSRIs</span>
withHistory|parameter.value[boolean]|True or false

##### Get Demographics Out Bundle

This is a searchset Bundle.  The Bundle will contain a search score (entry.search.score) directly copied from the EMPI (not scaled between 0 and 1 as the international FHIR specification states).

Bundle Entry|Comments
:---|:---
OperationOutcome resource|This resource contains the search warnings and errors
Patient resource|For Get Demographics there may be 0 Patients if no match is found
Parameters resource|These are the search parameters echoed back
2nd Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

##### Find Candidates In

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

##### Find Candidate Out Bundle
This is a searchset Bundle with the EMPI score copied directly into entry.search.score with no scaling.

Bundle Entry|Comments
:---|:---
OperationOutcome resource|This resource contains the search warnings and errors
Patient resource|There may be 0 or more
Parameters resource|These are the search parameters echoed back
2nd Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

#### Search Score
In a searchset Bundle the entry.search.score attribute in FHIR is a decimal number between and including 0 and 1.  The Client Registry FHIR profile is non-conformant as the score returned by the EMPI doesn't map well into the 0 to 1 range.  Therefore the EMPI match score will be returned as is allowing users to continue to interpret this score as they currently do.

## Revise and/or Merge Patient

Revise and Merge Patient are maintain transactions that are closely related and therefore are described in the same section.  They use the same FHIR structure and resources; merge will have additional parameters.

Revise and Merge Operations |
:--- |
https://..../$RevisePatient |
https://..../$RevisePatient.Async |
https://..../$RevisePatient.Newborn |
https://..../$MergePatient |
https://..../$MergePatient.Async |

These business transactions will allow the user to:
- update demographic information, if the patient exists within the Client Registry; or
- generate a PHN for a new client.

### Revise Patient

The Revise Patient interaction is used to add or update client information in the Client Registry.  If the demographics are updated on the POS application, a ‘Revise Patient’ message must be automatically generated to the Client Registry. 

An add is defined as an event where at least the minimum Client Registry data elements are gathered for the first time, validated using trusted identification provided by the client and a new PHN and client record is created. 

An update is defined as an event where at least the minimum Client Registry data elements of an existing client with a PHN are verified using trusted identification provided by the client and updated. 

The Client Registry treats the incoming Revise Patient as a complete snapshot of the source record. If the POS application sends a blank attribute to the Client Registry, that attribute in the source’s record in the Client Registry will be terminated. 

To prevent the termination of certain attributes in the composite view, the POS application must first query the Client Registry and resend in a Revised Person message any attributes that were returned on the query that are not maintained in the local system.

### Merge Patient

The Merge Patient transaction is used to merge duplicate records in the Client Registry. 

If the records are merged on the POS application, a ‘Merged Patient’ message must be automatically generated to the Client Registry. 

If the demographics are updated at the same time as the merge, the demographic update will be processed as a second ‘Revised Patient’ interaction was requested and will update the demographics once the merge is complete. 

The record the POS is keeping must be in the EMPI prior to the merge or the Merge Person message will fail. This record is known as the ‘survivor’ record.

### Asynchronous Operations
The asynchronous pattern for Revise and Merge Patient follow the same pattern as V3.  That is 

client -> request to Client Registry -> Client Registry responds with OK

Client Registry -> late, request to client with response

The interactions are associated by the unique message id in the Parameters resource.  The client must create a FHIR Operation end point to receive the responses at a later time.

>What is the response end point?  Will it be https://..../$RevisePatient.Async ?

![FHIR Structure - Revise_Merge](revise_merge_fhir.png "FHIR Structure for Revise and Merge")

### Newborn

Newborn events use the RevisePatient.Newborn operation; a parameter, 'mothersPHN' is included.

### Merge Patient

Merge events use the MergePatient operation; a parameter, 'relatedPerson' is included to identify the non-survivors.

### Revise Patient IN

Parameter Name|Parameter Value|Comments
:---|:---|:---
patient|Patient resource|A Patient resource

### Revise Patient Newborn IN

Parameter Name|Parameter Value|Comments
:---|:---|:---
patient|Patient resource|A Patient resource representing newborn
mothersPHN|parameter.value[string]|The mothers PHN

### Merge Patient IN

Parameter Name|Parameter Value|Comments
:---|:---|:---
patient|Patient resource|A Patient resource that for Merge is the surviving client
relatedPerson|parameter.value[Identifier]|<span style="color:red">Is this Identifier or something else?</span>

### Revise Patient OUT Bundle

The Bundle type is collection.

Bundle Entry|Comments
:---|:---
Patient resource|A Patient resource
OperationOutcome|Information about the operation; warnings and errors.
Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

### Revise Patient Newborn OUT Bundle

The Bundle type is collection.

Bundle Entry|Comments
:---|:---
Patient resource|A Patient resource, the newborn
OperationOutcome|Information about the operation; warnings and errors.
Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

### Merge Patient OUT Bundle

The Bundle type is collection.

Bundle Entry|Comments
:---|:---
Patient resource|A Patient resource, the survivor
OperationOutcome|Information about the operation; warnings and errors.
Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

## Distributions

See Revise Patient; the Distribution message is a Revise Patient interaction sent to a consumer of client data.  However the expected success response is a HTTP code 200 without a body.  The RevisePatient.Newborn and RevisePatient.Async are not included in Distributions.
>The distributions are really a different set of requirements.  These are not part of the Client Registry FHIR design, but what we require from clients to successfully accept distribution interactions from the Client Registry.
