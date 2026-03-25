# ClientRegistryPatient - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ClientRegistryPatient**

## Resource Profile: ClientRegistryPatient 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:ClientRegistryPatient |

 
General constraints on the Patient resource for use in the BC Client Registry project. 

Patient is a core resource of the Client Registry FHIR implementation. Patients are returned by queries ([Find Candidates](OperationDefinition-bc-patient-find-candidates.md) and [Get Demographics](OperationDefinition-bc-patient-get-demographics.md)) and modified or updated by [AddPatient](OperationDefinition-bc-patient-add.md), [RevisePatient](OperationDefinition-bc-patient-revise.md) and [MergePatient](OperationDefinition-bc-patient-merge.md) FHIR Operations. This profile primarily adds extensions to elements that the core Patient resource does not include such as business dates.

In the context of the Get Demographics request message, the Patient resource must have either a resource id ( Patient.id) or an identifier(Patient.identifier) in the same request. If they are both supplied the message will be rejected.

In the context of the Revise Person and Merge request message, the Patient resource must have an effective date (which is the business date when the patient presented for service, not a real time date).

**Usages:**

* Use this Profile: [AddRequestBundle](StructureDefinition-bc-add-request-bundle.md), [AddResponseBundle](StructureDefinition-bc-add-response-bundle.md), [FindCandidatesRequestBundle](StructureDefinition-bc-find-candidates-request-bundle.md), [GetDemographicsRequestBundle](StructureDefinition-bc-get-demographics-request-bundle.md)... Show 4 more, [ReviseRequestBundle](StructureDefinition-bc-revise-request-bundle.md), [ReviseResponseBundle](StructureDefinition-bc-revise-response-bundle.md), [SearchResponseBundle](StructureDefinition-bc-search-response-bundle.md) and [SubscriptionNotificationBundle](StructureDefinition-bc-subscription-notification-bundle.md)
* Examples for this Profile: [Patient/Force-Create-Request](Patient-Force-Create-Request.md), [Patient/Newborn-Request](Patient-Newborn-Request.md), [Patient/Patient-GetDemographics-Example](Patient-Patient-GetDemographics-Example.md), [Patient/Revise-Request-No-SRI-RESTful](Patient-Revise-Request-No-SRI-RESTful.md) and [Patient/Revise-Request](Patient-Revise-Request.md)
* CapabilityStatements using this Profile: [BC HCIM Client Capability Statement](CapabilityStatement-bc-hcim-capability-statement-client.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-patient.csv), [Excel](StructureDefinition-bc-patient.xlsx), [Schematron](StructureDefinition-bc-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-patient",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient",
  "version" : "1.0.0",
  "name" : "ClientRegistryPatient",
  "status" : "active",
  "date" : "2026-03-25T21:32:51+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "General constraints on the Patient resource for use in the BC Client Registry project.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.extension:patientEffectiveDates",
      "path" : "Patient.extension",
      "sliceName" : "patientEffectiveDates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.extension:sourceID",
      "path" : "Patient.identifier.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.extension:idStatus",
      "path" : "Patient.identifier.extension",
      "sliceName" : "idStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.use",
      "path" : "Patient.identifier.use",
      "short" : "official | secondary",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-identifier-use-value-set"
      }
    },
    {
      "id" : "Patient.identifier:JHN",
      "path" : "Patient.identifier",
      "sliceName" : "JHN",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier"]
      }]
    },
    {
      "id" : "Patient.name.extension:sourceID",
      "path" : "Patient.name.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "short" : "usual | official | nickname",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-name-use-value-set"
      }
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.extension:sourceID",
      "path" : "Patient.telecom.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "short" : "phone | email",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-system-value-set"
      }
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "short" : "International: +ICC<space>areacode<space>phonenumber Example: +1 302 1234567, National: areacode<space>phonenumber Example: 2501234567, Email: email@domain"
    },
    {
      "id" : "Patient.telecom.use",
      "path" : "Patient.telecom.use",
      "short" : "home | work | mobile",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-use-value-set"
      }
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender.extension",
      "path" : "Patient.gender.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.gender.extension:genderEffectiveDates",
      "path" : "Patient.gender.extension",
      "sliceName" : "genderEffectiveDates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender.extension:sourceID",
      "path" : "Patient.gender.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender.extension:history",
      "path" : "Patient.gender.extension",
      "sliceName" : "history",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate.extension",
      "path" : "Patient.birthDate.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.birthDate.extension:birthDateEffectiveDates",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthDateEffectiveDates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"]
      }]
    },
    {
      "id" : "Patient.birthDate.extension:sourceID",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate.extension:history",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "history",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-birthdate-history-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x].extension",
      "path" : "Patient.deceased[x].extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.deceased[x].extension:deathDateEffectiveDates",
      "path" : "Patient.deceased[x].extension",
      "sliceName" : "deathDateEffectiveDates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x].extension:sourceID",
      "path" : "Patient.deceased[x].extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x].extension:deathDateHistory",
      "path" : "Patient.deceased[x].extension",
      "sliceName" : "deathDateHistory",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-date-history-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x].extension:verifiedDeathFlag",
      "path" : "Patient.deceased[x].extension",
      "sliceName" : "verifiedDeathFlag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:sourceID",
      "path" : "Patient.address.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:validationStatus",
      "path" : "Patient.address.extension",
      "sliceName" : "validationStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.type",
      "path" : "Patient.address.type",
      "short" : "postal | physical"
    },
    {
      "id" : "Patient.multipleBirth[x].extension:multipleBirthEffectiveDates",
      "path" : "Patient.multipleBirth[x].extension",
      "sliceName" : "multipleBirthEffectiveDates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.multipleBirth[x].extension:sourceID",
      "path" : "Patient.multipleBirth[x].extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.multipleBirth[x].extension:history",
      "path" : "Patient.multipleBirth[x].extension",
      "sliceName" : "history",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-multiplebirth-history-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "mustSupport" : true
    },
    {
      "id" : "Patient.link.extension:mergeStatus",
      "path" : "Patient.link.extension",
      "sliceName" : "mergeStatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"]
      }],
      "mustSupport" : true
    }]
  }
}

```
