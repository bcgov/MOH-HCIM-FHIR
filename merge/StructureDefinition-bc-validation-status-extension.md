# BC Address Validation Status Code - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Address Validation Status Code**

## Extension: BC Address Validation Status Code 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension | *Version*:1.0.0 |
| Active as of 2026-03-19 | *Computable Name*:ValidationStatusExtension |

A code that represents the validation status of the address

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PatientMerge](StructureDefinition-bc-merge-patient.md) and [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/COMP-Distribution-Notification](Bundle-COMP-Distribution-Notification.md), [Bundle/FindCandidates-Response](Bundle-FindCandidates-Response.md), [Bundle/FindNewbornByMumsPHN-Response](Bundle-FindNewbornByMumsPHN-Response.md), [Bundle/GetDemographics-Response](Bundle-GetDemographics-Response.md)... Show 4 more, [Bundle/GetDemographics-withHistory-Response](Bundle-GetDemographics-withHistory-Response.md), [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md), [Bundle/NEW-Distribution-Notification](Bundle-NEW-Distribution-Notification.md) and [Bundle/NEWBORN-Distribution-Notification-Masked-MumPHN](Bundle-NEWBORN-Distribution-Notification-Masked-MumPHN.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-validation-status-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-validation-status-extension.csv), [Excel](StructureDefinition-bc-validation-status-extension.xlsx), [Schematron](StructureDefinition-bc-validation-status-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-validation-status-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension",
  "version" : "1.0.0",
  "name" : "ValidationStatusExtension",
  "title" : "BC Address Validation Status Code",
  "status" : "active",
  "date" : "2026-03-19T00:47:30+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "A code that represents the validation status of the address",
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
    "expression" : "Patient.address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Address Validation Status Code",
      "definition" : "A code that represents the validation status of the address"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-address-validation-value-set"
      }
    }]
  }
}

```
