# Find Candidates By Example - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Find Candidates By Example**

## OperationDefinition: Find Candidates By Example 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-find-candidates | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:FindCandidatesByExample |

 
This operation is used to query for a patient. The response can contain 0 or more Patients. 

The Find Candidates query is a FHIR Operation.

The request is a Bundle with Resources for message meta data, a Patient to match against and possibly a RelatedPerson representing the Mother with a PHN Identifier. The response is a Bundle with Resources for Patient's that matched, response meta data, operation outcome resources and if using mother's PHN RelatedPerson resources.

This is a 'search by example' and the Patient resource may be populated with various values and combinations of values. Those values are matched against the Client Registry.

Please refer also to the [Identifiers](identifiers.md) page to find more details regarding how to use Identifier in your query.

For optimal searching and to be conformant with Health Information Exchange standards please review the Client Registry conformance standards found [here](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software/conformance-standards). Those documents specify combinations of values that are best suited to find your Patients.

### Notes:

The response may not include any Patients if none matched the criteria. If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the Client Registry score.

If multiple Patients match they will all be returned.

If the search used mother's PHN then RelatedPerson resources are returned which include (a) the mother's identifier and (b) a reference to the related Patient in the response Bundle. There may be multiple Patients returned, and therefore also multiple RelatedPersons, one per Patient (e.g. twins). See an example [here](Bundle-FindNewbornByMumsPHN-Response.md).

#### In Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersIn | See[profile](StructureDefinition-bc-metadata-parameters-in.md). |
| 0..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |
| 0..1 | RelatedPerson | This a standard FHIR resource, not profiled by the Client Registry. |

#### Out Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersOut | See[profile](StructureDefinition-bc-metadata-parameters-out.md). |
| 1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested. |
| 0..* | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |
| 0..* | RelatedPerson | This a standard FHIR resource, not profiled by the Client Registry. |

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [here](StructureDefinition-bc-metadata-parameters-in.md), Find Candidates has one more, see below.

| | | | |
| :--- | :--- | :--- | :--- |
| identifiersOnly | boolean | 0..1 | Instruct the Client Registry to return Patient Identifiers only when true. If not present, defaults to false. This is located in the Parameters entry of the Bundle. |

#### Metadata Out Parameters

Besides the mandatory parameters, the request search parameters are echoed back in the MetadataParametersOut resource with a parameter named requestParameters (which is a MetadataParametersIn resource).

| | | | |
| :--- | :--- | :--- | :--- |
| requestParameters | MetadataParametersIn | 1..1 | The request parameters are echoed back.. |

#### Mother's PHN

If the request is to return a Patient based on the mother's PHN, then the request Bundle must have a RelatedPerson resource with the mother's PHN as an Identifier. No Patient is required in this case. There is an example request [here](Bundle-FindNewbornByMumsPHN-Request.md).

#### Name.use

Searching with the FindCandidates operation will match names of all use codes that the Client Registry supports no matter the name.use value provided in the request. Name.use may be left blank.

#### Examples

See [Find Candidates request](Bundle-FindCandidates-Request.md) example.
 See [Find Candidates mother's PHN request](Bundle-FindNewbornByMumsPHN-Request.md) example.
 See [Find Candidates response](Bundle-FindCandidates-Response.md) example.
 See [Find Candidates mother's PHN response](Bundle-FindNewbornByMumsPHN-Response.md) example.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-patient-find-candidates",
  "url" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-find-candidates",
  "version" : "1.0.0",
  "name" : "FindCandidatesByExample",
  "title" : "Find Candidates By Example",
  "status" : "active",
  "kind" : "query",
  "date" : "2026-03-25T21:29:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This operation is used to query for a patient.  The response can contain 0 or more Patients.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "FindCandidates",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-find-candidates-request-bundle",
  "outputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-search-response-bundle",
  "parameter" : [{
    "name" : "FindCandidatesRequestBundle",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "The FindCandidates operation request Bundle.",
    "type" : "Bundle"
  },
  {
    "name" : "SearchResponseBundle",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The FindCandidates operation response Bundle.",
    "type" : "Bundle"
  }]
}

```
