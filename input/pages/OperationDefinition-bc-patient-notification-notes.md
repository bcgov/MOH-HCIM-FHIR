The response to a Patient Notification Operation is a HTTP status code 200 on success without a body..

#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
1..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
{:.grid}

#### Out Bundle Entries

N/A

#### Metadata In Parameters

Besides the two mandatory name-value pairs, none.

#### Metadata Out Parameters

N/A

#### Examples

The following example is actually the revise patient example as it is identical to the notification request.
See [Patient Notification request](Bundle-Revise-withMaxData-Request.html) example. 

