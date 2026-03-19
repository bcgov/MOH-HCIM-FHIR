# Patient-GetDemographics-Example - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient-GetDemographics-Example**

## Example Patient: Patient-GetDemographics-Example

Profile: [ClientRegistryPatient](StructureDefinition-bc-patient.md)

Jane Doe Female, DoB: 1972-10-16 ( Jurisdictional health number (use: official, period: 2000-01-01 11:11:11+0800 --> (ongoing)))

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: 2505554848(Home)
* 721 FRONT ST VICTORIA BC V9A3Y3 CA 
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-GetDemographics-Example",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-patient"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "JHN"
      }]
    },
    "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id",
    "_value" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }]
    },
    "period" : {
      "start" : "2000-01-01T11:11:11+08:00"
    }
  }],
  "name" : [{
    "use" : "usual",
    "family" : "Doe",
    "given" : ["Jane"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "2505554848",
    "use" : "home",
    "period" : {
      "start" : "2000-01-02T10:10:10-08:00"
    }
  }],
  "gender" : "female",
  "_gender" : {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
      "valuePeriod" : {
        "start" : "2017-04-05T16:16:16-08:00"
      }
    },
    {
      "extension" : [{
        "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
        "valuePeriod" : {
          "start" : "2016-04-05",
          "end" : "2017-04-05"
        }
      },
      {
        "url" : "gender",
        "valueCode" : "other"
      }],
      "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"
    },
    {
      "extension" : [{
        "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
        "valuePeriod" : {
          "start" : "2015-04-05",
          "end" : "2016-04-05"
        }
      },
      {
        "url" : "gender",
        "valueCode" : "unknown"
      }],
      "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"
    }]
  },
  "birthDate" : "1972-10-16",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension",
      "valuePeriod" : {
        "start" : "2018-03-17T03:29:17-08:00"
      }
    }]
  },
  "address" : [{
    "type" : "physical",
    "line" : ["721 FRONT ST"],
    "city" : "VICTORIA",
    "state" : "BC",
    "postalCode" : "V9A3Y3",
    "country" : "CA"
  }]
}

```
