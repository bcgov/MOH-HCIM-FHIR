Instance: BCHCIMCapabilityStatementServer
InstanceOf: CapabilityStatement
* text.status = #generated
* text.div = "<div>

<p>This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server.</p>

<ul>
<li>Find Candidates - used when a user would like to find a Patient, but without an identifier, typically with name, address or edge cases like mother's PHN.</li>
<li>Get Demographics - used when a user would like to find a Patient and has an identifier that Client Registry recognizes.</li>
<li>Revise Patient - used when a user is communicating a change or request for a new PHN to the Client Registry.</li>
<li>Merge Patient - used when a user is communicating that an individual has multiple Patient records and which record should survive and which record(s) should be marked as non-surviving.</li>
</ul>

<p>There are several versions of some of the above services.  The Client Registry has created FHIR Operations for each of the above and their variations.</p>

<ul>
<li>$FindCandidates</li>
<li>$GetDemographics</li>
<li>$AddPatient</li>
<li>$AddPatient.Async</li>
<li>$RevisePatient</li>
<li>$RevisePatient.Async</li>
<li>$MergePatient</li>
<li>$MergePatient.Async</li>
</ul>

<p>
RESTful interactions of any type, beyond the Operations listed above, are not supported.
</p>

<h3>General Rules IN</h3>
<p>
There are several rules that apply to all interactions with the Client Registry:
</p>
<ul>
<li>
When adding a Patient (a new PHN) Client Registry users SHALL use AddPatient the FHIR Operation.  This is different from V3, where the user can use Revise to create or update a record.
</li>
<li>
The Client Registry FHIR implementation only supports JSON format and the clients SHALL use JSON for all interactions.
</li>
<li>
All interactions with Patient resources SHALL use the BCPatient profile. E.g. /Patient/$RevisePatient
</li>
<li>
The Parameters profile for searches SHALL be BCMetadataParameters.
</li>  
<li>
The Paramaters profile for Revise and Merge SHALL be BCBusinessDataParameters.
</li>
<li>
Only the 'resource type' FHIR Operation is supported by the Client Registry, e.g. /Patient/$[Operation Name]; not system /$[Operation Name] and not resource instance /Patient/[id]/$[Operation Name].  Requesting users SHALL use only the resource type FHIR Operation
</li>
All of the Profiles include elements that are marked as Must Support. For the purposes of this guide, Must Support is intended to represent those fields that will be exchanged between client applications and the Client Registry server. Client applications who are receving information SHALL be able to receive all fields marked as Must Support without raising an exception. When sending information to the Client Registry server, client applications SHOULD be able to send any fields marked as Must Support.
<li>
The FHIR asynchornous pattern is not followed by this FHIR implementation.  The existing pattern the Client Registry uses today will be mimicked.  I.e.                                   1. User sends request                                                                        1. Client Registry responds with HTTP 202 Accepted                                           1. Client Registry sends request to user's end point                                         1. User system responds with 202 Accepted

Users SHALL follow the above asynchrous pattern when invoking an ayschronous version of a Operation.
</li>
</ul>

<h3>General Rules OUT</h3>
<p>
Each Operation returns a Bundle.  The Bundles may be of type searchset or collection.  The two searches, GetDemographics and FindCandidates both return searchset bundles.  The Revise and Merge reutrn collection Bundle resources.  Each Bundle will have a Parameters entry (profile BCMetadataParameters) that has the response metadata, including echoing back the request unique id, and zero or more Patient entries that either meet the search criteria or are the result of a Revise or Merge Operation.  In addition each Bundle has an OperationOutcome resource with warnings and errors relevant to the FHIR Operation request.  And finally, the seachset Bundle will also have the search criteria echoed back in an additional Parameters resource.
</p>
<p>
In summary the response Bundles for every Operation will be structured as follows:
</p>
<ul>
<li>Entry of BCMetadataParameters</li>
<li>Zero or more entries of Patient</li>
<li>Entry with OperationOutcom</li>
<li>If a search, the request Parameters are echoed back in a Parameters resource</li>
</ul>

<h3>Error Handling</h3>
<p>
The Client Registry users SHALL monitor the HTTP reponse codes returned in a response.  If the code is not 2xx the user will find the errors in the OperationOutcome resource in the response Bundle.
</p>

<h3>Search</h3>
<h4>Find Candidates</h4>
<p>
The FindCandidates FHIR Operation search SHALL use the following name-value paramters pairs, mandatory or optional according to the cardinality rules below.  This search may return zero or more Patients using the BCPatient profile.  Wildcards are not permitted.
</p>


