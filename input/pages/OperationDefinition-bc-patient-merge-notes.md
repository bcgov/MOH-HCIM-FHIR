

#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
0..1 | MergePatient | See [profile](StructureDefinition-bc-merge-patient.html).
{:.grid}

#### Out Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersOut | See [profile](StructureDefinition-bc-metadata-parameters-out.html).
1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested.
{:.grid}

#### Metadata In Parameters

Besides the two mandatory name-value pairs, none.

#### Metadata Out Parameters

Besides the mandatory parameters, none.

#### Examples
 
See [Merge Patient only request](Bundle-Merge-Only-Request.html) example.  
See [Merge Patient with Payload request](Bundle-Merge-WithPayload-Request.html) example.  
See [Merge Patient SSRI request](Bundle-Merge-SSRI-Request.html) example.  
See [Merge Patient response](Bundle-Merge-Response.html) example.  
See [Merge Patient request](Bundle-Bundle-MergePatient-Request-Example.html) example.  
See [Merge Patient response](Bundle-Bundle-MergePatient-Response-Example.html) example. 
