# ReviseRequestBundle - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReviseRequestBundle**

## Resource Profile: ReviseRequestBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-request-bundle | *Version*:1.0.0 |
| Active as of 2026-02-17 | *Computable Name*:ReviseRequestBundle |

 
A Bundle that is used in the Client Registry for Revise Patient requests. This is also used by Patient Notitifications. 

**Usages:**

* Examples for this Profile: [Bundle/Revise-Request-No-SRI](Bundle-Revise-Request-No-SRI.md) and [Bundle/Revise-withMaxData-Request](Bundle-Revise-withMaxData-Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-revise-request-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-revise-request-bundle.csv), [Excel](StructureDefinition-bc-revise-request-bundle.xlsx), [Schematron](StructureDefinition-bc-revise-request-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-revise-request-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-request-bundle",
  "version" : "1.0.0",
  "name" : "ReviseRequestBundle",
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
  "description" : "A Bundle that is used in the Client Registry for Revise Patient requests.  This is also used by Patient Notitifications.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "collection",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "description" : "The specific bundle entries that are needed when the Client Registry is responding to a add request.",
          "rules" : "open"
        },
        "min" : 2,
        "max" : "2"
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:patient",
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "short" : "Patient resource with revised information.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:patient.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:parameters",
        "path" : "Bundle.entry",
        "sliceName" : "parameters",
        "short" : "Metadata in parameters",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:parameters.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Parameters",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-in"
            ]
          }
        ]
      }
    ]
  }
}

```
