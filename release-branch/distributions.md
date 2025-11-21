# Distributions - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Distributions**

## Distributions

### Patient Change Subscriptions

Patient Change Notifications are sent when a patient record is created or changed and the user system has subscribed to receive notifications about those changes. This guide supports the R4 Subscriptions referered in the [Subscriptions for R5 Backport Implementation Guide](http://hl7.org/fhir/uv/subscriptions-backport/).

User Systems **SHALL** POST a new Subscription instance to the Client Registry's Subscription endpoint. This Subscription instance **SHALL** conform to the [Patient Change Subscription profile](StructureDefinition-HCIMPatientChangeSubscription.md). The Subscription criteria is set to the [HCIM Patient Change Subscription Topic](SubscriptionTopic-HCIMPatientChangeDistributionTopic.md) Canonical 'http://hl7.org/fhir/us/davinci-pas/SubscriptionTopic/HCIMPatientChangeDistributionTopic'. The filterCriteria extension on Subscription.criteria indicates which specific Patient Change events (from the [Patient Change value set](ValueSet-bc-client-registry-patient-change-notification-events-value-set.md)) the user system is requesting to be informed about. When those types of changes occur, the Client Registry **SHALL** send a notification over the requested channel indicating that a change to a patient record has occurred.

In all cases, the content extension on the Subscription payload will be set to 'full-resource' and then the subscription notification will contain the changed patient data. The notification will be an instance of a [Subscription Notification Bundle](StructureDefinition-bc-subscription-notification-bundle.md).

Additional information about creating subscriptions can be found [here](CodeSystem-bc-client-registry-patient-change-notification-events.md) or in the [Capability Statement](CapabilityStatement-bc-hcim-capability-statement-client.md).

