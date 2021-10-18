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

### FHIR Structure for Revise, Merge and Distributions

The FHIR structure is the same for Merge, Revise and Distributions.  Responses (if required) are wrapped in collection Bundles and include OperationOutcome, Operation Parameters and Patient resources.

<span width="100%">
![FHIR Structure - Revise_Merge](revise_merge_fhir.png "FHIR Structure for Revise and Merge")
</span>


### Asynchronous Operations
The asynchronous pattern for Revise and Merge Patient follow the same pattern as V3.  That is 

client -> request to Client Registry -> Client Registry responds with OK

Client Registry -> late, request to client with response

The interactions are associated by the unique message id in the Parameters resource.  The client must create a FHIR Operation end point to receive the responses at a later time.

>What is the response end point?  Will it be https://..../$RevisePatient.Async ?

### Revise Patient Newborn

Newborn events use the RevisePatient.Newborn operation; a parameter, 'mothersPHN' is included.

### Merge Patient

Merge events use the MergePatient operation; a parameter, 'relatedPerson' is included to identify the non-survivors.

### Parameters for Revise and Merge

#### Revise Patient IN

Parameter Name|Parameter Value|Comments
:---|:---|:---
patient|Patient resource|A Patient resource

#### Revise Patient Newborn IN

Parameter Name|Parameter Value|Comments
:---|:---|:---
patient|Patient resource|A Patient resource representing newborn
mothersPHN|parameter.value[string]|The mothers PHN

#### Merge Patient IN

Parameter Name|Parameter Value|Comments
:---|:---|:---
patient|Patient resource|A Patient resource that for Merge is the surviving client
relatedPerson|parameter.value[Identifier]|**Is this Identifier or something else?**

#### Revise Patient OUT Bundle

The Bundle type is collection.

Bundle Entry|Comments
:---|:---
Patient resource|A Patient resource
OperationOutcome|Information about the operation; warnings and errors.
Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

#### Revise Patient Newborn OUT Bundle

The Bundle type is collection.

Bundle Entry|Comments
:---|:---
Patient resource|A Patient resource, the newborn
OperationOutcome|Information about the operation; warnings and errors.
Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

#### Merge Patient OUT Bundle

The Bundle type is collection.

Bundle Entry|Comments
:---|:---
Patient resource|A Patient resource, the survivor
OperationOutcome|Information about the operation; warnings and errors.
Parameters resource|Any name value pair parameters such as message creation date and unique identifiers

