Instance: RelatedPerson-Mother-Example
InstanceOf: RelatedPerson
Description: "Example of related person's PHN as Identifier"

// mother identifier
* identifier = IdentifierExampleMothersPHN

// child identifier (the Patient resource in the Operation)
* patient.reference = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f4444"
* patient.display = "The mother."
// the relationship
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH

Instance: RelatedPerson-MotherOfBabyGirl-Example
InstanceOf: RelatedPerson
Description: "Example of related person who is the mother"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH
* patient.reference = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"
* patient.display = "The mother."
* identifier = IdentifierExampleMothersPHN

Instance: RelatedPerson-MotherOfBabyBoy-Example
InstanceOf: RelatedPerson
Description: "Example of related person who is the mother"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NMTH
* patient.reference = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"
* patient.display = "The mother."
* identifier = IdentifierExampleMothersPHN


