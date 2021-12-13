><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

### Design Approach
The approach to design a FHIR interface to the Client Registry was to keep the interactions as similar as possible to the current system.  Any necessary additions and improvements were also considered for inclusion.
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
- Existing interfaces, such as V3, will not immediately be deprecated 
- Users can use a combination of V3 and FHIR to meet their needs
- The Client Registry FHIR design will become a Provincial standard
- Asynchronous interactions will follow the same pattern as V3 (not the FHIR asynchronous pattern)

### Design Outcomes - Overview
The main outcomes from the design process were as follows:

- The primary resource is Patient and Patient will be used to communicate client attributes
- The JSON text format will be used to receive and transmit FHIR resources
- FHIR Operations will be used for Client Registry interactions
- The Parameters resource used in the FHIR Operations may include Patient resources as well as name value pair parameters such as search parameters or unique request identifiers and creation times, etc
- Some FHIR extensions are necessary, they are outlined below
- There are several new interactions and features, these are described below

>Do we align with CA Baseline?

#### New Interactions and Features

These items are new to the Client Registry interface and subject to change as they are reviewed and evolve.

Proposal | Description | 
:--- | :--- |
Add Patient interaction | Some of the features normally done through the Revise Patient interaction are now part of Add Patient.  Specifically, 'force create' and newborn interactions are now done with Add Patient. |
Partial Revise interaction | A Partial Revise interaction allows users to logically delete, add or change part of the Patient resource.  This is useful when a stakeholder doesn't need (or persist) certain Patient attributes, but today, must query and then echo back these attributes in a Revise Patient interaction.  Knowledge of [FHIRPath](http://hl7.org/fhirpath/N1/) is required to use this interaction.  The exact patch operations allowed by the Client Registry is to be determined.|
Business dates feature | Attributes will have business dates that haven't been present in V3. | 
Get Eligibility interaction | This guide includes sections describing a Get Eligibility interaction that is similar to V3.  However the Get Eligibility FHIR specification should be provided by Health Insurance BC (HIBC).  This guide speculates on how those requests and responses may be structured but the Client Registry _FHIR team still needs to consult with HIBC_.|

#### Patient Resource

