# SearchResponseBundle - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchResponseBundle**

## Resource Profile: SearchResponseBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-search-response-bundle | *Version*:1.0.0 |
| Active as of 2026-01-22 | *Computable Name*:SearchResponseBundle |

 
A Bundle that is used in the Client Registry response to Find Candidates and Get Demographics queries. 

This Bundle profile applies to both Client Registry searches: Find Candidates and Get Demographics. The type is collection and two entries are mandatory: operationOutcome and parameters.

1. OperationOutcome is for warning or error messages.
1. The Parameters is for the response meta data such as dateTime and unique ID.

If the search matched one or more Patients, then there will be Bundle entries for Patients.

If the search criteria used mother's PHN then RelatedPerson resources may be returned, representing the mother.

**Usages:**

* Examples for this Profile: [Bundle/FindCandidates-Response](Bundle-FindCandidates-Response.md), [Bundle/FindNewbornByMumsPHN-Response](Bundle-FindNewbornByMumsPHN-Response.md), [Bundle/GetDemographics-Response-Masked](Bundle-GetDemographics-Response-Masked.md), [Bundle/GetDemographics-Response](Bundle-GetDemographics-Response.md)... Show 2 more, [Bundle/GetDemographics-withHistory-Response](Bundle-GetDemographics-withHistory-Response.md) and [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-search-response-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-search-response-bundle.csv), [Excel](StructureDefinition-bc-search-response-bundle.xlsx), [Schematron](StructureDefinition-bc-search-response-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-search-response-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-search-response-bundle",
  "version" : "1.0.0",
  "name" : "SearchResponseBundle",
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
  "description" : "A Bundle that is used in the Client Registry response to Find Candidates and Get Demographics queries.",
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
        "fixedCode" : "searchset",
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
          "description" : "The specific bundle entries that are needed when the Client Registry is responding to a search query.",
          "rules" : "open"
        },
        "min" : 2
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
        "short" : "Matching Patients.",
        "min" : 0,
        "max" : "*",
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
        "short" : "Metadata out parameters.",
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
              "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-metadata-parameters-out"
            ]
          }
        ]
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
        "type" : [
          {
            "code" : "OperationOutcome"
          }
        ]
      },
      {
        "id" : "Bundle.entry:relatedPerson",
        "path" : "Bundle.entry",
        "sliceName" : "relatedPerson",
        "short" : "Resource for Mother's PHN.",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:relatedPerson.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "RelatedPerson"
          }
        ]
      }
    ]
  }
}

```
