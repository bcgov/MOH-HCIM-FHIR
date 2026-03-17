# SampleCompositeSubscriptionRequest - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SampleCompositeSubscriptionRequest**

## Example Subscription: SampleCompositeSubscriptionRequest

Profile: [HCIMPatientChangeSubscription](StructureDefinition-HCIMPatientChangeSubscription.md)

**status**: Active

**reason**: Want to receive composite view notifications

**criteria**: http://hlth.gov.bc.ca/fhir/client/SubscriptionTopic/HCIMPatientChangeDistribution

### Channels

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Endpoint** | **Payload** |
| * | Rest Hook | [http://example.org/subscription-response-channel](https://simplifier.net/resolve?scope=hl7.fhir.ca.baseline@1.2.0&canonical=http://example.org/subscription-response-channel) | application/fhir+json |



## Resource Content

```json
{
  "resourceType" : "Subscription",
  "id" : "SampleCompositeSubscriptionRequest",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/HCIMPatientChangeSubscription"]
  },
  "status" : "active",
  "reason" : "Want to receive composite view notifications",
  "criteria" : "http://hlth.gov.bc.ca/fhir/client/SubscriptionTopic/HCIMPatientChangeDistribution",
  "_criteria" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria",
      "valueString" : "eventCode=COMPOSITE"
    }]
  },
  "channel" : {
    "type" : "rest-hook",
    "endpoint" : "http://example.org/subscription-response-channel",
    "payload" : "application/fhir+json",
    "_payload" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content",
        "valueCode" : "full-resource"
      }]
    }
  }
}

```
