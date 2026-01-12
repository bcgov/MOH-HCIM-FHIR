# COMP-Distribution-Notification - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **COMP-Distribution-Notification**

## Example Bundle: COMP-Distribution-Notification



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "COMP-Distribution-Notification",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-subscription-notification-bundle"
    ]
  },
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:36acce9c-9a0f-40ae-99e0-3ab7f4e7613f"
  },
  "type" : "collection",
  "timestamp" : "2025-10-10T13:19:55.2838297-07:00",
  "link" : [
    {
      "relation" : "self",
      "url" : "urn:uuid:0c19a592-9835-4039-a1f7-a9bcc050671f"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "urn:uuid:0c19a592-9835-4039-a1f7-a9bcc050671f",
      "resource" : {
        "resourceType" : "Parameters",
        "id" : "Inline-Instance-for-COMP-Distribution",
        "meta" : {
          "profile" : [
            "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-subscription"
          ]
        },
        "parameter" : [
          {
            "name" : "messageId",
            "valueString" : "0c19a592-9835-4039-a1f7-a9bcc050671f"
          },
          {
            "name" : "messageDateTime",
            "valueDateTime" : "2025-10-10T13:17:47-07:00"
          },
          {
            "name" : "eventType",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
                  "code" : "COMP"
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
        "id" : "COMPPatient",
        "meta" : {
          "profile" : [
            "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_COMPPatient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient COMPPatient</b></p><a name=\"COMPPatient\"> </a><a name=\"hcCOMPPatient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-bc-patient.html\">ClientRegistryPatient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Preston Wilfredo Ward Hui  Male, DoB: 2006-06-05 ( https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id#PHNHere (use: official, period: 2025-10-10 13:03:31-0700 --&gt; (ongoing)))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Alternate names (see the one above)\">Alt. Name:</td><td colspan=\"3\">Nicolas (Nickname)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>ph: 644-569-9236(Mobile)</li><li>ph: 886-839-9045(Home)</li><li>ph: 875-281-5886(Work)</li><li><a href=\"mailto:Wilfredo5205@Grove.com\">Wilfredo5205@Grove.com</a></li><li><a href=\"mailto:Hui6193@Grove.com\">Hui6193@Grove.com</a></li><li><a href=\"mailto:Preston6559@Grove.com\">Preston6559@Grove.com</a></li><li>7992 Wentworth Autoroute Suite 6161 PO Box 3681 Holberg BC V3R 0T2 CA </li><li>5870 Silliman Grove Rural Route 3233 PO Box 1510 Winter Harbour BC V8N 1B7 CA </li></ul></td></tr></table></div>"
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
              "start" : "2025-10-10T13:03:31-07:00"
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
            "family" : "Hui",
            "given" : ["Preston", "Wilfredo", "Ward"],
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          },
          {
            "use" : "nickname",
            "given" : ["Nicolas"],
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "644-569-9236",
            "use" : "mobile",
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          },
          {
            "system" : "phone",
            "value" : "886-839-9045",
            "use" : "home",
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          },
          {
            "system" : "phone",
            "value" : "875-281-5886",
            "use" : "work",
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          },
          {
            "system" : "email",
            "value" : "Wilfredo5205@Grove.com",
            "use" : "mobile",
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          },
          {
            "system" : "email",
            "value" : "Hui6193@Grove.com",
            "use" : "home",
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          },
          {
            "system" : "email",
            "value" : "Preston6559@Grove.com",
            "use" : "work",
            "period" : {
              "start" : "2025-10-10T13:03:31-07:00"
            }
          }
        ],
        "gender" : "male",
        "_gender" : {
          "extension" : [
            {
              "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
              "valuePeriod" : {
                "start" : "2025-10-10T13:03:31-07:00"
              }
            }
          ]
        },
        "birthDate" : "2006-06-05",
        "_birthDate" : {
          "extension" : [
            {
              "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
              "valuePeriod" : {
                "start" : "2025-10-10T13:03:31-07:00"
              }
            }
          ]
        },
        "address" : [
          {
            "extension" : [
              {
                "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension",
                "valueCode" : "invalid"
              }
            ],
            "type" : "physical",
            "line" : ["7992 Wentworth Autoroute", "Suite 6161", "PO Box 3681"],
            "city" : "Holberg",
            "state" : "BC",
            "postalCode" : "V3R 0T2",
            "country" : "CA",
            "period" : {
              "start" : "2025-10-10T13:04:31-07:00"
            }
          },
          {
            "extension" : [
              {
                "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension",
                "valueCode" : "invalid"
              }
            ],
            "type" : "postal",
            "line" : ["5870 Silliman Grove", "Rural Route 3233", "PO Box 1510"],
            "city" : "Winter Harbour",
            "state" : "BC",
            "postalCode" : "V8N 1B7",
            "country" : "CA",
            "period" : {
              "start" : "2025-10-10T13:04:31-07:00"
            }
          }
        ]
      }
    }
  ]
}

```
