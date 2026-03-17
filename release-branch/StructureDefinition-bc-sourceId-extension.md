# BC SourceID and UserID - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC SourceID and UserID**

## Extension: BC SourceID and UserID 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:SourceIDExtension |

Identifiers for the source and user that modified the specific element that this extension is on.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BC Birth Date History](StructureDefinition-bc-birthdate-history-extension.md), [BC Death Date History](StructureDefinition-bc-death-date-history-extension.md), [BC Death Verified Flag](StructureDefinition-bc-death-verified-flag-extension.md), [BC Death Verified Flag History](StructureDefinition-bc-death-verified-flag-history-extension.md)... Show 3 more, [BC Gender History](StructureDefinition-bc-gender-history-extension.md), [BC Multiple Birth History](StructureDefinition-bc-multiplebirth-history-extension.md) and [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-sourceId-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-sourceId-extension.csv), [Excel](StructureDefinition-bc-sourceId-extension.xlsx), [Schematron](StructureDefinition-bc-sourceId-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-sourceId-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension",
  "version" : "1.0.0",
  "name" : "SourceIDExtension",
  "title" : "BC SourceID and UserID",
  "status" : "active",
  "date" : "2026-03-17T18:19:20+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Identifiers for the source and user that modified the specific element that this extension is on.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Extension"
  },
  {
    "type" : "element",
    "expression" : "Patient.identifier"
  },
  {
    "type" : "element",
    "expression" : "Patient.deceased"
  },
  {
    "type" : "element",
    "expression" : "Patient.address"
  },
  {
    "type" : "element",
    "expression" : "Patient.name"
  },
  {
    "type" : "element",
    "expression" : "Patient.telecom"
  },
  {
    "type" : "element",
    "expression" : "Patient.gender"
  },
  {
    "type" : "element",
    "expression" : "Patient.birthDate"
  },
  {
    "type" : "element",
    "expression" : "Patient.multipleBirth[x]"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC SourceID and UserID",
      "definition" : "Identifiers for the source and user that modified the specific element that this extension is on."
    },
    {
      "id" : "Extension.extension:sourceID",
      "path" : "Extension.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sourceID.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sourceID.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sourceID"
    },
    {
      "id" : "Extension.extension:sourceID.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:userID",
      "path" : "Extension.extension",
      "sliceName" : "userID",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:userID.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:userID.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "userID"
    },
    {
      "id" : "Extension.extension:userID.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
