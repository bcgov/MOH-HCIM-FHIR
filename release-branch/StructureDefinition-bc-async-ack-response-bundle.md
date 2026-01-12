# AsyncAckBundle - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AsyncAckBundle**

## Resource Profile: AsyncAckBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-async-ack-response-bundle | *Version*:1.0.0 |
| Draft as of 2026-01-12 | *Computable Name*:AsyncAckBundle |

 
A Bundle that is used for the ACK response to an aynchronous operation request. 

**Usages:**

* Examples for this Profile: [Bundle/Revise-Async-ACK](Bundle-Revise-Async-ACK.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-async-ack-response-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-async-ack-response-bundle.csv), [Excel](StructureDefinition-bc-async-ack-response-bundle.xlsx), [Schematron](StructureDefinition-bc-async-ack-response-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-async-ack-response-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-async-ack-response-bundle",
  "version" : "1.0.0",
  "name" : "AsyncAckBundle",
  "status" : "draft",
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
  "description" : "A Bundle that is used for the ACK response to an aynchronous operation request.",
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
          "description" : "The specific bundle entries that are needed when sending the Client Registry a Find Candidates query.",
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
        "id" : "Bundle.entry:operationOutcome",
        "path" : "Bundle.entry",
        "sliceName" : "operationOutcome",
        "short" : "Acknowledgement of asynchronous operation request.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:operationOutcome.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "OperationOutcome"
          }
        ]
      },
      {
        "id" : "Bundle.entry:parameters",
        "path" : "Bundle.entry",
        "sliceName" : "parameters",
        "short" : "Metadata async response parameters.",
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
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameter-async-response"
            ]
          }
        ]
      }
    ]
  }
}

```
