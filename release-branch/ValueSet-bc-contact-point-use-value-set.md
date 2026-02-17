# BC Contact Point Use Value Set - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Contact Point Use Value Set**

## ValueSet: BC Contact Point Use Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-use-value-set | *Version*:1.0.0 |
| Active as of 2026-02-17 | *Computable Name*:ContactPointUseVS |

 
BC Contact Point Use value set, sliced to meet BC constraints. 

 **References** 

* [PatientMerge](StructureDefinition-bc-merge-patient.md)
* [ClientRegistryPatient](StructureDefinition-bc-patient.md)

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
  "id" : "bc-contact-point-use-value-set",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-use-value-set",
  "version" : "1.0.0",
  "name" : "ContactPointUseVS",
  "title" : "BC Contact Point Use Value Set",
  "status" : "active",
  "experimental" : false,
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
  "description" : "BC Contact Point Use value set, sliced to meet BC constraints.",
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
        "valueSet" : ["http://hl7.org/fhir/ValueSet/contact-point-use"]
      }
    ],
    "exclude" : [
      {
        "system" : "http://hl7.org/fhir/contact-point-use",
        "concept" : [
          {
            "code" : "old"
          },
          {
            "code" : "temp"
          }
        ]
      }
    ]
  }
}

```
