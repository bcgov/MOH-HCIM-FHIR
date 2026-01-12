# NEW-Distribution-Notification - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NEW-Distribution-Notification**

## Example Bundle: NEW-Distribution-Notification



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "NEW-Distribution-Notification",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"
    ]
  },
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:6eaf44d4-4bb6-4518-9daa-ab4de8a397a8"
  },
  "type" : "collection",
  "timestamp" : "2025-10-10T14:21:13.2932894-07:00",
  "link" : [
    {
      "relation" : "self",
      "url" : "urn:uuid:356859ba-983b-40d6-a03c-5a99f05c96b5"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "urn:uuid:356859ba-983b-40d6-a03c-5a99f05c96b5",
      "resource" : {
        "resourceType" : "Parameters",
        "id" : "Inline-Instance-for-NEW-Distribution",
        "meta" : {
          "profile" : [
            "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription"
          ]
        },
        "parameter" : [
          {
            "name" : "messageId",
            "valueString" : "356859ba-983b-40d6-a03c-5a99f05c96b5"
          },
          {
            "name" : "messageDateTime",
            "valueDateTime" : "2025-10-10T15:06:59-07:00"
          },
          {
            "name" : "eventType",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                  "code" : "NEW"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl" : "https://hd4.hcim.ehealth.gov.bc.ca/Patient/PHNHere",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "NEWPatient",
        "meta" : {
          "profile" : [
            "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_NEWPatient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient NEWPatient</b></p><a name=\"NEWPatient\"> </a><a name=\"hcNEWPatient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-bc-patient.html\">ClientRegistryPatient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Nigel Kleiber  Male, DoB: 2004-03-28 ( https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id#PHNHere (use: official, period: 2025-10-10 15:06:59-0700 --&gt; (ongoing)))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>ph: 305-501-8219(Home)</li><li><a href=\"mailto:Kleiber9140@Lawn.com\">Kleiber9140@Lawn.com</a></li><li>4852 Catalina Expressway Pender Harbour BC V3R 1L4 CA </li></ul></td></tr></table></div>"
        },
        "identifier" : [
          {
            "extension" : [
              {
                "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension",
                "valueCode" : "active"
              }
            ],
            "use" : "official",
            "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id",
            "value" : "PHNHere",
            "period" : {
              "start" : "2025-10-10T15:06:59-07:00"
            },
            "assigner" : {
              "display" : "MOH Client Registry - MOH_CRS"
            }
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "usual",
            "family" : "Kleiber",
            "given" : ["Nigel"],
            "period" : {
              "start" : "2025-10-10T15:06:59-07:00"
            }
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "305-501-8219",
            "use" : "home",
            "period" : {
              "start" : "2025-10-10T15:06:59-07:00"
            }
          },
          {
            "system" : "email",
            "value" : "Kleiber9140@Lawn.com",
            "use" : "home",
            "period" : {
              "start" : "2025-10-10T15:06:59-07:00"
            }
          }
        ],
        "gender" : "male",
        "_gender" : {
          "extension" : [
            {
              "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
              "valuePeriod" : {
                "start" : "2025-10-10T15:06:59-07:00"
              }
            }
          ]
        },
        "birthDate" : "2004-03-28",
        "_birthDate" : {
          "extension" : [
            {
              "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
              "valuePeriod" : {
                "start" : "2025-10-10T15:06:59-07:00"
              }
            }
          ]
        },
        "address" : [
          {
            "extension" : [
              {
                "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension",
                "valueCode" : "unknown"
              }
            ],
            "type" : "physical",
            "line" : ["4852 Catalina Expressway"],
            "city" : "Pender Harbour",
            "state" : "BC",
            "postalCode" : "V3R 1L4",
            "country" : "CA",
            "period" : {
              "start" : "2025-10-10T15:06:59-07:00"
            }
          }
        ]
      }
    }
  ]
}

```
