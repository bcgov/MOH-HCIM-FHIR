# BC Contact Point System Value Set - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Contact Point System Value Set**

## ValueSet: BC Contact Point System Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-system-value-set | *Version*:1.0.0 |
| Active as of 2026-03-19 | *Computable Name*:ContactPointSystemVS |

 
BC Contact Point System value set, sliced to meet BC constraints. 

 **References** 

* [PatientMerge](StructureDefinition-bc-merge-patient.md)
* [PatientMerge](StructureDefinition-bc-merge-patient.md)
* [ClientRegistryPatient](StructureDefinition-bc-patient.md)
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
  "id" : "bc-contact-point-system-value-set",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-system-value-set",
  "version" : "1.0.0",
  "name" : "ContactPointSystemVS",
  "title" : "BC Contact Point System Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-19T00:47:30+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "BC Contact Point System value set, sliced to meet BC constraints.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/contact-point-system"]
    }],
    "exclude" : [{
      "system" : "http://hl7.org/fhir/contact-point-system",
      "concept" : [{
        "code" : "fax"
      },
      {
        "code" : "pager"
      },
      {
        "code" : "url"
      },
      {
        "code" : "sms"
      },
      {
        "code" : "other"
      }]
    }]
  }
}

```
