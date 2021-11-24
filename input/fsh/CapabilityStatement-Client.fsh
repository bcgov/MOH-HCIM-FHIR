Instance: BCHCIMCapabilityStatementClient
InstanceOf: CapabilityStatement
* text.status = #generated
* text.div = "<div>

<p>This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when acting as a client.  I.e. when sending Distributions</p>

<p>
A Distribution is a RevisePatient FHIR Operation where the Client Registry sends a Patient/$RevisePatient request to a client.  After an onboardeding process by the Client Registry operational support team and developing an endpoint, clients are perpared to receive these requests.
</p>

<p>
The following table describes the request and the three parameters; all are mandatory.  The Client Registry SHALL use the following IN parameters when sending a distribution.
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


<p>
The Client Registry expects a 200 HTTP status code in return when the request is received.
</p>

</div>"

* id = "bc-hcim-capability-statement-client"
* version = "1.0"
* name = "BCHCIMCapabilityStatement"
* title = "BC HCIM Capability Statement"
* status = #draft
* date = "2021-11-18"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client. I.e. sending distributions."

* kind = #capability
* software.name = "BC HCIM FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #json

* rest[0].mode = #client
* rest[0].resource[0].type = #Parameters
* rest[0].resource[0].operation[0].name = "Distribution"
* rest[0].resource[0].operation[0].definition = Canonical(RevisePatient)
