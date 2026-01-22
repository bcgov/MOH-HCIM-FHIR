# Revise Patient - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Revise Patient**

## OperationDefinition: Revise Patient 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-revise | *Version*:1.0.0 |
| Draft as of 2026-01-22 | *Computable Name*:RevisePatient |

 
This operation is used to revise a patient's demographics. 

This is the Revise Patient operation. The request is a Bundle and is used for incoming updates and also used for Patient notifications (outbound messages, from the Client Registry to a connected partner)

A Patient resource is required to update or add a patient. If updating, the empty attributes in the Patient resource will be deleted by the Client Registry.

Please refer also to the [Identifiers](identifiers.md) page to find more details regarding how to use Identifier in your query.

### Notes:

#### In Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersIn | See[profile](StructureDefinition-bc-metadata-parameters-in.md). |
| 1..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |

#### Out Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersOut | See[profile](StructureDefinition-bc-metadata-parameters-out.md). |
| 1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested. |
| 0..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [parameters in](StructureDefinition-bc-metadata-parameters-in.md), Revise Patient has no additional paramters.

#### Metadata Out Parameters

Besides the mandatory parameters, Revise Patient has no additional out parameters. See [parameters out](StructureDefinition-bc-metadata-parameters-out.md)

#### Examples

See [Revise Patient request](Bundle-Revise-withMaxData-Request.md) example.
 See [Revise Patient response](Bundle-Revise-Response.md) example.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-patient-revise",
  "url" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-revise",
  "version" : "1.0.0",
  "name" : "RevisePatient",
  "title" : "Revise Patient",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-01-22T19:20:19+00:00",
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
  "description" : "This operation is used to revise a patient's demographics.",
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
  "code" : "RevisePatient",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-request-bundle",
  "outputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-response-bundle",
  "parameter" : [
    {
      "name" : "ReviseRequestBundle",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "The RevisePatient operation request Bundle.",
      "type" : "Bundle"
    },
    {
      "name" : "ReviseResponseBundle",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "The RevisePatient operation response Bundle.",
      "type" : "Bundle"
    }
  ]
}

```
