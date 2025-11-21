# BC HCIM Server Capability Statement - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC HCIM Server Capability Statement**

## CapabilityStatement: BC HCIM Server Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/CapabilityStatement/bc-hcim-capability-statement-server | *Version*:1.0.0 |
| Active as of 2024-10-11 | *Computable Name*:HCIMServerCapabilityStatement |

 
This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server. 

 [Raw OpenAPI-Swagger Definition file](bc-hcim-capability-statement-server.openapi.json) | [Download](bc-hcim-capability-statement-server.openapi.json) 

This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server.

* Find Candidates - used when a user would like to find a Patient, but without an identifier, typically with name, address or edge cases like mother's PHN.
* Get Demographics - used when a user would like to find a Patient and has an identifier that Client Registry recognizes.
* Revise Patient - used when a user is communicating a change or request for a new PHN to the Client Registry.
* Merge Patient - used when a user is communicating that an individual has multiple Patient records and which record should survive and which record(s) should be marked as non-surviving.
* Add Patient - used for newborns and 'force create' interactions

There are several versions of some of the above services. The Client Registry has created FHIR Operations for each of the above and their variations.

* $FindCandidates
* $GetDemographics
* $AddPatient
* $AddPatient.Async
* $RevisePatient
* $RevisePatient.Async
* $MergePatient
* $MergePatient.Async

GET RESTful interactions (Find Candidate and Get Demographics) are supported. However for this release, Client Registry users SHALL use only the above FHIR Operations for any CREATE/POST and UPDATE/PUT operations.

### General Rules IN

There are several rules that apply to all interactions with the Client Registry:

* When adding a newborn or using 'force create' Client Registry users SHALL use the$AddPatient FHIR Operation. This is different from V3, where the user can use Revise to create or update a record in there scenarios.
* The Client Registry FHIR implementation only supports JSON format and the clients SHALL use JSON for all interactions. The MIME-type of application/fhir+json is the only one supported by the Client Registry.
* All interactions with Patient resources SHALL use one of the following profiles: ClientRegistryPatient or PatientUpdate.
* Any Parameters' profiles used SHALL be MetadataParametersIn or MetadataParametersOut.
* Only the 'resource type' FHIR Operation is supported by the Client Registry, e.g. "/Patient/$[Operation Name]"; not system "/$[Operation Name]" and not resource instance "/Patient/[id]/$[Operation Name]". Requesting users SHALL use only the resource type of FHIR Operation.
* All of the profiles include elements that are marked as Must Support. For the purposes of this guide, Must Support is intended to represent those fields that will be exchanged between client applications and the Client Registry server. Client applications who are receiving information SHALL be able to receive all fields marked as Must Support without raising an exception. When sending information to the Client Registry server, client applications SHOULD be able to send any fields marked as Must Support.
* The FHIR asynchronous pattern is not followed by this FHIR implementation. The existing pattern the Client Registry uses today will be mimicked. I.e.
* User sends request
* Client Registry responds with HTTP 202 Accepted
* Later, the Client Registry sends request with information regarding the initial request to user's end point
* User system responds with 202 Accepted
Users SHALL follow the above asynchronous pattern when invoking an asynchronous version of a Operation.

### General Rules OUT

Each Operation SHALL return a Bundle. The Bundles MAY be of type searchset or collection. The two searches, GetDemographics and FindCandidates SHALL return searchset bundles. The Add, Revise and Merge SHALL return collection Bundle resources. Each operation MAY use a unique Bundle profile in the response to enforce cardinalality rules.

In summary the response Bundles for every Operation SHALL be structured as follows:

* Entry of MetadataParametersOut
* One entry with OperationOutcome
* Zero or more entries of ClientRegistryPatient
* Zero or more entries of RelatedPerson

#### Data Absent Reason

If the Data Absent extension is present onn a Patient attribute, then History, for that attribute, SHALL not be returned. If data is absent it is primarly because the record is restricted and therefore returning History isn't permitted.

### Error Handling

The Client Registry users SHALL monitor the HTTP response codes returned with a response. If the code is not 2xx the user SHALL examine the errors in the OperationOutcome resource in the response Bundle.

### Search

#### Find Candidates

The FindCandidates FHIR Operation search SHALL use the following Bundles. This search MAY return zero or more Patients using the ClientRegistryPatient profile. Wildcards are not permitted.

* **Use**: IN
  * **Name**: Find Candidates Request Bundle
  * **Cardinality**: 1..1
  * **Type**: [FindCandidatesRequestBundle](StructureDefinition-bc-find-candidates-request-bundle.md)
  * **Binding**: 
  * **Documentation**: Request bundle.
