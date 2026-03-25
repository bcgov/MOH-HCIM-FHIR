# HCIMPatientChangeSubscription - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HCIMPatientChangeSubscription**

## Resource Profile: HCIMPatientChangeSubscription 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/HCIMPatientChangeSubscription | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:HCIMPatientChangeSubscription |

 
Profile on subscription for HCIM Patient Changes 

**Usages:**

* Examples for this Profile: [Subscription/SampleCompositeSubscriptionRequest](Subscription-SampleCompositeSubscriptionRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/HCIMPatientChangeSubscription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HCIMPatientChangeSubscription.csv), [Excel](StructureDefinition-HCIMPatientChangeSubscription.xlsx), [Schematron](StructureDefinition-HCIMPatientChangeSubscription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HCIMPatientChangeSubscription",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/HCIMPatientChangeSubscription",
  "version" : "1.0.0",
  "name" : "HCIMPatientChangeSubscription",
  "status" : "active",
  "date" : "2026-03-25T22:00:37+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Profile on subscription for HCIM Patient Changes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Subscription",
  "baseDefinition" : "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Subscription",
      "path" : "Subscription"
    },
    {
      "id" : "Subscription.criteria",
      "path" : "Subscription.criteria",
      "patternString" : "http://hlth.gov.bc.ca/fhir/client/SubscriptionTopic/HCIMPatientChangeDistribution"
    },
    {
      "id" : "Subscription.channel",
      "path" : "Subscription.channel",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.channel.type",
      "path" : "Subscription.channel.type",
      "patternCode" : "rest-hook",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.channel.endpoint",
      "path" : "Subscription.channel.endpoint",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Subscription.channel.payload",
      "path" : "Subscription.channel.payload",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.channel.payload.extension:content",
      "path" : "Subscription.channel.payload.extension",
      "sliceName" : "content"
    },
    {
      "id" : "Subscription.channel.payload.extension:content.value[x]:valueCode",
      "path" : "Subscription.channel.payload.extension.value[x]",
      "sliceName" : "valueCode",
      "type" : [{
        "code" : "code"
      }],
      "patternCode" : "full-resource"
    }]
  }
}

```
