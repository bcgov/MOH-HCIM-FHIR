
The response may not include any Patients if none matched the criteria.  If there are patients returned, the Bundle.entry.search.score (i.e. entry for the Patient resource) will contain the Client Registry score.

If multiple Patients match they will all be returned.

If the search used mother's PHN then RelatedPerson resources are returned which include (a) the mother's identifier and (b) a reference to the related Patient in the response Bundle.  There may be multiple Patients returned, and therefore also multiple RelatedPersons, one per Patient (e.g. twins).  See an example [here](Bundle-Bundle-FindCandidates-Response-MomsPHN-Example.html).

#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
0..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
0..1 | RelatedPerson | This a standard FHIR resource, not profiled by the Client Registry.
{:.grid}

#### Out Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersOut | See [profile](StructureDefinition-bc-metadata-parameters-out.html).
1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested.
0..* | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
0..* | RelatedPerson | This a standard FHIR resource, not profiled by the Client Registry.
{:.grid}

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [here](StructureDefinition-bc-metadata-parameters-in.html), Find Candidates has one more, see below.

Name | Type | Cardinality | Notes
:---|:---
identifiersOnly | boolean | 0..1 | Instruct the Client Registry to return Patient Identifiers only when true. If not present, defaults to false. This is located in the Parameters entry of the Bundle.
{:.grid}

#### Metadata Out Parameters

Besides the mandatory parameters, the request search parameters are echoed back in the MetadataParametersOut resource with a parameter named requestParameters (which is a MetadataParametersIn resource).

Name | Type | Cardinality | Notes
:---|:---
requestParameters | MetadataParametersIn | 1..1 | The request parameters are echoed back..
{:.grid}

#### Mother's PHN

If the request is to return a Patient based on the mother's PHN, then the request Bundle must have a RelatedPerson resource with the mother's PHN as an Identifier.  No Patient is required in this case.  There is an example request [here](Bundle-Bundle-FindCandidates-UsingMomsPHN-Request-Example.html).

#### Name.use

Searching with the FindCandidates operation will match names of all use codes that the Client Registry supports no matter the name.use value provided in the request.  Name.use may be left blank.

#### Examples

See [Find Candidates request](Bundle-FindCandidates-Request.html) example.  
See [Find Candidates mother's PHN request](Bundle-FindNewbornByMumsPHN-request.html) example.  
See [Find Candidates response](Bundle-FindCandidates-response.html) example.  
See [Find Candidates mother's PHN response](Bundle-FindNewbornByMumsPHN-response.html) example.  

