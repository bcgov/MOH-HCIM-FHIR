# SubscriptionNotificationBundle - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SubscriptionNotificationBundle**

## Resource Profile: SubscriptionNotificationBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:SubscriptionNotificationBundle |

 
A Bundle that is used in the Client Registry when sending subscription notifications. 

**Usages:**

* Examples for this Profile: [Bundle/COMP-Distribution-Notification](Bundle-COMP-Distribution-Notification.md), [Bundle/NEW-Distribution-Notification](Bundle-NEW-Distribution-Notification.md) and [Bundle/NEWBORN-Distribution-Notification-Masked-MumPHN](Bundle-NEWBORN-Distribution-Notification-Masked-MumPHN.md)
* CapabilityStatements using this Profile: [BC HCIM Client Capability Statement](CapabilityStatement-bc-hcim-capability-statement-client.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-subscription-notification-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-subscription-notification-bundle.csv), [Excel](StructureDefinition-bc-subscription-notification-bundle.xlsx), [Schematron](StructureDefinition-bc-subscription-notification-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-subscription-notification-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle",
  "version" : "1.0.0",
  "name" : "SubscriptionNotificationBundle",
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
  "description" : "A Bundle that is used in the Client Registry when sending subscription notifications.",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "fixedCode" : "collection",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "description" : "The specific bundle entries that are needed when the Client Registry is sending a subscription notification.",
        "rules" : "open"
      },
      "min" : 2,
      "max" : "3"
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "Revised Patient.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:parameters",
      "path" : "Bundle.entry",
      "sliceName" : "parameters",
      "short" : "Subscription Metadata parameters",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:parameters.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Parameters",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription"]
      }]
    }]
  }
}

```
