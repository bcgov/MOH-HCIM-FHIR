# Newborn-Request - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Newborn-Request**

## Example Patient: Newborn-Request

Profile: [ClientRegistryPatient](StructureDefinition-bc-patient.md)

Proinnsias Edmon Beartlaidh Tabatabai Female, DoB: 1996-02-18 ( https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id#MB220FXR155686125TUN (use: official, ))

-------

| | |
| :--- | :--- |
| Alt. Name: | Victor (Nickname) |
| Contact Detail | * ph: 3104702526(Mobile)
* ph: 3366898069(Home)
* ph: 2544265519(Work)
* [Constance.Besarra@cgi.com](mailto:Constance.Besarra@cgi.com)
* [Hank.Avey@cgi.com](mailto:Hank.Avey@cgi.com)
* [Nerissa.Friede@cgi.com](mailto:Nerissa.Friede@cgi.com)
* 7562 Railroad street Calistoga BC V5QOX7 CA 
* 27523 Oak street Topmost BC V4IUH0 CA 
 |
| [BC Business Dates](StructureDefinition-bc-business-period-extension.md) | 2024-11-28 06:22:01-0800 --> (ongoing) |

-------

**Contained Resource**

-------

**identifier**: `https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id`/9999999999 (use: official, )

**active**: true

**patient**: [Proinnsias Edmon Beartlaidh Tabatabai Female, DoB: 1996-02-18 ( https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id#MB220FXR155686125TUN (use: official, ))](Patient-Newborn-Request.md)

**relationship**: natural mother



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Newborn-Request",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
    ]
  },
  "contained" : [
    {
      "resourceType" : "RelatedPerson",
      "id" : "Mother",
      "identifier" : [
        {
          "use" : "official",
          "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id",
          "value" : "9999999999"
        }
      ],
      "active" : true,
      "patient" : {
        "reference" : "Patient/Newborn-Request"
      },
      "relationship" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
              "code" : "NMTH"
            }
          ]
        }
      ]
    }
  ],
  "extension" : [
    {
      "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
      "valuePeriod" : {
        "start" : "2024-11-28T06:22:01.0974407-08:00"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-fha-exp-source-patient-id",
      "value" : "MB220FXR155686125TUN"
    }
  ],
  "name" : [
    {
      "use" : "usual",
      "family" : "Tabatabai",
      "given" : ["Proinnsias", "Edmon", "Beartlaidh"]
    },
    {
      "use" : "nickname",
      "given" : ["Victor"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "3104702526",
      "use" : "mobile"
    },
    {
      "system" : "phone",
      "value" : "3366898069",
      "use" : "home"
    },
    {
      "system" : "phone",
      "value" : "2544265519",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "Constance.Besarra@cgi.com",
      "use" : "mobile"
    },
    {
      "system" : "email",
      "value" : "Hank.Avey@cgi.com",
      "use" : "home"
    },
    {
      "system" : "email",
      "value" : "Nerissa.Friede@cgi.com",
      "use" : "work"
    }
  ],
  "gender" : "female",
  "birthDate" : "1996-02-18",
  "address" : [
    {
      "type" : "physical",
      "line" : ["7562 Railroad street"],
      "city" : "Calistoga",
      "state" : "BC",
      "postalCode" : "V5QOX7",
      "country" : "CA"
    },
    {
      "type" : "postal",
      "line" : ["27523 Oak street"],
      "city" : "Topmost",
      "state" : "BC",
      "postalCode" : "V4IUH0",
      "country" : "CA"
    }
  ]
}

```
