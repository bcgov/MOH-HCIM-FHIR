# BC Merge Status Code - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Merge Status Code**

## Extension: BC Merge Status Code 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension | *Version*:1.0.0 |
| Active as of 2026-01-12 | *Computable Name*:MergeStatusExtension |

A code that represents the Merge status of the Patient.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PatientMerge](StructureDefinition-bc-merge-patient.md) and [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Parameters/Merge-Request](Parameters-Merge-Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-merge-status-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-merge-status-extension.csv), [Excel](StructureDefinition-bc-merge-status-extension.xlsx), [Schematron](StructureDefinition-bc-merge-status-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-merge-status-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension",
  "version" : "1.0.0",
  "name" : "MergeStatusExtension",
  "title" : "BC Merge Status Code",
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
  "description" : "A code that represents the Merge status of the Patient.",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient.link"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BC Merge Status Code",
        "definition" : "A code that represents the Merge status of the Patient."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-merge-status-value-set"
        }
      }
    ]
  }
}

```
