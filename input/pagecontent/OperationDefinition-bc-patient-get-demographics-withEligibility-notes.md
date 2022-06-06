The response may not include any Patients if none matched the criteria.  If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the Client Registry score.  The Coverge resource will contain information ont he Patient's insurance eligibility.

#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
0..1 | PatientByExample | See [profile](StructureDefinition-bc-patient-by-example.html).
{:.grid}

#### Out Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersOut | See [profile](StructureDefinition-bc-metadata-parameters-out.html).
1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested.
0..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html)
0..1 | Coverage | The insurnace covergage.
{:.grid}

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [here](StructureDefinition-bc-metadata-parameters-in.html), Get Demographics has two more, see below.

Name | Type | Cardinality | Notes
:---|:---
identifiersOnly | boolean | 0..1 | Instruct the Client Registry to return Patient Identifiers only when true. If not present, defaults to false.
withHistory | boolean | 0..1 | Boolean flag to return Patient's history. If missing, defaults to false.
{:.grid}

#### Metadata Out Parameters

Besides the mandatory parameters, the request search parameters are echoed back in the MetadataParametersOut resource with a parameter named requestParameters (which is a MetadataParametersIn resource).

Name | Type | Cardinality | Notes
:---|:---
requestParameters | MetadataParametersIn | 1..1 | The request parameters are echoed back..
{:.grid}

#### Examples

See [Get Demographics with Eligibility request](Bundle-Bundle-GetDemographics-Request-Example.html) example.  This is the example for the Get Demograhics request as the only difference is the URL.  
See [Get Demographics with Eligibility response](Bundle-Bundle-GetDemographicsWithEligibility-Response-Example.html) example.  
