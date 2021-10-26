The response to a RevisePatient Operation is a Bundle of type collection.  The Bundle includes 
* a Patient resource when the interaction was succesful
* a OperationOutcome resource where errors and warnings are returned
* a Parameters resource (specifically [BCMetadataParameters](StructureDefinition-BCMetadataParameters.html))

If this is an asynchronous revise then the BCMetadataParameters must contain the request MessageID in the MessageRequestID field.
