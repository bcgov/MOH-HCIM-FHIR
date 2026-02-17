# Resource HCIMPatientChangeDistributionTopic



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "HCIMPatientChangeDistributionTopic",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url",
      "valueUri" : "http://hlth.gov.bc.ca/fhir/client/SubscriptionTopic/HCIMPatientChangeDistributionTopic"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.version",
      "valueString" : "1.0.0"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name",
      "valueString" : "HCIMPatientChangeDistributionsTopic"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title",
      "valueString" : "HCIM Patient Change Distributions Topic"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status",
      "valueCode" : "active"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.experimental",
      "valueBoolean" : false
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.date",
      "valueDateTime" : "2026-02-17T21:23:45+00:00"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.publisher",
      "valueString" : "BC Ministry of Health"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.contact",
      "valueContactDetail" : {
        "name" : "BC Ministry of Health",
        "telecom" : [
          {
            "system" : "url",
            "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.description",
      "valueMarkdown" : "This is the subscription topic used for subscribing to different change distributions."
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.jurisdiction",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:3166",
            "code" : "CA",
            "display" : "Canada"
          }
        ]
      }
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "COMP"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "DEATH"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "EID"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "NEW"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "NEWBORN"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "NEWBORNGENDER"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "PHN"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "PHNJOIN"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "MERGE"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "resource",
          "valueUri" : "http://hl7.org/fhir/StructureDefinition/Patient"
        },
        {
          "url" : "event",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                "code" : "SSRISYNC"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.eventTrigger"
    },
    {
      "extension" : [
        {
          "url" : "description",
          "valueMarkdown" : "The type of patient change events to be notified."
        },
        {
          "url" : "filterParameter",
          "valueString" : "eventCode"
        },
        {
          "url" : "comparator",
          "valueCode" : "eq"
        }
      ],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/fhir-types",
        "code" : "SubscriptionTopic"
      }
    ]
  }
}

```
