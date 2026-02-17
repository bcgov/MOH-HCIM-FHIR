# MetadataParametersIn - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MetadataParametersIn**

## Resource Profile: MetadataParametersIn 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-in | *Version*:1.0.0 |
| Active as of 2026-02-17 | *Computable Name*:MetadataParametersIn |

 
Parameters profile for BC meta data - incoming messages. This profile is also intended to force the inclusion of specific parameters for the related Parameters. 

This profile of Parameters is intended for inbound messages. Each request (Operation) must have these fields in a Parameter resource. It also has a list of specific parameters that are common to all Operations, and common to all type of Messages (inbound, outbound, async). Below is a list of these parameters with descriptions.

| | |
| :--- | :--- |
| messageId | The unique id for the operation request. This is assigned by the sender of the operation request. |
| messageDateTime | DEPRECATED and Removed. This field was to store the date and time that the request was sent by the original sender |
| requestMessageId | Each request will have a response. The response can be related back to the request (important for asynchronous operations) when the unique Id of the request is included in the response. |
| sender | This is an identifier for the source of the request or response. |
| enterer | The user identifier if required. |

**Usages:**

* Derived from this Profile: [MetadataParametersAsync](StructureDefinition-bc-metadata-parameter-async-response.md) and [MetadataParametersOut](StructureDefinition-bc-metadata-parameters-out.md)
* Use this Profile: [AddRequestBundle](StructureDefinition-bc-add-request-bundle.md), [FindCandidatesRequestBundle](StructureDefinition-bc-find-candidates-request-bundle.md), [GetDemographicsRequestBundle](StructureDefinition-bc-get-demographics-request-bundle.md), [MergeRequestBundle](StructureDefinition-bc-merge-request-bundle.md) and [ReviseRequestBundle](StructureDefinition-bc-revise-request-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-metadata-parameters-in)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-metadata-parameters-in.csv), [Excel](StructureDefinition-bc-metadata-parameters-in.xlsx), [Schematron](StructureDefinition-bc-metadata-parameters-in.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-metadata-parameters-in",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-in",
  "version" : "1.0.0",
  "name" : "MetadataParametersIn",
  "status" : "active",
  "date" : "2026-02-17T21:23:45+00:00",
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
  "description" : "Parameters profile for BC meta data - incoming messages. This profile is also intended to force the inclusion of specific parameters for the related Parameters.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters.parameter",
        "path" : "Parameters.parameter",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "name"
            }
          ],
          "description" : "The specific parameters to specify BC Metadata.",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:messageId",
        "path" : "Parameters.parameter",
        "sliceName" : "messageId",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:messageId.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "messageId",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:messageId.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:messageId.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:messageId.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:identifiersOnly",
        "path" : "Parameters.parameter",
        "sliceName" : "identifiersOnly",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:identifiersOnly.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "identifiersOnly",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:identifiersOnly.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:identifiersOnly.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:identifiersOnly.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:history",
        "path" : "Parameters.parameter",
        "sliceName" : "history",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:history.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "history",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:history.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:history.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:history.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
