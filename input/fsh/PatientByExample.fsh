Profile: PatientByExample
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient
//Parent: Patient
Id: bc-patient-by-example
Description: "Will get removed. General constraints on the Patient resource for use in the BC Client Registry project for queries. PatientByExample is a resource of the Client Registry FHIR implementation use only by Get Demographics and Find Candidates"
* identifier only http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
* identifier 0..1 MS
* address 0..1 MS
* address.type ^short = "postal | physical"
* gender 0..1 MS
* birthDate 0..1 MS
* deceasedDateTime 0..1 MS
* name 0..1 MS
* name.use from NameUseVS (required)
* name.use ^short = "usual | official | nickname"
* telecom 0..2 MS
* active 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* active 0..0
* maritalStatus 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0
* multipleBirth[x] 0..0
