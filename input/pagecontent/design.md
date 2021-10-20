>**Note**<br>This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

### Design Approach
- The design team matched current Client Registry interactions 1 to 1 with equivalent FHIR interactions for all the flavours of:
	- Find Candidates
	- Get Demographics
	- Revise Patient
	- Merge Patient
	- Distribute Patient
- Asynchronous interaction will be supported
- New attributes will be included in FHIR that are not in V3 (such as more business dates)

### Design Assumptions
- FHIR is not expected to adversely affect performance, i.e. SLA is not changing for FHIR but will be extended to include FHIR
- Existing interfaces, such as V3, will not be deprecated and users can use a combination of V3 and FHIR to meet their needs
> Not sure if this is true, will users be able to use FHIR and V3 in some sort of combination?  I.e. Get Demo in FHIR than V# for Revise Patient?
- The Client Registry FHIR design will become a Provincial standard
- Asynchronous interactions will follow the same pattern as V3
- Get Eligibility is not supported by FHIR (will still be supported by V3)

### Design Outcomes - Overview
- The primary resource is Patient and Patient shall be used to communicate client attributes
- The JSON text format shall be used to receive and transmit FHIR resources
- FHIR Operations shall be used for Client Registry interactions
>RESTful interfaces will not be implemented for FHIR
- The Parameters resource used in Operations may include Patient resources as well as name value pair parameters such as search parameters or unique message identifiers and creation times
- Some FHIR extensions are necessary

#### Patient Resource

All interactions will primarily use the Patient resource.  The Patient resource is ideal to represent clients as Patients has almost all of the necessary attributes and will require only a few extensions.  Patients also are recommended for enterprise master patient indices by the HL7 group and is in a Normative state, i.e. stable and ready for implementation.  See [FHIR standards evolution](http://hl7.org/fhir/versions.html#std-process) for a description of Normative. 

##### Patient Extensions

There are several extensions that are applied to the Patient resource.  The list below is an overview, more details on the extensions can be found be following the links on the Patient snapshot page.

Extension Name | Description | 
:--- | :--- |
Death valid flag | A boolean extension that indicates is the client's death has been verified by ...
Client effective date | A Period extension at the Patient level that represents the entire record
Address validation status | A code that represents the address validation status.  This will be part of every Patient.address
Gender business dates | A Period extension
Date of birth business dates | A Period extension
Date of death business dates | A Period extension
Death flag business dates | A period extension
PHN business dates | A period extension for PHN

##### Terminologies, CodeableConcepts, Codes and Value Sets

>Describe all the value sets being used and where we are using something different, I need help in this section

Attribute | Value Sets
:---|:---
Patient.name.use|**Not sure how FHIR maps to Client Registry, is Legal the only code used?**
Patient.telecom.use|home, work, mobile are used and temp, old not allowed
Patient.telecom.system|phone or email are allowed, not the others
Patient.gender|male, female, unknown and other not allowed but **Not sure**
Patient.address.type|postal and physical are used.  both not allowed
Patient.address.use|**I think this is inferred to be always home**
Patient.identifier.system|**Not sure**
Patient.identifier.type|**Not sure**
Patient.identifier.use|**Not sure**

#### FHIR Operations

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

##### Requests

The body of the request message will vary depending on the business context however all message bodies will consist of at least one Parameter resource which in turn includes two Parameter resources.  The first Parameter.Parameter will hold operation information such as unique identifiers for the message, creation time, sender, receiver, enterer, etc  The second Parameter.Parameter resource will contain all the business information such as search parameters, resources like Patient, etc.

The image below shows the nested Parameters.  The Operation Parameters are for message meta data like timestamps and unique identifiers.  The Business Parameters are for search parameters or resources such as Patient.

<span width="100%">
![FHIR Structure - Nested Parameters](design_nestedParameters.png "Nested Parameters")
</span>

##### Responses

Response resources are wrapped in Bundles that contain Patients and a OperationOutcome.  A search operation like Get Demographics or Find Candidates will be a searchset Bundle that echoes back the search parameters by including a Parameters resource in the Bundle.

### Design Outcomes - Details

This guide touches on some of the business and conformance rules regarding use of the Client Registry.  However this guide is not the source of conformance or business rules and the audience is referred to British Columbia's [Health Information Exchange](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software) web site for details on the Client Registry system and access to Client Registry.

#### Operational Parameter Resource
As stated above each Parameter resource will contain two additional Parameter resources:  one for message operational attributes and the second for business elements.  Below are the allowed IN and OUT parameters for the operational Parameter resources.  These should be common to all messages.

Parameter Name|Parameter Value|Comments
:---|:---|:---
message id|parameter.value[string]|Message (unique) id
create time|parameter.value[dateTime]|Creation date of message
request message id|parameter.value[string]|Message (unique) id

#### Searches
There are two searches available for Client Registry FHIR, Find Candidates and Get Demographics.  The operations are:

Search Operations |
:--- |
https://…./$FindCandidates |
https://…./$GetDemographics |
https://…./$GetDemographics.History |

Find Candidates may return 0 or more candidates, while Get Demographics is designed to return a single match.  These searches are expected to provide the required information to confirm a person's identify.

[Search page](search.html "Find Candidates and Get Demographics")

#### Revise and/or Merge Patient

Revise and Merge Patient are maintain transactions that are closely related and therefore are described in the same section.  They use the same FHIR structure and resources; merge uses additional parameters.

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

[Revise and Merge page](reviseAndMerge.html "Revise and Merge Patient")

### Get Eligibility is Not Supported by FHIR

Get Eligibility will not be supported by the Client Registry FHIR interactions.  If a FHIR-only user needs to know the claim eligibility status of a Patient they need to retrieve the Patient (the PHN) with a FHIR Get Demographics message and then use the PHN to submit a Get Eligibility message to the eligibility service.
>Is there more information we can provide here, like a link to some documentation on the eligibility service?
