Instance: HCIMCapabilityStatementServer
InstanceOf: CapabilityStatement
Usage: #definition
* text.status = #generated
* text.div = "<div>

<p>This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server.</p>

<ul>
<li>
Find Candidates - used when a user would like to find a Patient, but without an identifier, typically with name, address or edge cases like mother's PHN.
</li>
<li>
Get Demographics - used when a user would like to find a Patient and has an identifier that Client Registry recognizes.
</li>
<li>
Revise Patient - used when a user is communicating a change or request for a new PHN to the Client Registry.
</li>
<li>
Merge Patient - used when a user is communicating that an individual has multiple Patient records and which record should survive and which record(s) should be marked as non-surviving.
</li>
<li>
Add Patient - used for newborns and 'force create' interactions
</li>
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
GET RESTful interactions (Find Candidate and Get Demographics) are supported. However for this release, Client Registry users SHALL use only the above FHIR Operations for any CREATE/POST and UPDATE/PUT operations.
</p>

<h3>General Rules IN</h3>
<p>
There are several rules that apply to all interactions with the Client Registry:
</p>
<ul>
<li>
When adding a newborn or using 'force create' Client Registry users SHALL use the$AddPatient FHIR Operation.  This is different from V3, where the user can use Revise to create or update a record in there scenarios.
</li>
<li>
The Client Registry FHIR implementation only supports JSON format and the clients SHALL use JSON for all interactions.  The MIME-type of application/fhir+json is the only one supported by the Client Registry.
</li>
<li>
All interactions with Patient resources SHALL use one of the following profiles: ClientRegistryPatient or PatientUpdate.
</li>
<li>
Any Parameters' profiles used SHALL be MetadataParametersIn or MetadataParametersOut.
</li>  
<li>
Only the 'resource type' FHIR Operation is supported by the Client Registry, e.g. \"/Patient/$[Operation Name]\"; not system \"/$[Operation Name]\" and not resource instance \"/Patient/[id]/$[Operation Name]\".  Requesting users SHALL use only the resource type of FHIR Operation.
</li>
<li>
All of the profiles include elements that are marked as Must Support. For the purposes of this guide, Must Support is intended to represent those fields that will be exchanged between client applications and the Client Registry server. Client applications who are receiving information SHALL be able to receive all fields marked as Must Support without raising an exception. When sending information to the Client Registry server, client applications SHOULD be able to send any fields marked as Must Support.
</li>
<li>
The FHIR asynchronous pattern is not followed by this FHIR implementation.  The existing pattern the Client Registry uses today will be mimicked.  I.e.           <ul>
<li>User sends request</li>
<li>Client Registry responds with HTTP 202 Accepted</li>
<li>Later, the Client Registry sends request with information regarding the initial request to user's end point</li>
<li>User system responds with 202 Accepted</li>
</ul>

Users SHALL follow the above asynchronous pattern when invoking an asynchronous version of a Operation.
</li>
</ul>

<h3>General Rules OUT</h3>
<p>
Each Operation SHALL return a Bundle.  The Bundles MAY be of type searchset or collection.  The two searches, GetDemographics and FindCandidates SHALL return searchset bundles.  The Add, Revise and Merge SHALL return collection Bundle resources.  

Each operation MAY use a unique Bundle profile in the response to enforce cardinalality rules.
</p>
<p>
In summary the response Bundles for every Operation SHALL be structured as follows:
</p>
<ul>
<li>Entry of MetadataParametersOut</li>
	<ul>
	<li>If a search, the request Parameters are be echoed back in a MetadataParametersIn resource within the MetadataParametersOut resource</li>
	</ul>
<li>One entry with OperationOutcome</li>
<li>Zero or more entries of ClientRegistryPatient</li>
<li>Zero or more entries of RelatedPerson</li>
</ul>

<h4>Data Absent Reason</h4>
<p>
If the Data Absent extension is present onn a Patient attribute, then History, for that attribute, SHALL not be returned.  If data is absent it is primarly because the record is restricted and therefore returning History isn't permitted.
</p>

<h3>Error Handling</h3>
<p>
The Client Registry users SHALL monitor the HTTP response codes returned with a response.  If the code is not 2xx the user SHALL examine the  errors in the OperationOutcome resource in the response Bundle.
</p>

<h3>Search</h3>
<h4>Find Candidates</h4>
<p>
The FindCandidates FHIR Operation search SHALL use the following Bundles.  This search MAY return zero or more Patients using the ClientRegistryPatient profile.  Wildcards are not permitted.
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
		<td>Find Candidates Request Bundle</td>
		<td>1..1</td>
		<td>
			<a href=\"StructureDefinition-bc-find-candidates-request-bundle.html\">FindCandidatesRequestBundle</a></td>
		<td></td>
		<td>
			<div>
				<p>Request bundle.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>OUT</td>
		<td>Find Candidates Response Bundle</td>
		<td>1..1</td>
		<td>
			<a href=\"StructureDefinition-bc-search-response-bundle.html\">SearchResponseBundle</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Response bundle.</p>
			</div>
		</td>
	</tr>
</table>

<h4>Get Demographics</h4>
<p>
The GetDemographics FHIR Operation SHALL use the following Bundles.  This search may return zero or one Patient using the Patient profile.
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
		<td>Get Demographics Request Bundle</td>
		<td>1..1</td>
		<td>
			<a href=\"StructureDefinition-bc-get-demographics-request-bundle.html\">GetDemographicsRequestBundle</a></td>
		<td></td>
		<td>
			<div>
				<p>Request bundle.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>OUT</td>
		<td>Get Demographics Response Bundle</td>
		<td>1..1</td>
		<td>
			<a href=\"StructureDefinition-bc-search-response-bundle.html\">SearchResponseBundle</a>
		</td>
		<td></td>
		<td>
			<div>
				<p>Response bundle.</p>
			</div>
		</td>
	</tr>
