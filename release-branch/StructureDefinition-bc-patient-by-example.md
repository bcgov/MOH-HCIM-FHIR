# PatientByExample - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientByExample**

## Resource Profile: PatientByExample 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient-by-example | *Version*:1.0.0 |
| Active as of 2026-01-22 | *Computable Name*:PatientByExample |

 
Will get removed. General constraints on the Patient resource for use in the BC Client Registry project for queries. PatientByExample is a resource of the Client Registry FHIR implementation use only by Get Demographics and Find Candidates 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-patient-by-example)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-patient-by-example.csv), [Excel](StructureDefinition-bc-patient-by-example.xlsx), [Schematron](StructureDefinition-bc-patient-by-example.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-patient-by-example",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient-by-example",
  "version" : "1.0.0",
  "name" : "PatientByExample",
  "status" : "active",
  "date" : "2026-01-22T19:20:19+00:00",
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
  "description" : "Will get removed. General constraints on the Patient resource for use in the BC Client Registry project for queries. PatientByExample is a resource of the Client Registry FHIR implementation use only by Get Demographics and Find Candidates",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.implicitRules",
        "path" : "Patient.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Patient.language",
        "path" : "Patient.language",
        "max" : "0"
      },
      {
        "id" : "Patient.contained",
        "path" : "Patient.contained",
        "max" : "0"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:JHN",
        "path" : "Patient.identifier",
        "sliceName" : "JHN",
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier"
            ]
          }
        ]
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "max" : "0"
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "max" : "1"
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
        "max" : "2",
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "mustSupport" : true
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.deceased[x]:deceasedDateTime",
        "path" : "Patient.deceased[x]",
        "sliceName" : "deceasedDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.type",
        "path" : "Patient.address.type",
        "short" : "postal | physical"
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "max" : "0"
      },
      {
        "id" : "Patient.multipleBirth[x]",
        "path" : "Patient.multipleBirth[x]",
        "max" : "0"
      },
      {
        "id" : "Patient.photo",
        "path" : "Patient.photo",
        "max" : "0"
      },
      {
        "id" : "Patient.contact",
        "path" : "Patient.contact",
        "max" : "0"
      },
      {
        "id" : "Patient.communication",
        "path" : "Patient.communication",
        "max" : "0"
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "max" : "0"
      },
      {
        "id" : "Patient.managingOrganization",
        "path" : "Patient.managingOrganization",
        "max" : "0"
      },
      {
        "id" : "Patient.link",
        "path" : "Patient.link",
        "max" : "0"
      }
    ]
  }
}

```
