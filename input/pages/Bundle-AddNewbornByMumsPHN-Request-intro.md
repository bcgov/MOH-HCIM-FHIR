This is an example of an AddPatient Operation, adding a newborn.

The _first_ resource in the Bundle is a Parameter resource (MetadataParametersIn) which has the message ID and the message data and time.

The _second_ resource is a Patient (ClientRegistryPatient) which represents the newborn.  The Identifier is of SRI type as a PHN hasn't been assigned yet.  The fullUrl of this Patient is a randomly generated UUID which is used to link the Patient to the RelatedPerson resource within the Bundle.

The _third_ resource is a RelatedPerson.  This resource represents the mother and the mother's PHN is in the Identifier.  The patient.reference is the fullUrl of the newborn Patient resource (see _second_ resource above) within this Bundle.  Lastly the relationship code is NMTH.
