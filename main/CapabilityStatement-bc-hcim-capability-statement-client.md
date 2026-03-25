# Notifications Distributor (Client) — Operations Only - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Notifications Distributor (Client) — Operations Only**

## CapabilityStatement: Notifications Distributor (Client) — Operations Only 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/CapabilityStatement/bc-hcim-capability-statement-client | *Version*:1.0.0 |
| Active as of 2025-10-10 | *Computable Name*:HCIMClientCapabilityStatement |

 
PCR as a client posts notifications/distributions via a patient-level operation. This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client, sending distributions (notifications). 

 [Raw OpenAPI-Swagger Definition file](bc-hcim-capability-statement-client.openapi.json) | [Download](bc-hcim-capability-statement-client.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "bc-hcim-capability-statement-client",
  "url" : "http://hlth.gov.bc.ca/fhir/client/CapabilityStatement/bc-hcim-capability-statement-client",
  "version" : "1.0.0",
  "name" : "HCIMClientCapabilityStatement",
  "title" : "BC HCIM Client Capability Statement",
  "status" : "active",
  "date" : "2025-10-10",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "PCR as a client posts notifications/distributions via a patient-level operation. This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client, sending distributions (notifications).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "kind" : "capability",
  "software" : {
    "name" : "BC HCIM FHIR Implementation"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [{
    "mode" : "client",
    "security" : {
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "OAuth"
        }]
      }]
    },
    "resource" : [{
      "type" : "Patient",
      "profile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient",
      "supportedProfile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"],
      "operation" : [{
        "name" : "PatientNotification",
        "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-notification",
        "documentation" : "POST [base]/Patient/$PatientNotification with a bc-subscription-notification-bundle."
      }]
    }]
  }]
}

```
