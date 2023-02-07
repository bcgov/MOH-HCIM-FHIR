#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
1..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
{:.grid}

#### Out Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersOut | See [profile](StructureDefinition-bc-metadata-parameters-out.html).
1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested.
0..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
{:.grid}

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [parameters in](StructureDefinition-bc-metadata-parameters-in.html), Revise Patient has no additional paramters.

#### Metadata Out Parameters

Besides the mandatory parameters, Revise Patient has no additional out parameters.  See [parameters out](StructureDefinition-bc-metadata-parameters-out.html)

#### Examples

See [Revise Patient request](Bundle-Revise-WithMaxData-Request.html) example.  
See [Revise Patient response](Bundle-Revise-Response.html) example.  

