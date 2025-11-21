# Patient Notification - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Notification**

## OperationDefinition: Patient Notification 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-notification | *Version*:1.0.0 |
| Active as of 2025-11-21 | *Computable Name*:PatientNotification |

 
This operation is used notify a user that a patient's record has changed. 

This is the Patient Notification operation, aka Distribution.

The Client Registry is acting as the client and is sending distributions when a patient record is created or changed.

URL: [base]/Patient/$PatientNotification

Input parameters Profile:[SubscriptionNotificationBundle](StructureDefinition-bc-subscription-notification-bundle.md)

### Parameters

* **Use**: OUT
  * **Name**: SubscriptionNotificationBundle
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Bundle](http://hl7.org/fhir/R4/bundle.html)
  * **Binding**: 
  * **Documentation**: The specific bundle entries that are needed when the Client Registry is sending a distribution (notification).



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-patient-notification",
  "url" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-notification",
  "version" : "1.0.0",
  "name" : "PatientNotification",
  "title" : "Patient Notification",
  "status" : "active",
  "kind" : "operation",
  "date" : "2025-11-21T23:55:27+00:00",
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
  "description" : "This operation is used notify a user that a patient's record has changed.",
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
  "code" : "PatientNotification",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle",
  "parameter" : [
    {
      "name" : "SubscriptionNotificationBundle",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "The specific bundle entries that are needed when the Client Registry is sending a distribution (notification).",
      "type" : "Bundle"
    }
  ]
}

```