<table class=\"grid\">
	<tr>
		<td>
			<b>Use</b>
		</td>
		<td>
			<b>Name</b>
		</td>
		<td>
			<b>Cardinality</b>
		</td>
		<td>
			<b>Type</b>
		</td>
		<td>
			<b>Binding</b>
		</td>
		<td>
			<b>Documentation</b>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageId</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
			(<a href=\"http://hl7.org/fhir/R4/search.html#string\">string</a>)</td>
		<td></td>
		<td>
			<div>
				<p>Unique message ID.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageDateTime</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#dateTime\">dateTime</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Message date and time.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>sender</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Message sender</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>address</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#Address\">Address</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient address.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>gender</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient gender.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>birthDate</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#dateTime\">dateTime</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient birth date.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>deathDate</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#dateTime\">dateTime</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient death date.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>name</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#HumanName\">HumanName</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient name.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>telephone</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#ContactPoint\">ContactPoint</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient telephone.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>identifier</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient identifier.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>mothersPHN</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient mother's PHN.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>identifiersOnly</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#boolean\">boolean</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Instruct the Client Registry to return Patient Identifiers only when true.  If not present, defaults to false.</p>
			</div>
		</td>
	</tr>
</table>

<h4>Get Demographics</h4>
<p>
The GetDemographics FHIR Operation SHALL use the following name-value paramters pairs, mandatory or optional according to the cardinality rules below.  This search may return zero or one Patient using the BCPatient profile.
</p>
<table class=\"grid\">
	<tr>
		<td>
			<b>Use</b>
		</td>
		<td>
			<b>Name</b>
		</td>
		<td>
			<b>Cardinality</b>
		</td>
		<td>
			<b>Type</b>
		</td>
		<td>
			<b>Binding</b>
		</td>
		<td>
			<b>Documentation</b>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageId</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Unique message ID.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageDateTime</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#dateTime\">dateTime</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Message date and time.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>sender</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Source of request</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>PHN</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Patient PHN.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>withHistory</td>
		<td>0..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#boolean\">boolean</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Boolean flag to return Patient's history.  If missing, defaults to false.</p>
			</div>
		</td>
	</tr>
</table>
<h3>Add and Revise Patient</h3>
<p>
The AddPatient and RevisePatient FHIR Operations SHALL use the following name-value paramters pairs, mandatory or optional according to the cardinality rules below.
</p>
<table class=\"grid\">
	<tr>
		<td>
			<b>Use</b>
		</td>
		<td>
			<b>Name</b>
		</td>
		<td>
			<b>Cardinality</b>
		</td>
		<td>
			<b>Type</b>
		</td>
		<td>
			<b>Binding</b>
		</td>
		<td>
			<b>Documentation</b>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageId</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
                </td>
		<td></td>
		<td>
			<div>
				<p>Unique message ID.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageDate</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
                </td>
		<td></td>
		<td>
			<div>
				<p>Message date and time.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>patient</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/patient.html\">Patient</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>The Patient.</p>
			</div>
		</td>
	</tr>
</table>

<h3>Merge Person</h3>
<p>                                                                                          The Merge Patient FHIR Operation SHALL use the following name-value paramters pairs, mandatory or optional according to the cardinality rules below.
The non-surviving Patient(s) SHALL be listed in the link attribute of Patient.
</p>
<table class=\"grid\">
	<tr>
		<td>
			<b>Use</b>
		</td>
		<td>
			<b>Name</b>
		</td>
		<td>
			<b>Cardinality</b>
		</td>
		<td>
			<b>Type</b>
		</td>
		<td>
			<b>Binding</b>
		</td>
		<td>
			<b>Documentation</b>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageId</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Unique message ID.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>messageDate</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Message date and time.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>IN</td>
		<td>patient</td>
		<td>1..1</td>
		<td>
			<a href=\"http://hl7.org/fhir/R4/patient.html\">Patient</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>The Patient.</p>
			</div>
		</td>
	</tr>
</table>
</div>"

* id = "bc-hcim-capability-statement-server"
* version = "1.0"
* name = "BCHCIMCapabilityStatement"
* title = "BC HCIM Capability Statement"
* status = #draft
* date = "2021-11-18"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry whe it is acting as a server.

* Find Candidates - used when a user would like to find a Patient, but without an identifier, typically with name, address or edge cases like mother's PHN.
* Get Demographics - used when a user would like to find a Patient and has an identifier that Client Registry recognizes
* Revise Patient - used when a user is communicating a change to the Client Registry 
* Merge Patient - used when a user is communicating that an individual has multiple Patient records and which record should survive and which record(s) should be marked as non-surviving
"
* kind = #capability
* software.name = "BC HCIM FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #json

* rest[0].mode = #server
* rest[0].resource[0].type = #Parameters
* rest[0].resource[0].operation[0].name = "FindCandidates"
* rest[0].resource[0].operation[0].definition = Canonical(FindCandidates)
* rest[0].resource[0].operation[1].name = "GetDemographics"
* rest[0].resource[0].operation[1].definition = Canonical(GetDemographics)
* rest[0].resource[0].operation[2].name = "RevisePatient"
* rest[0].resource[0].operation[2].definition = Canonical(RevisePatient)
* rest[0].resource[0].operation[3].name = "AddPatient"
* rest[0].resource[0].operation[3].definition = Canonical(AddPatient)
* rest[0].resource[0].operation[4].name = "MergePatient"
* rest[0].resource[0].operation[4].definition = Canonical(MergePatient)

// definition of async is the same as the synchronous
* rest[0].resource[0].operation[5].name = "AddPatient.Async"
* rest[0].resource[0].operation[5].definition = Canonical(AddPatient)
* rest[0].resource[0].operation[5].documentation = "
Although this is an independent Operation the definition is the same as the [AddPatient](OperationDefinition-bc-patient-add.html)"
* rest[0].resource[0].operation[6].name = "RevisePatient.Async"
* rest[0].resource[0].operation[6].definition = Canonical(RevisePatient)
* rest[0].resource[0].operation[6].documentation = "
Although this is an independent Operation the definition is the same as the [RevisePatient](OperationDefinition-bc-patient-revise.html)"
* rest[0].resource[0].operation[7].name = "MergePatient.Async"
* rest[0].resource[0].operation[7].definition = Canonical(MergePatient)
* rest[0].resource[0].operation[7].documentation = "
Although this is an independent Operation the definition is the same as the [MergePatient](OperationDefinition-bc-patient-merge.html)"
