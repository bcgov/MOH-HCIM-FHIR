The response to a RevisePatient Operation is a Bundle of type collection.  The Bundle includes 
* a Patient resource when the interaction was 0
* a OperationOutcome resource where errors and warnings are returned
* a Parameters resource (specifically [BCMetadataParameters](StructureDefinition-bc-metadata-parameters.html))

If this is an asynchronous revise then the BCMetadataParameters must contain the request MessageID in the MessageRequestID field.

See [Revise Patient response](StructureDefinition-bc-revise-and-merge-response-bundle.html)
