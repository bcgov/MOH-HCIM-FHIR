The response to a MergePatient Operation is a Bundle of type collection.  The Bundle includes 
* a Patient resource when the interaction was successful for the surviving Patient
* a OperationOutcome resource where errors and warnings are returned
* a Parameters resource (specifically [BCMetadataParameters](StructureDefinition-bc-metadata-parameters.html))

If this is an asynchronous merge then the BCMetadataParameters must contain the request MessageID in the requestMessageId field.

See [Merge Patient response](StructureDefinition-bc-merge-response-bundle.html)
