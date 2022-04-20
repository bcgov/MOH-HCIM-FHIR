Instance: RelatedPerson-Mother-Example
InstanceOf: RelatedPerson
Description: "Example of related person's PHN as Identifier"

// mother identifier
* identifier.value = "9736546293"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"

// child identifier (the Patient resource in the Operation)
* patient.identifier.value = "IHA2234"
* patient.identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"

// the relationship
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH

Instance: RelatedPerson-MotherOfBabyGirl-Example
InstanceOf: RelatedPerson
Description: "Example of related person who is the mother"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* patient.reference = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

Instance: RelatedPerson-MotherOfBabyBoy-Example
InstanceOf: RelatedPerson
Description: "Example of related person who is the mother"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* patient.reference = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"


