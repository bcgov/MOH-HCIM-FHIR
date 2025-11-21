# BC Business Dates - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Business Dates**

## Extension: BC Business Dates 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension | *Version*:1.0.0 |
| Active as of 2025-11-21 | *Computable Name*:BusinessPeriodExtension |

The effective dates for the parent element.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BC Birth Date History](StructureDefinition-bc-birthdate-history-extension.md), [BC Death Date History](StructureDefinition-bc-death-date-history-extension.md), [BC Death Verified Flag](StructureDefinition-bc-death-verified-flag-extension.md), [BC Death Verified Flag History](StructureDefinition-bc-death-verified-flag-history-extension.md)...Show 4 more,[BC Gender History](StructureDefinition-bc-gender-history-extension.md),[PatientMerge](StructureDefinition-bc-merge-patient.md),[BC Multiple Birth History](StructureDefinition-bc-multiplebirth-history-extension.md)and[ClientRegistryPatient](StructureDefinition-bc-patient.md)
* Examples for this Extension: [Bundle/COMP-Distribution-Notification](Bundle-COMP-Distribution-Notification.md), [Bundle/FindCandidates-Response](Bundle-FindCandidates-Response.md), [Bundle/FindNewbornByMumsPHN-Response](Bundle-FindNewbornByMumsPHN-Response.md), [Bundle/GetDemographics-Request-By-SSRI](Bundle-GetDemographics-Request-By-SSRI.md)...Show 13 more,[Bundle/GetDemographics-Response](Bundle-GetDemographics-Response.md),[Bundle/GetDemographics-withHistory-Response](Bundle-GetDemographics-withHistory-Response.md),[Bundle/GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md),[Bundle/NEW-Distribution-Notification](Bundle-NEW-Distribution-Notification.md),[Bundle/NEWBORN-Distribution-Notification-Masked-MumPHN](Bundle-NEWBORN-Distribution-Notification-Masked-MumPHN.md),[Bundle/Revise-Request-No-SRI](Bundle-Revise-Request-No-SRI.md),[Parameters/Merge-Min-Request](Parameters-Merge-Min-Request.md),[Parameters/Merge-Request](Parameters-Merge-Request.md),[Patient/Force-Create-Request](Patient-Force-Create-Request.md),[Patient/Newborn-Request](Patient-Newborn-Request.md),[Patient/Patient-GetDemographics-Example](Patient-Patient-GetDemographics-Example.md),[Patient/Revise-Request-No-SRI-RESTful](Patient-Revise-Request-No-SRI-RESTful.md)and[Patient/Revise-Request](Patient-Revise-Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.client|current/StructureDefinition/bc-business-period-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-business-period-extension.csv), [Excel](StructureDefinition-bc-business-period-extension.xlsx), [Schematron](StructureDefinition-bc-business-period-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-business-period-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
  "version" : "1.0.0",
  "name" : "BusinessPeriodExtension",
  "title" : "BC Business Dates",
  "status" : "active",
  "date" : "2025-11-21T23:55:27+00:00",
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
  "description" : "The effective dates for the parent element.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Extension"
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
      "expression" : "Patient.multipleBirth"
    },
    {
      "type" : "element",
      "expression" : "Patient.deceased"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BC Business Dates",
        "definition" : "The effective dates for the parent element."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      }
    ]
  }
}

```
