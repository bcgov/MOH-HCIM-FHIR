Instance: HCIMCapabilityStatementClient
InstanceOf: CapabilityStatement
Usage: #definition
* text.status = #generated
* text.div = "<div>

<p>This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when acting as a client.  I.e. when sending Patient change notifications.</p>

<p>
A Patient change notification is accomplished by using Subscriptions.  A client will register a Subscription with the Client Registry.  When the Client Registry determines that a change to a Patient has occurred, it will notify all clients that have subscribed to changes of that specific type.</p>
<p>
The outgoing response to the Subscription is a Bundle. The Bundle has two entries:  One with MetadataParamtersIn for messageId, messageDate and sender, one for a ClientRegistryPatient (profile of Patient).  The following table describes the request and the four parameters; all are mandatory.  The Client Registry SHALL use the following IN parameters when sending a change notification.
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
		<td>ReviseRequestBundle</td>
		<td>1..1</td>
		<td>
			<a href=\"StructureDefinition-bc-revise-request-bundle.html\">ReviseRequestBundle</a>
                </td>
		<td></td>
		<td>
			<div>
				<p>A Bundle with the Patient change.</p>
			</div>
		</td>
	</tr>
	<tr>
		<td>OUT</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>Out is a 200 HTTP response code indicating the subscription response was recieved.
		</td>
	</tr>
</table>


</div>"

* id = "bc-hcim-capability-statement-client"
* version = "1.0"
* name = "HCIMClientCapabilityStatement"
* title = "BC HCIM Client Capability Statement"
* status = #draft
* date = "2021-11-18"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client. I.e. sending notifications."

* kind = #capability
* software.name = "BC HCIM FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #json

* rest[0].mode = #client
* rest[0].resource[0]
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
