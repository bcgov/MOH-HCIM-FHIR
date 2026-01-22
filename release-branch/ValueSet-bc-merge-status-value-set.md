# BC Merge Status Value Set - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Merge Status Value Set**

## ValueSet: BC Merge Status Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-merge-status-value-set | *Version*:1.0.0 |
| Active as of 2026-01-22 | *Computable Name*:MergeStatusVS |

 
BC Merge Status value set used to describe the merge status of a Patient. 

 **References** 

* [BC Merge Status Code](StructureDefinition-bc-merge-status-extension.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "bc-merge-status-value-set",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-merge-status-value-set",
  "version" : "1.0.0",
  "name" : "MergeStatusVS",
  "title" : "BC Merge Status Value Set",
  "status" : "active",
  "experimental" : false,
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
  "description" : "BC Merge Status value set used to describe the merge status of a Patient.",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-merge-status-code-system"
      }
    ]
  }
}

```