* **Use**: OUT
  * **Name**: Find Candidates Response Bundle
  * **Cardinality**: 1..1
  * **Type**: [SearchResponseBundle](StructureDefinition-bc-search-response-bundle.md)
  * **Binding**: 
  * **Documentation**: Response bundle.

#### Get Demographics

The GetDemographics FHIR Operation SHALL use the following Bundles. This search may return zero or one Patient using the Patient profile.

* **Use**: IN
  * **Name**: Get Demographics Request Bundle
  * **Cardinality**: 1..1
  * **Type**: [GetDemographicsRequestBundle](StructureDefinition-bc-get-demographics-request-bundle.md)
  * **Binding**: 
  * **Documentation**: Request bundle.
* **Use**: OUT
  * **Name**: Get Demographics Response Bundle
  * **Cardinality**: 1..1
  * **Type**: [SearchResponseBundle](StructureDefinition-bc-search-response-bundle.md)
  * **Binding**: 
  * **Documentation**: Response bundle.

### Revise Patient

The RevisePatient FHIR Operation SHALL use the following Bundles.

* **Use**: IN
  * **Name**: Revise Request Bundle
  * **Cardinality**: 1..1
  * **Type**: [ReviseRequestBundle](StructureDefinition-bc-revise-request-bundle.md)
  * **Binding**: 
  * **Documentation**: Request bundle.
* **Use**: OUT
  * **Name**: Revise Response Bundle
  * **Cardinality**: 1..1
  * **Type**: [ReviseResponseBundle](StructureDefinition-bc-revise-response-bundle.md)
  * **Binding**: 
  * **Documentation**: Response bundle.

### Add Patient

The AddPatient FHIR Operation SHALL use the following Bundles.

* **Use**: IN
  * **Name**: Add Request Bundle
  * **Cardinality**: 1..1
  * **Type**: [AddRequestBundle](StructureDefinition-bc-add-request-bundle.md)
  * **Binding**: 
  * **Documentation**: Request bundle.
* **Use**: OUT
  * **Name**: Add Response Bundle
  * **Cardinality**: 1..1
  * **Type**: [AddResponseBundle](StructureDefinition-bc-add-response-bundle.md)
  * **Binding**: 
  * **Documentation**: Response bundle.

### Merge Patient

The MergePatient FHIR Operation R5 mimic does not use Bundles.

The non-surviving/source Patient(s) SHALL be listed in the link attribute of Patient.

* **Use**: IN
  * **Name**: Merge Request
  * **Type**: [MergeRequest](Parameters-Merge-Request.md)
  * **Binding**: 
  * **Documentation**: Request
* **Use**: OUT
  * **Name**: Merge Response
  * **Type**: [MergeResponse](Parameters-Merge-Response.md)
  * **Binding**: 
  * **Documentation**: Response



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "bc-hcim-capability-statement-server",
  "url" : "http://hlth.gov.bc.ca/fhir/client/CapabilityStatement/bc-hcim-capability-statement-server",
  "version" : "1.0.0",
  "name" : "HCIMServerCapabilityStatement",
  "title" : "BC HCIM Server Capability Statement",
  "status" : "active",
  "date" : "2024-10-11",
  "publisher" : "BC Ministry of Health",
  "contact" : [
    {
      "name" : "BC Ministry of Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
        }
      ]
    }
  ],
  "description" : "This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA",
          "display" : "Canada"
        }
      ]
    }
  ],
  "kind" : "capability",
  "software" : {
    "name" : "BC HCIM FHIR Implementation"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "type" : "Patient",
          "operation" : [
            {
              "name" : "FindCandidates",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-find-candidates"
            },
            {
              "name" : "GetDemographics",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-get-demographics"
            },
            {
              "name" : "RevisePatient",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-revise"
            },
            {
              "name" : "AddPatient",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-add"
            },
            {
              "name" : "Merge",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-merge"
            },
            {
              "name" : "AddPatient.Async",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-add",
              "documentation" : "Although this is an independent Operation the definition is the same as the [AddPatient](OperationDefinition-bc-patient-add.html)"
            },
            {
              "name" : "RevisePatient.Async",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-revise",
              "documentation" : "Although this is an independent Operation the definition is the same as the [RevisePatient](OperationDefinition-bc-patient-revise.html)"
            },
            {
              "name" : "MergePatient.Async",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-merge",
              "documentation" : "Although this is an independent Operation the definition is the same as the [MergePatient](OperationDefinition-bc-patient-merge.html)"
            }
          ]
        }
      ]
    }
  ]
}

```