</table>


<h3>Revise Patient</h3>
<p>
The RevisePatient FHIR Operation SHALL use the following Bundles.
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
                <td>Revise Request Bundle</td>
                <td>1..1</td>
                <td>
                        <a href=\"StructureDefinition-bc-revise-request-bundle.html\">ReviseRequestBundle</a></td>
                <td></td>
                <td>
                        <div>
                                <p>Request bundle.</p>
                        </div>
                </td>
        </tr>
        <tr>
                <td>OUT</td>
                <td>Revise Response Bundle</td>
                <td>1..1</td>
                <td>
                        <a href=\"StructureDefinition-bc-revise-response-bundle.html\">ReviseResponseBundle</a>
                </td>
                <td></td>
                <td>
                        <div>
                                <p>Response bundle.</p>
                        </div>
                </td>
        </tr>
</table>

<h3>Add Patient</h3>
<p>
The AddPatient FHIR Operation SHALL use the following Bundles.
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
                <td>Add Request Bundle</td>
                <td>1..1</td>
                <td>
                        <a href=\"StructureDefinition-bc-add-request-bundle.html\">AddRequestBundle</a></td>
                <td></td>
                <td>
                        <div>
                                <p>Request bundle.</p>
                        </div>
                </td>
        </tr>
        <tr>
                <td>OUT</td>
                <td>Add Response Bundle</td>
                <td>1..1</td>
                <td>
                        <a href=\"StructureDefinition-bc-add-response-bundle.html\">AddResponseBundle</a>
                </td>
                <td></td>
                <td>
                        <div>
                                <p>Response bundle.</p>
                        </div>
                </td>
        </tr>

</table>

<h3>Merge Patient</h3>
<p>
The MergePatient FHIR Operation SHALL use the following Bundles.</p>
<p>   
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
                <td>Merge Request Bundle</td>
                <td>1..1</td>
                <td>
                        <a href=\"StructureDefinition-bc-merge-request-bundle.html\">MergeRequestBundle</a></td>
                <td></td>
                <td>
                        <div>
                                <p>Request bundle.</p>
                        </div>
                </td>
        </tr>
        <tr>
                <td>OUT</td>
                <td>Merge Response Bundle</td>
                <td>1..1</td>
                <td>
                        <a href=\"StructureDefinition-bc-merge-response-bundle.html\">MergeResponseBundle</a>
                </td>
                <td></td>
                <td>
                        <div>
                                <p>Response bundle.</p>
                        </div>
                </td>
        </tr>
</table>
</div>"

* id = "bc-hcim-capability-statement-server"
* version = "1.0"
* name = "HCIMServerCapabilityStatement"
* title = "BC HCIM Server Capability Statement"
* status = #active
* date = "2024-05-28"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server."
* kind = #capability
* software.name = "BC HCIM FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #json

* rest[0].mode = #server
* rest[0].resource[0].type = #Parameters
* rest[0].resource[0].operation[+].name = "FindCandidates"
* rest[0].resource[0].operation[=].definition = Canonical(FindCandidates)
* rest[0].resource[0].operation[+].name = "GetDemographics"
* rest[0].resource[0].operation[=].definition = Canonical(GetDemographics)
* rest[0].resource[0].operation[+].name = "RevisePatient"
* rest[0].resource[0].operation[=].definition = Canonical(RevisePatient)
/* rest[0].resource[0].operation[+].name = "PartialUpdatePatient"
* rest[0].resource[0].operation[=].definition = Canonical(PartialUpdatePatient)*/
* rest[0].resource[0].operation[+].name = "AddPatient"
* rest[0].resource[0].operation[=].definition = Canonical(AddPatient)
* rest[0].resource[0].operation[+].name = "MergePatient"
* rest[0].resource[0].operation[=].definition = Canonical(MergePatient)

// definition of async is the same as the synchronous
* rest[0].resource[0].operation[+].name = "AddPatient.Async"
* rest[0].resource[0].operation[=].definition = Canonical(AddPatient)
* rest[0].resource[0].operation[=].documentation = "Although this is an independent Operation the definition is the same as the [AddPatient](OperationDefinition-bc-patient-add.html)"
* rest[0].resource[0].operation[+].name = "RevisePatient.Async"
* rest[0].resource[0].operation[=].definition = Canonical(RevisePatient)
* rest[0].resource[0].operation[=].documentation = "Although this is an independent Operation the definition is the same as the [RevisePatient](OperationDefinition-bc-patient-revise.html)"
/* rest[0].resource[0].operation[+].name = "PartialUpdatePatient.Async"
* rest[0].resource[0].operation[=].definition = Canonical(PartialUpdatePatient)
* rest[0].resource[0].operation[=].documentation = "Although this is an independent Operation the definition is the same as the [UpdatePatient](OperationDefinition-bc-patient-update.html)" */
* rest[0].resource[0].operation[+].name = "MergePatient.Async"
* rest[0].resource[0].operation[=].definition = Canonical(MergePatient)
* rest[0].resource[0].operation[=].documentation = "Although this is an independent Operation the definition is the same as the [MergePatient](OperationDefinition-bc-patient-merge.html)"

* rest[0].resource[1]
  * extension[0]
    * url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/capabilitystatement-subscriptiontopic-canonical"
    * valueCanonical = "http://hlth.gov.bc.ca/fhir/client/SubscriptionTopic/HCIMPatientChangeDistribution"
  * type = #Subscription
  * interaction[0]
    * code = #create
  * interaction[1]
    * code = #update
  * interaction[2]
    * code = #delete
