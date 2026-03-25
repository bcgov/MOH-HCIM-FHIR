# BC Client Registry Address Validation Status Code - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Client Registry Address Validation Status Code**

## CodeSystem: BC Client Registry Address Validation Status Code 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-address-validation-code-system | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:AddressValidationCS |

 
Codes used to define the address validation status. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AddressValidationVS](ValueSet-bc-address-validation-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-client-registry-address-validation-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-address-validation-code-system",
  "version" : "1.0.0",
  "name" : "AddressValidationCS",
  "title" : "BC Client Registry Address Validation Status Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-25T22:00:37+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Codes used to define the address validation status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "valid",
    "display" : "valid",
    "definition" : "The address is valid, i.e. there is a reasonable good chance this address is known to Canada Post."
  },
  {
    "code" : "invalid",
    "display" : "invalid",
    "definition" : "The address validation status is invalid and like not recognized by Canada Post."
  },
  {
    "code" : "unknown",
    "display" : "unknown",
    "definition" : "The address validation status is unknown."
  }]
}

```
