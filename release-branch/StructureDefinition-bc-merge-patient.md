# PatientMerge - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientMerge**

## Resource Profile: PatientMerge 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient | *Version*:1.0.0 |
| Active as of 2026-01-12 | *Computable Name*:PatientMerge |

 
General constraints on the Patient resource for use in the BC Client Registry project Merge Operation. 

**Usages:**

* Use this Profile: [MergeRequestBundle](StructureDefinition-bc-merge-request-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-merge-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-merge-patient.csv), [Excel](StructureDefinition-bc-merge-patient.xlsx), [Schematron](StructureDefinition-bc-merge-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-merge-patient",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient",
  "version" : "1.0.0",
  "name" : "PatientMerge",
  "status" : "active",
  "date" : "2026-01-12T21:43:07+00:00",
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
  "description" : "General constraints on the Patient resource for use in the BC Client Registry project Merge Operation.",
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
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "invariant-merge-patient-1",
            "severity" : "error",
            "human" : "In a PatientMerge resource, all link.other.identifier must have a value",
            "expression" : "Patient.link.other.identifier.where(value.empty() or value ='').empty()",
            "source" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient"
          },
          {
            "key" : "invariant-merge-patient-2",
            "severity" : "error",
            "human" : "In a PatientMerge resource, identifier.extension shall not be present",
            "expression" : "Patient.identifier.value.extension.empty()",
            "source" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient"
          },
          {
            "key" : "invariant-merge-patient-3",
            "severity" : "error",
            "human" : "In a PatientMerge resource, link.other.identifier.extension shall never be present",
            "expression" : "Patient.link.other.identifier.value.extension.empty()",
            "source" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-patient"
          }
        ]
      },
      {
        "id" : "Patient.extension:patientEffectiveDates",
        "path" : "Patient.extension",
        "sliceName" : "patientEffectiveDates",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:JHN",
        "path" : "Patient.identifier",
        "sliceName" : "JHN",
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
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "short" : "phone | email",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-system-value-set"
        }
      },
      {
        "id" : "Patient.telecom.use",
        "path" : "Patient.telecom.use",
        "short" : "home | work | mobile",
        "min" : 1,
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
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
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
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate.extension",
        "path" : "Patient.birthDate.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
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
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
            ]
          }
        ]
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.deceased[x].extension",
        "path" : "Patient.deceased[x].extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
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
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.deceased[x].extension:verifiedDeathFlag",
        "path" : "Patient.deceased[x].extension",
        "sliceName" : "verifiedDeathFlag",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.extension:validationStatus",
        "path" : "Patient.address.extension",
        "sliceName" : "validationStatus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.type",
        "path" : "Patient.address.type",
        "short" : "postal | physical",
        "min" : 1
      },
      {
        "id" : "Patient.multipleBirth[x].extension:multipleBirthEffectiveDates",
        "path" : "Patient.multipleBirth[x].extension",
        "sliceName" : "multipleBirthEffectiveDates",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
            ]
          }
        ],
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
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
