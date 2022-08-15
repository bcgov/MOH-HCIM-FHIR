Instance: RelatedPerson-Mother-Example
InstanceOf: RelatedPerson
Description: "Example of related person's PHN as Identifier"
* identifier = IdentifierExampleMothersPHN
* patient.reference = "urn:uuid:9a686737-1d82-44e6-a179-cb8edd241321"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH

Instance: RelatedPerson-MotherOfBabyGirl-Example
InstanceOf: RelatedPerson
Description: "Example of related person who is the mother"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH
* patient.reference = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"
//* identifier = IdentifierExampleMothersPHN

Instance: RelatedPerson-MotherOfBabyBoy-Example
InstanceOf: RelatedPerson
Description: "Example of related person who is the mother"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH
* patient.reference = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"
* identifier = IdentifierExampleMothersPHN


