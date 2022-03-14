Profile: BCPatientByExample
Parent: Patient
Id: bc-patient-by-example
Description: "General constraints on the Patient resource for use in the BC Client Registry project for queries."
* identifier 0..1 MS
* address 0..1 MS
* address.type ^short = "postal | physical"
* gender 0..1 MS
* birthDate 0..1 MS
* deceasedDateTime 0..1 MS
* name 0..1 MS
* name.use 0..1
* name.use from BCNameUseVS (required)
* name.use ^short = "usual | official | nickname"
* telecom 0..1 MS

* active 0..0
//* id 0..0
* implicitRules 0..0
* language 0..0
//* text 0..0
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
