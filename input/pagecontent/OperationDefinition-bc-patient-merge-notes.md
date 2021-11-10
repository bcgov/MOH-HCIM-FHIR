The response to a MergePatient Operation is a Bundle of type collection.  The Bundle includes 
* a Patient resource when the interaction was succesful for the surviving Patient
* a OperationOutcome resource where errors and warnings are returned
* a Parameters resource (specifically [BCMetadataParameters](StructureDefinition-bc-metadata-parameters.html))

If this is an asynchronous merge then the BCMetadataParameters must contain the request MessageID in the MessageRequestID field.

See [Merge Patient response](StructureDefinition-bc-revise-and-merge-response-bundle.html)
