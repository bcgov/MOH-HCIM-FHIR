# BC Birth Date History - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Birth Date History**

## Extension: BC Birth Date History 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-birthdate-history-extension | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:BirthDateHistoryExtension |

This extension allows the Client Registry to include historical birth dates in a single Patient resource.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-birthdate-history-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-birthdate-history-extension.csv), [Excel](StructureDefinition-bc-birthdate-history-extension.xlsx), [Schematron](StructureDefinition-bc-birthdate-history-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-birthdate-history-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-birthdate-history-extension",
  "version" : "1.0.0",
  "name" : "BirthDateHistoryExtension",
  "title" : "BC Birth Date History",
  "status" : "active",
  "date" : "2026-03-25T21:29:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This extension allows the Client Registry to include historical birth dates in a single Patient resource.",
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
    "expression" : "Patient.birthDate"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Birth Date History",
      "definition" : "This extension allows the Client Registry to include historical birth dates in a single Patient resource."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:businessDates",
      "path" : "Extension.extension",
      "sliceName" : "businessDates",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:birthDate",
      "path" : "Extension.extension",
      "sliceName" : "birthDate",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:birthDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:birthDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "birthDate"
    },
    {
      "id" : "Extension.extension:birthDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sourceID",
      "path" : "Extension.extension",
      "sliceName" : "sourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-birthdate-history-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
