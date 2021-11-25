><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

### Design Approach
The approach to design a FHIR interface to the Client Registry was to keep the interactions as similar as possible to the current system.  However where necessary additions and improvements would be considered.
Namely:
- The design team will match current Client Registry interactions 1 to 1 with equivalent FHIR interactions for all the flavours of:
	- Find Candidates
	- Get Demographics
	- Revise Patient
	- Merge Patient
	- Distribute Patient
- Asynchronous interactions will be supported as with the current system; supporting asynchronous for interactions that write data to the Client Registry.
- New attributes can be included in FHIR that are not in V3 (such as more business dates)
- HL7 V3 will be deprecated at some future time
- The Client Registry profiles should conform to the Canadian Baseline profiles

### Design Assumptions
There are a number of assumptions that were made at the start of design:

- FHIR is not expected to adversely affect performance, i.e. SLA is not changing for FHIR but will be extended to include FHIR
- Existing interfaces, such as V3, will not be deprecated 
- Users can use a combination of V3 and FHIR to meet their needs
- The Client Registry FHIR design will become a Provincial standard
- Asynchronous interactions will follow the same pattern as V3 (not the FHIR asynchronous pattern)
- Get Eligibility is not supported by FHIR (will still be supported by V3)

### Design Outcomes - Overview
The main outcomes from the design process were as follows:

- The primary resource is Patient and Patient will be used to communicate client attributes
- The JSON text format will be used to receive and transmit FHIR resources
- FHIR Operations will be used for Client Registry interactions
- The Parameters resource used in the FHIR Operations may include Patient resources as well as name value pair parameters such as search parameters or unique request identifiers and creation times, etc
- Some FHIR extensions are necessary as the Patient resource
>Do we align with CA Baseline?

#### Patient Resource

All interactions will primarily use the Patient resource.  The Patient resource is ideal to represent clients as Patients has almost all of the necessary attributes and will require only a few extensions.  Patients also are recommended for enterprise master patient indices by the HL7 group and is in a Normative state, i.e. stable and ready for implementation.  See [FHIR standards evolution](http://hl7.org/fhir/versions.html#std-process) for a description of Normative. 

##### Patient Extensions

There are several extensions that are applied to the Patient resource.  The list below is an overview, more details on the extensions can be found be following the links on the Patient snapshot page.

Extension Name | Description | 
:--- | :--- |
bc-patient-business-dates | A Period extension at the Patient level that represents the entire record
bc-death-date-extension | A dateTime extension that indicates is the client's death has been verified by ...
bc-birth-date-business-dates | A Period extension for effective dates
bc-death-date-business-dates | A Period extension for effective dates
bc-death-date-flag-business-dates | A Period extension for effective dates
bc-validation-status | A code that represents the address validation status.  This will be part of every Patient.address
bc-gender-business-dates | A Period extension for effective dates

##### Terminologies, CodeableConcepts, Codes and Value Sets

A few points should be highlighted around terminologies, codes and value sets.

Attribute | Value Sets
:---|:---
Patient.name.use| Only _usual_ or _official_ from NameUse value set.
Patient.telecom.use| Only _home_, _work_, _mobile_ from the ContactPointUse value set.
Patient.telecom.system| Only _phone_ or _email_ from the ContactPointSystem value set.
Patient.address.type|Only _postal_ or _physical_ from the AddressType value set.
Patient.address.use|Only _home_ from the AddressUse value set.
Patient.identifier.system|See the section on [identifiers](identifiers.html)

#### FHIR Operations

Client Registry will use the FHIR Operations pattern to exchange information.  These are the Operations that Client Registry FHIR will support:

Operations |
:--- |
https://..../$FindCandidates |
https://..../$GetDemographics |
https://..../$RevisePatient |
https://..../$RevisePatient.Newborn |
https://..../$RevisePatient.Newborn.Async |
https://..../$RevisePatient.Async |
https://..../$MergePatient |
https://..../$MergePatient.Async |

Suffixes such as Async inform the Client Registry FHIR server to perform the operation in a particular way such as responding asynchronously.

##### Requests

The body of the request message will vary depending on the business context however all message bodies will consist of at least one Parameter.  The Parameter resource has two profiles defined in this guide.  See [Metadata Parameters](StructureDefinition-bc-metadata-parameters.html) and [Patient Business Parameters](StructureDefinition-bc-patient-business-parameters.html).  The Metadata Parameters profile is to store request metadata name-value pairs such as request creation time and unique ID.  The Business Parameters profile includes the Metadata name-value pairs and in addition business values such as Patients and Operation flags.

The diagram below shows how the Parameters resource is generalized to a Metadata Parameters and then further to a Business Parameters resource.  The children inherit from the parents.

<span>
	<img src="design_nestedParameters.png" height="350"/>
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
sender|parameter.value[Identifier]|Message sender
enterer|parameter.value[Identifier]|UserId for message

#### Searches
There are two searches available for Client Registry FHIR, Find Candidates and Get Demographics.  The operations are:

Search Operations |
:--- |
https://…./$FindCandidates |
https://…./$GetDemographics |
https://…./$GetDemographics.History |

Find Candidates may return zero or more candidates, while Get Demographics is designed to return zero or a single match.  These searches are expected to provide the required information to confirm a person's identify.

[Search page](search.html "Find Candidates and Get Demographics")

#### Revise and/or Merge Patient

Revise and Merge Patient are maintain transactions that are closely related and therefore are described in the same section.  They use the same FHIR structure and resources; merge uses additional parameters.

Revise and Merge Operations |
:--- |
https://..../$RevisePatient |
https://..../$RevisePatient.Async |
https://..../$RevisePatient.Newborn |
https://..../$RevisePatient.Newborn.Async |
https://..../$MergePatient |
https://..../$MergePatient.Async |

These business transactions will allow the user to:
- update demographic information, if the patient exists within the Client Registry; or
- generate a PHN for a new client.

[Revise and Merge page](reviseAndMerge.html "Revise and Merge Patient")

##### Asynchronous Operations
The asynchronous versions of Revise and Merge Operations share the same request and response profile as the synchronous version.

The FHIR asynchornous pattern is not followed by this FHIR implementation.  The existing pattern the Client Registry uses today will be mimicked.  I.e.
1. User sends request
1. Client Registry responds with HTTP 202 Accepted
1. Client Registry sends request to user's end point
1. User system responds with 202 Accepted

### Get Eligibility is Not Supported by FHIR

Get Eligibility will not be supported by the Client Registry FHIR interactions.  If a FHIR-only user needs to know the claim eligibility status of a Patient they need to retrieve the Patient (the PHN) with a FHIR Get Demographics message and then use the PHN to submit a Get Eligibility message to the eligibility service.
>Is there more information we can provide here, like a link to some documentation on the eligibility service?

### Error Handling

This implemenation of FHIR will follow the standard FHIR error handling.  E.g. return an OperationOutcome in a Bundle with the appropirate HTTP status code.  User are expected to monitor the http status codes and the OperationOutcome resources for issues.

### Success Status Codes

HTTP 200 (OK) will be returned in all cases where the request was sucessful.  This includes a search that was a valid Operation but did not match any Patients.  The only exceptions when a Patient is first created, the status code response is 201 (Created).
