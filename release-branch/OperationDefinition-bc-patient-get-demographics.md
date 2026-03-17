# GetDemographics - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDemographics**

## OperationDefinition: GetDemographics 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-get-demographics | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:GetDemographics |

 
This operation is used to query for a patient. The response can contain 0 or 1 Patient. 

The Get Demographics query is a FHIR Operation.

The request is a Bundle with Resources for search parameters and a Patient, i.e. [ClientRegistryClient](StructureDefinition-bc-patient.md), to match against. The Patient resource must have an identifier for this search to succeed.
 Please refer also to the [Identifiers](identifiers.md) page to find more details regarding how to use Identifier in your query.

### Notes:

The response may not include any Patients if none matched the criteria. If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the Client Registry score.

In the context of the Get Demographics request message, the Patient resource must not have both a resource id (Patient.id) and a identifier(Patient.identifier) in the same request. If they are both supplied the message will be rejected.

#### In Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersIn | See[profile](StructureDefinition-bc-metadata-parameters-in.md). |
| 0..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |

#### Out Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersOut | See[profile](StructureDefinition-bc-metadata-parameters-out.md). |
| 1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested. |
| 0..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [here](StructureDefinition-bc-metadata-parameters-in.md), Get Demographics has two more, see below.

| | | | |
| :--- | :--- | :--- | :--- |
| identifiersOnly | boolean | 0..1 | Instruct the Client Registry to return Patient Identifiers only when true. If not present, defaults to false. |
| withHistory | boolean | 0..1 | Boolean flag to return Patient's history. If missing, defaults to false. |

#### Metadata Out Parameters

Besides the mandatory parameters, the request search parameters are echoed back in the MetadataParametersOut resource with a parameter named requestParameters (which is a MetadataParametersIn resource).

| | | | |
| :--- | :--- | :--- | :--- |
| requestParameters | MetadataParametersIn | 1..1 | The request parameters are echoed back.. |

#### Examples

See [Get Demographics request](Bundle-GetDemographics-Request.md) example.
 See [Get Demographics response](Bundle-GetDemographics-Response.md) example.
 See [Get Demographics with history response](Bundle-GetDemographics-withHistory-Response.md) example.
 See [Get Demographics with PHN info response](Bundle-GetDemographics-withPHNInfo-Response.md) example.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-patient-get-demographics",
  "url" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-get-demographics",
  "version" : "1.0.0",
  "name" : "GetDemographics",
  "title" : "GetDemographics",
  "status" : "active",
  "kind" : "query",
  "date" : "2026-03-17T18:19:20+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This operation is used to query for a patient.  The response can contain 0 or 1 Patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "GetDemographics",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-get-demographics-request-bundle",
  "outputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-search-response-bundle",
  "parameter" : [{
    "name" : "GetDemographicsRequestBundle",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "GetDemographics request Bundle.",
    "type" : "Bundle"
  },
  {
    "name" : "SearchResponseBundle",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "GetDemograponics response Bundle.",
    "type" : "Bundle"
  }]
}

```
