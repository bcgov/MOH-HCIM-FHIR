Profile: PartialPatientUpdate
//Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient
Parent: Patient
Id: bc-update-patient
Description: "Patient profile used to update a Patient."
* extension contains BusinessPeriodExtension named effectiveDates 0..1 MS and GenderIdentityExtension named genderIdentity 0..1 MS
* identifier 1..1 MS
* identifier.extension contains SourceIDExtension named sourceID 0..1 MS and IdentifierStatusExtension named idStatus 0..1 MS and UpdatePatientOperationExtension named updateOperation 0..1 MS
* deceased[x] 0..1 MS
* deceased[x] only dateTime
* deceased[x].extension contains BusinessPeriodExtension named deathDateEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and DeathDateHistoryExtension named deathDateHistory 0..* MS and DeathVerifiedFlagExtension named verifiedDeathFlag 0..1 MS  and UpdatePatientOperationExtension named updateOperation 0..1 MS
* address MS
* address.type ^short = "postal | physical"
* address.extension contains SourceIDExtension named sourceID 0..1 MS and UpdatePatientOperationExtension named updateOperation 0..1 MS
* link 0..* MS
* name 0..* MS
* name.use 0..1
* name.use from NameUseVS (required)
* name.use ^short = "usual | official | nickname"
* name.extension contains SourceIDExtension named sourceID 0..1 MS and UpdatePatientOperationExtension named updateOperation 0..1 MS
* telecom 0..* MS
* telecom.use from ContactPointUseVS (required)
* telecom.use ^short = "home | work | mobile"
* telecom.system from ContactPointSystemVS (required)
* telecom.system ^short = "phone | email"
* telecom.extension contains SourceIDExtension named sourceID 0..1 MS and UpdatePatientOperationExtension named updateOperation 0..1 MS
* gender 0..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and GenderHistoryExtension named history 0..* MS and UpdatePatientOperationExtension named updateOperation 0..1 MS
* birthDate 0..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1 and SourceIDExtension named sourceID 0..1 MS and BirthDateHistoryExtension named history 0..* MS  and UpdatePatientOperationExtension named updateOperation 0..1 MS
* multipleBirth[x].extension contains BusinessPeriodExtension named multipleBirthEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and MultipleBirthHistoryExtension named history 0..* MS  and UpdatePatientOperationExtension named updateOperation 0..1 MS

Extension: UpdatePatientOperationExtension
Id: bc-update-patient-operation-extension
Title: "A code the describes how a particular Patient attribute is to be changed"
Description: "A code the describes how a particular Patient attribute is to be changed."
* value[x] 0..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from UpdatePatientOperationVS (required)


