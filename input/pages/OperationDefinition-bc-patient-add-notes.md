##### Alternate Structure
To improve support for commercial off the shelf FHIR server products and to be conformant, the Client Registry offers an alternative Operation Resource structure.  Instead of the request body being a Bundle (as described on this page) the user can optionally send in the same Bundle, but wrapped in a Parameters Resource.  The Parameters Resource has a single parameter, name is operationBundle, and value is the Bundle Resource.

#### In Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersIn | See [profile](StructureDefinition-bc-metadata-parameters-in.html).
1..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
0..1 | RelatedPerson | For mom's PHN.
{:.grid}

#### Out Bundle Entries

Cardinality | Resource Type | Comment
:---|:---|:---
1..1 | MetadataParametersOut | See [profile](StructureDefinition-bc-metadata-parameters-out.html).
1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested.
0..1 | ClientRegistryPatient | See [profile](StructureDefinition-bc-patient.html).
{:.grid}

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [profile here](StructureDefinition-bc-metadata-parameters-in.html), Add Patient has no additional paramters.

#### Metadata Out Parameters

Besides the mandatory parameters, see [profile here](StructureDefinition-bc-metadata-parameters-out.html), Add Patient has no additional out parameters.

#### Mother's PHN

The mother's PHN may be required, if so the PHN is sent to the Client Registry via a RelatedPerson resource in the In Bundle for this request.

#### Examples

See [Add Patient request](Bundle-AddPatient-Request.html) example.  
See [Add Patient newborn request](Bundle-AddNewbornByMumsPHN-Request.html) example.  
See [Add Patient response](Bundle-AddPatient-Response.html) example.  
