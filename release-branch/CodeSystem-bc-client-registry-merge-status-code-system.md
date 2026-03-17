# BC Client Registry merge status. - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Client Registry merge status.**

## CodeSystem: BC Client Registry merge status. 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-merge-status-code-system | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:MergeStatusCS |

 
Codes used to describe the merge status. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MergeStatusVS](ValueSet-bc-merge-status-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-client-registry-merge-status-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-merge-status-code-system",
  "version" : "1.0.0",
  "name" : "MergeStatusCS",
  "title" : "BC Client Registry merge status.",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-17T18:19:20+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Codes used to describe the merge status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "obsolete",
    "display" : "obsolete",
    "definition" : "The merge obsoletes this Patient."
  },
  {
    "code" : "cancelled",
    "display" : "cancelled",
    "definition" : "The merge cancels this Patient."
  }]
}

```
