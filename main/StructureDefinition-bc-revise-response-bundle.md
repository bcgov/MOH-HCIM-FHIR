# ReviseResponseBundle - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReviseResponseBundle**

## Resource Profile: ReviseResponseBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-response-bundle | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:ReviseResponseBundle |

 
A Bundle that is used in the Client Registry response to Revise Patient requests. 

The RevisePatient FHIR Operation use the ReviseResponseBundle profile. The Bundle entries are all mandatory: a Patient, a Parameters, namely the MetadataParameters and OperationOutcome. Response meta data such as response creation time or response unique ID, etc, will be in the MetadataParameters resource. Any errors and warnings should be placed in the OperationOutcome.

**Usages:**

* Examples for this Profile: [Bundle/Revise-Response](Bundle-Revise-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-revise-response-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-revise-response-bundle.csv), [Excel](StructureDefinition-bc-revise-response-bundle.xlsx), [Schematron](StructureDefinition-bc-revise-response-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-revise-response-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-revise-response-bundle",
  "version" : "1.0.0",
  "name" : "ReviseResponseBundle",
  "status" : "active",
  "date" : "2026-03-25T22:00:37+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "A Bundle that is used in the Client Registry response to Revise Patient requests.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "description" : "The specific bundle entries that are needed when the Client Registry is responding to a revise request.",
        "rules" : "open"
      },
      "min" : 2,
      "max" : "3"
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
      "short" : "Revised Patient.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:parameters",
      "path" : "Bundle.entry",
      "sliceName" : "parameters",
      "short" : "Metadata out parameters",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:parameters.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Parameters",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-out"]
      }]
    },
    {
      "id" : "Bundle.entry:operationOutcome",
      "path" : "Bundle.entry",
      "sliceName" : "operationOutcome",
      "short" : "Messages and codes returned by HCIM.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:operationOutcome.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "OperationOutcome"
      }]
    }]
  }
}

```
