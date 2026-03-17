# MetadataParametersSubscription - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MetadataParametersSubscription**

## Resource Profile: MetadataParametersSubscription 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:MetadataParametersSubscription |

 
Parameters profile for BC meta data when a subscription response is sent. 

**Usages:**

* Use this Profile: [SubscriptionNotificationBundle](StructureDefinition-bc-subscription-notification-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-metadata-parameters-subscription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-metadata-parameters-subscription.csv), [Excel](StructureDefinition-bc-metadata-parameters-subscription.xlsx), [Schematron](StructureDefinition-bc-metadata-parameters-subscription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-metadata-parameters-subscription",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription",
  "version" : "1.0.0",
  "name" : "MetadataParametersSubscription",
  "status" : "active",
  "date" : "2026-03-17T18:19:20+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Parameters profile for BC meta data when a subscription response is sent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Parameters",
      "path" : "Parameters"
    },
    {
      "id" : "Parameters.parameter",
      "path" : "Parameters.parameter",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "name"
        }],
        "description" : "The specific parameters to specify BC Subscription Metadata.",
        "rules" : "open"
      },
      "min" : 3
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
      "type" : [{
        "code" : "string"
      }],
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
      "id" : "Parameters.parameter:messageDateTime",
      "path" : "Parameters.parameter",
      "sliceName" : "messageDateTime",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:messageDateTime.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "messageDateTime",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:messageDateTime.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Parameters.parameter:messageDateTime.value[x]:valueDateTime",
      "path" : "Parameters.parameter.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:messageDateTime.resource",
      "path" : "Parameters.parameter.resource",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:messageDateTime.part",
      "path" : "Parameters.parameter.part",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:eventType",
      "path" : "Parameters.parameter",
      "sliceName" : "eventType",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:eventType.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "eventType",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:eventType.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-client-registry-patient-change-notification-events"
      }
    },
    {
      "id" : "Parameters.parameter:eventType.resource",
      "path" : "Parameters.parameter.resource",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:eventType.part",
      "path" : "Parameters.parameter.part",
      "max" : "0"
    }]
  }
}

```
