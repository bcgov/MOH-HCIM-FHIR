# BC Client registry identifier status code system - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Client registry identifier status code system**

## CodeSystem: BC Client registry identifier status code system 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-identifier-status-code-system | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:IdentifierStatusCS |

 
BC Client registry identifier status code system. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IdentifierStatusVS](ValueSet-bc-identifier-status-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-identifier-status-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-identifier-status-code-system",
  "version" : "1.0.0",
  "name" : "IdentifierStatusCS",
  "title" : "BC Client registry identifier status code system",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-25T21:32:51+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "BC Client registry identifier status code system.",
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
    "code" : "merged",
    "display" : "merged",
    "definition" : "The identifier has been merged."
  },
  {
    "code" : "active",
    "display" : "active",
    "definition" : "The identifier is active."
  }]
}

```
