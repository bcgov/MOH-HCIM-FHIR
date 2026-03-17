# BC Death Verified Flag - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Death Verified Flag**

## Extension: BC Death Verified Flag 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:DeathVerifiedFlagExtension |

The Patients death is verified and as recorded in the Client Registry as a flag. This also includes death verified flag history as required.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PatientMerge](StructureDefinition-bc-merge-patient.md) and [ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/AddPatient-Request](Bundle-AddPatient-Request.md), [Bundle/FindCandidates-Response](Bundle-FindCandidates-Response.md), [Bundle/GetDemographics-Response](Bundle-GetDemographics-Response.md), [Bundle/GetDemographics-withHistory-Response](Bundle-GetDemographics-withHistory-Response.md)... Show 2 more, [Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md) and [Bundle/Revise-withMaxData-Request](Bundle-Revise-withMaxData-Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-death-verified-flag-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-death-verified-flag-extension.csv), [Excel](StructureDefinition-bc-death-verified-flag-extension.xlsx), [Schematron](StructureDefinition-bc-death-verified-flag-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-death-verified-flag-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension",
  "version" : "1.0.0",
  "name" : "DeathVerifiedFlagExtension",
  "title" : "BC Death Verified Flag",
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
  "description" : "The Patients death is verified and as recorded in the Client Registry as a flag.  This also includes death verified flag history as required.",
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
    "expression" : "Patient.deceased"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Death Verified Flag",
      "definition" : "The Patients death is verified and as recorded in the Client Registry as a flag.  This also includes death verified flag history as required."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:deathVerifiedFlag",
      "path" : "Extension.extension",
      "sliceName" : "deathVerifiedFlag",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:deathVerifiedFlag.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:deathVerifiedFlag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "deathVerifiedFlag"
    },
    {
      "id" : "Extension.extension:deathVerifiedFlag.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:businessDates",
      "path" : "Extension.extension",
      "sliceName" : "businessDates",
      "min" : 0,
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
      "id" : "Extension.extension:deathVerifiedFlagHistory",
      "path" : "Extension.extension",
      "sliceName" : "deathVerifiedFlagHistory",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-history-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
