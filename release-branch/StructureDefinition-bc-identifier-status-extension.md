# BC Identifier Status - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Identifier Status**

## Extension: BC Identifier Status 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension | *Version*:1.0.0 |
| Active as of 2026-02-17 | *Computable Name*:IdentifierStatusExtension |

Identifier status.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/AddNewbornByMumsPHN-Request](Bundle-AddNewbornByMumsPHN-Request.md), [Bundle/AddPatient-Response](Bundle-AddPatient-Response.md), [Bundle/COMP-Distribution-Notification](Bundle-COMP-Distribution-Notification.md), [Bundle/FindCandidates-Response](Bundle-FindCandidates-Response.md)... Show 9 more, [Bundle/FindNewbornByMumsPHN-Request](Bundle-FindNewbornByMumsPHN-Request.md), [Bundle/FindNewbornByMumsPHN-Response](Bundle-FindNewbornByMumsPHN-Response.md), [Bundle/GetDemographics-Response](Bundle-GetDemographics-Response.md), [Bundle/GetDemographics-withHistory-Response](Bundle-GetDemographics-withHistory-Response.md), [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md), [Bundle/NEW-Distribution-Notification](Bundle-NEW-Distribution-Notification.md), [Bundle/NEWBORN-Distribution-Notification-Masked-MumPHN](Bundle-NEWBORN-Distribution-Notification-Masked-MumPHN.md), [Bundle/Revise-Response](Bundle-Revise-Response.md) and [Parameters/Merge-Response](Parameters-Merge-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-identifier-status-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-identifier-status-extension.csv), [Excel](StructureDefinition-bc-identifier-status-extension.xlsx), [Schematron](StructureDefinition-bc-identifier-status-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-identifier-status-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension",
  "version" : "1.0.0",
  "name" : "IdentifierStatusExtension",
  "title" : "BC Identifier Status",
  "status" : "active",
  "date" : "2026-02-17T21:23:45+00:00",
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
  "description" : "Identifier status.",
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
      "expression" : "Patient.identifier"
    },
    {
      "type" : "element",
      "expression" : "RelatedPerson.identifier"
    },
    {
      "type" : "element",
      "expression" : "Patient.link.other.identifier"
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
        "short" : "BC Identifier Status",
        "definition" : "Identifier status."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "merged | active",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-identifier-status-value-set"
        }
      }
    ]
  }
}

```
