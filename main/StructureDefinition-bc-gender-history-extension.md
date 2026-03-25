# BC Gender History - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Gender History**

## Extension: BC Gender History 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:GenderHistoryExtension |

This extension allows the Client Registry to include historical gender codes in a single Patient resource.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md) and [Patient/Patient-GetDemographics-Example](Patient-Patient-GetDemographics-Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-gender-history-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-gender-history-extension.csv), [Excel](StructureDefinition-bc-gender-history-extension.xlsx), [Schematron](StructureDefinition-bc-gender-history-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-gender-history-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension",
  "version" : "1.0.0",
  "name" : "GenderHistoryExtension",
  "title" : "BC Gender History",
  "status" : "active",
  "date" : "2026-03-25T22:00:37+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This extension allows the Client Registry to include historical gender codes in a single Patient resource.",
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
    "expression" : "Patient.gender"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Gender History",
      "definition" : "This extension allows the Client Registry to include historical gender codes in a single Patient resource."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:gender",
      "path" : "Extension.extension",
      "sliceName" : "gender",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:gender.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:gender.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "gender"
    },
    {
      "id" : "Extension.extension:gender.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
      }
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
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
