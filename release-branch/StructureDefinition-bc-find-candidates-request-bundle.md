# FindCandidatesRequestBundle - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindCandidatesRequestBundle**

## Resource Profile: FindCandidatesRequestBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-find-candidates-request-bundle | *Version*:1.0.0 |
| Active as of 2026-01-22 | *Computable Name*:FindCandidatesRequestBundle |

 
A Bundle that is used in the Find Candidates Operation request. 

**Usages:**

* Examples for this Profile: [Bundle/FindCandidates-Request](Bundle-FindCandidates-Request.md) and [Bundle/FindNewbornByMumsPHN-Request](Bundle-FindNewbornByMumsPHN-Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-find-candidates-request-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-find-candidates-request-bundle.csv), [Excel](StructureDefinition-bc-find-candidates-request-bundle.xlsx), [Schematron](StructureDefinition-bc-find-candidates-request-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-find-candidates-request-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-find-candidates-request-bundle",
  "version" : "1.0.0",
  "name" : "FindCandidatesRequestBundle",
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
  "description" : "A Bundle that is used in the Find Candidates Operation request.",
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
        "path" : "Bundle",
        "constraint" : [
          {
            "key" : "invariant-fc-1",
            "severity" : "error",
            "human" : "One and only one of RelatePerson or Patient can be present in this Bundle.",
            "expression" : "entry.resource.ofType(Patient).count()=1 xor entry.resource.ofType(RelatedPerson).count()=1",
            "source" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-find-candidates-request-bundle"
          }
        ]
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
        "short" : "An example Patient that the Client Registry will use to find matching Patients.",
        "min" : 0,
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
        "short" : "Metadata in parameters.",
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
      },
      {
        "id" : "Bundle.entry:relatedPerson",
        "path" : "Bundle.entry",
        "sliceName" : "relatedPerson",
        "short" : "Resource for Mother's PHN.",
        "min" : 0,
        "max" : "1",
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