All interactions will primarily use the Patient resource.  The Patient resource is ideal to represent clients as the Patient resource has almost all of the necessary attributes and will require only a few extensions.  Patients also are recommended for enterprise master patient indices by the HL7 group and is in a Normative state, i.e. stable and ready for implementation.  See [FHIR standards evolution](http://hl7.org/fhir/versions.html#std-process) for a description of Normative. 

##### Patient Extensions

There are several extensions that are applied to the Patient resource.  The list below is an overview, more details on the extensions can be found by following the links on the Patient resource snapshot [page](StructureDefinition-bc-patient.html) .

Extension Name | Description | 
:--- | :--- |
bc-business-period-extension | A Period extension for the business effective dates.
bc-validation-status-extension | A code that represents the address validation status.  This will be part of every Patient.address
bc-death-date-extension | An extension that indicates the date of death.  The Patient resource has a boolean flag for death; this is the date.
bc-death-flag-business-period-extension | A Period extension for effective dates on the death flag.
bc-*-history-extension | The set of history extensions are necessary to add historical records to the Patient resource such as gender.

##### Codes and Value Sets

The Client Registry doesn't recognize all the codes for the elements that must be supported, see the table below which indicates the supported codes.

Attribute | Supported Codes
:---|:---
Patient.name.use| Only _usual_,  _official_ or _nickname_ from NameUse value set.
Patient.telecom.use| Only _home_, _work_, _mobile_ from the ContactPointUse value set.
Patient.telecom.system| Only _phone_ or _email_ from the ContactPointSystem value set.
Patient.address.type|Only _postal_ or _physical_ from the AddressType value set.
Patient.identifier.system|See the section on [identifiers](identifiers.html)

The following table maps the FHIR codes to Client Registry codes.

FHIR Code Type | FHIR Code | HCIM Equivalent
:--- | :--- | :---
Name.use | usual | declared
Name.use | official | card
Name.use | nickname | preferred
Telecom.use | home | home
Telecom.use | work | work
Telecom.use | mobile | mobile
Telecom.system | phone | phone
Telecom.system | email | email
Address.type | postal | mailing
Address.type | physical | physical
Gender | other | undifferentiated
Gender | unknown | unknown
Gender | male | male
Gender | female | female

#### FHIR Operations

Client Registry will use the FHIR Operations pattern to exchange information.  These are the Operations that Client Registry FHIR will support:

Operations |
:--- |
https://..../$FindCandidates |
https://..../$GetDemographics |
https://..../$GetDemographics.withEligibility |
https://..../$RevisePatient |
https://..../$RevisePatient.Async |
https://..../$PartialRevisePatient |
https://..../$PartialRevisePatient.Async |
https://..../$AddPatient |
https://..../$AddPatient.Async |
https://..../$MergePatient |
https://..../$MergePatient.Async |
https://..../$PatientNotification |

The Async suffix informs the Client Registry FHIR server to perform the operation in an asynchronous manner.  The profiles and examples used in the Async versions of the Operations are identical to the synchronous Operations.

The Client Registry does not support any other interactions (Restful or otherwise) than the Operations listed above.

##### Requests

The body of the request message will vary depending on the business context however all message bodies will consist of at least one Parameter.  The Parameter resource has two profiles defined in this guide.  See [Metadata Parameters](StructureDefinition-bc-metadata-parameters.html) and [Patient Business Parameters](StructureDefinition-bc-patient-business-parameters.html).  The Metadata Parameters profile is to store request/response metadata name-value pairs such as creation time and unique ID.  The Business Parameters profile includes the Metadata name-value pairs and in addition business values such as Patients and Operation flags.

The diagram below shows how the Parameters resource is generalized to a Metadata Parameters and then further to a Business Parameters resource.  The children inherit from the parents.

<span>
	<img src="design_nestedParameters.png" height="350"/>
</span>

##### Responses

Response resources are wrapped in Bundles that contain Patients and an OperationOutcome.  A search operation like Get Demographics or Find Candidates will be a searchset Bundle that echoes back the search parameters by including an extra Parameters resource in the Bundle.

### Design Outcomes - Details

This guide touches on some of the business and conformance rules regarding use of the Client Registry.  However this guide is not the source of conformance or business rules and the audience is referred to British Columbia's [Health Information Exchange](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software) web site for details on the Client Registry system and access to Client Registry.

#### Operational Parameter Resource

Each interaction is a FHIR Operation and as such has a set of possible parameters.  The table below outlines the parameters and whether they are IN, OUT or could apply to both requests and responses.

The table is only showing the standard interaction parameters, each Operation may have more parameters such as Patient, OperationOutcome, etc.  More detailed information regarding each Operation can be found in the [Operation definitions](artifacts.html#operation-definitions).

Parameter Name|Parameter Value|Comments|IN, OUT, both
:---|:---|:---|:---
message id|parameter.value[string]|Message (unique) id|both
create time|parameter.value[dateTime]|Creation date of message|both
request message id|parameter.value[string]|Message (unique) id|OUT
sender|parameter.value[Identifier]|Message sender|both
enterer|parameter.value[Identifier]|UserId for message|both

#### Searches
There are two searches available for Client Registry FHIR, Find Candidates and Get Demographics.  The operations are:

Search Operations | Description
:--- |
https://…./$FindCandidates | Searching for Patients that match the search criteria
https://…./$GetDemographics | Searching for a single Patient
https://…./$GetDemographics.withEligibility | Searching for a single Patient and asking the Client Registry to also return the British Columbia medical insurance eligibility for this Patient

Find Candidates may return zero or more candidates, while Get Demographics is designed to return zero or a single matching Patient.  These searches are expected to provide the required information to confirm a person's identify.

[Search page](search.html "Find Candidates and Get Demographics")

#### Add, Revise and/or Merge Patient

Add, Revise and Merge Patient are maintain transactions that are closely related and therefore are described in the same section.  They use the same FHIR structure and resources; merge uses additional parameters.


Add, Revise and Merge Operations | Description
:--- | :---
https://..../$RevisePatient | Updating a Patient
https://..../$RevisePatient.Async | Updating a Patient asynchronously
https://..../$PartialRevisePatient | Updating a specific Patient attribute
https://..../$PartialRevisePatient.Async | Updating a specific Patient attribute asynchronously
https://..../$AddPatient | For newborns or to 'force create' a Patient
https://..../$AddPatient.Async | The asynchronous version of AddPatient
https://..../$MergePatient | Resolving duplicate Patients records (same individual)
https://..../$MergePatient.Async | Resolving duplicate Patients records (same individual) asynchronously

These business transactions will allow the user to:
- update demographic information, if the patient exists within the Client Registry; or
- generate a PHN for a new client; or
- resolve duplicate Patients.

[Add, Revise and Merge page](reviseAndMerge.html)

#### Distributions

Distributions will use an endpoint called PatientNotification.  The FHIR structure of the interaction is the same as RevisePerson.

[Patient Notifications](distributions.html)

##### Asynchronous Operations
The asynchronous versions of Add, Revise and Merge Operations share the same request and response profile as the synchronous version.

The FHIR asynchronous pattern is not followed by this FHIR implementation.  The existing pattern the Client Registry uses today will be mimicked.  I.e.
1. User sends request
1. Client Registry responds with HTTP 202 Accepted
1. Client Registry sends request to user's end point
1. User system responds with 202 Accepted

### Error Handling

This implementation of FHIR will follow the standard FHIR error handling.  E.g. return an OperationOutcome in a Bundle with the appropriate HTTP status code.  Users are expected to monitor the http status codes and the OperationOutcome resources for issues.

### Success Status Codes

HTTP 200 (OK) will be returned in all cases where the request was successful.  This includes a search that was a valid FHIR Operation but did not match any Patients.  The only exceptions when a Patient is first created, the status code response is 201 (Created).
