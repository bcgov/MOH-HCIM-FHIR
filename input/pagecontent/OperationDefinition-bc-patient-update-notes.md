#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
1..1 | UpdatePatient | See [profile](StructureDefinition-bc-update-patient.html).
{:.grid}

#### Out Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersOut | See [profile](StructureDefinition-bc-metadata-parameters-out.html).
1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested.
0..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
{:.grid}

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [here](StructureDefinition-bc-metadata-parameters-in.html) there are no additiontal In parameters required.

#### Metadata Out Parameters

Besides the mandatory parameters, there additional Out parameters required.

#### Examples

See [Update Patient request](Bundle-Bundle-UpdatePatient-Request-Example.html) example.
See [Update Patient response](Bundle-Bundle-UpdatePatient-Response-Example.html)
example.  THe update response is identifical to the example Revise Patient response.
