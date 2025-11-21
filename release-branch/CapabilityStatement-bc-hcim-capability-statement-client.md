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

## BC HCIM Client Capability Statement

* Implementation Guide Version: 1.0.0 
* FHIR Version: 4.0.1 
* Supported Formats: `json`
* Published on: 2025-10-10 
* Published by: BC Ministry of Health 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

**Security**

Enable CORS: no

Security services supported:
`OAuth`

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | [http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient](StructureDefinition-bc-patient.md)**Additional supported profiles:**  [SubscriptionNotificationBundle](StructureDefinition-bc-subscription-notification-bundle.md) |  |  |  |  |  |  |  | `$PatientNotification` |

-------

#### Resource Conformance: supported Patient

Base System Profile

[ClientRegistryPatient](StructureDefinition-bc-patient.md)

Profile Conformance

**SHALL**

Reference Policy

Supported Profiles
[SubscriptionNotificationBundle](StructureDefinition-bc-subscription-notification-bundle.md)

Interaction summary

Extended Operations




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
  "description" : "PCR as a client posts notifications/distributions via a patient-level operation. This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a client, sending distributions (notifications).",
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
  "kind" : "capability",
  "software" : {
    "name" : "BC HCIM FHIR Implementation"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [
    {
      "mode" : "client",
      "security" : {
        "service" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
                "code" : "OAuth"
              }
            ]
          }
        ]
      },
      "resource" : [
        {
          "type" : "Patient",
          "profile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient",
          "supportedProfile" : [
            "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"
          ],
          "operation" : [
            {
              "name" : "PatientNotification",
              "definition" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-notification",
              "documentation" : "POST [base]/Patient/$PatientNotification with a bc-subscription-notification-bundle."
            }
          ]
        }
      ]
    }
  ]
}

```
