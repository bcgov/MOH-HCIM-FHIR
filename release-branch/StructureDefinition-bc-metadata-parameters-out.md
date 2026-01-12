# MetadataParametersOut - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MetadataParametersOut**

## Resource Profile: MetadataParametersOut 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-out | *Version*:1.0.0 |
| Active as of 2026-01-12 | *Computable Name*:MetadataParametersOut |

 
Parameters profile for BC meta data - outbound messages. 

This profile of Parameters is intended for outbound messages. Each response (Operation) must have these fields in a Parameter resource. It also has a list of specific parameters that are common to all Operations, and common to all type of Messages (inbound, outbound, async). Below is a list of these parameters with descriptions.

| | |
| :--- | :--- |
| messageId | The unique id for the operation request. This is assigned by the sender of the operation request. |
| messageDateTime | DEPRECATED and Removed. This field was to store the date and time that the request was sent. |
| requestMessageId | Each request will have a response. The response can be related back to the request (important for asynchronous operations) when the unique Id of the request is included in the response. |
| sender | This is an identifier for the source of the request or response. |
| enterer | The user identifier if required. |

**Usages:**

* Use this Profile: [AddResponseBundle](StructureDefinition-bc-add-response-bundle.md), [MergeResponseBundle](StructureDefinition-bc-merge-response-bundle.md), [ReviseResponseBundle](StructureDefinition-bc-revise-response-bundle.md) and [SearchResponseBundle](StructureDefinition-bc-search-response-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-metadata-parameters-out)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-metadata-parameters-out.csv), [Excel](StructureDefinition-bc-metadata-parameters-out.xlsx), [Schematron](StructureDefinition-bc-metadata-parameters-out.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-metadata-parameters-out",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-out",
  "version" : "1.0.0",
  "name" : "MetadataParametersOut",
  "status" : "active",
  "date" : "2026-01-12T21:43:07+00:00",
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
  "description" : "Parameters profile for BC meta data - outbound messages.",
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
  "baseDefinition" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-in",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters.parameter",
        "path" : "Parameters.parameter",
        "min" : 2
      },
      {
        "id" : "Parameters.parameter:requestMessageId",
        "path" : "Parameters.parameter",
        "sliceName" : "requestMessageId",
        "short" : "The messageID coming from the request",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:requestMessageId.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "requestMessageId",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:requestMessageId.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:requestMessageId.value[x]:valueString",
        "path" : "Parameters.parameter.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:requestMessageId.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:requestMessageId.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:sender",
        "path" : "Parameters.parameter",
        "sliceName" : "sender",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sender.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "sender",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sender.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:sender.value[x]:valueIdentifier",
        "path" : "Parameters.parameter.value[x]",
        "sliceName" : "valueIdentifier",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sender.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:sender.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:enterer",
        "path" : "Parameters.parameter",
        "sliceName" : "enterer",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:enterer.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "enterer",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:enterer.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:enterer.value[x]:valueIdentifier",
        "path" : "Parameters.parameter.value[x]",
        "sliceName" : "valueIdentifier",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:enterer.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:enterer.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:requestParameters",
        "path" : "Parameters.parameter",
        "sliceName" : "requestParameters",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:requestParameters.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "requestParameters",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:requestParameters.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:requestParameters.resource",
        "path" : "Parameters.parameter.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Parameters"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:requestParameters.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
