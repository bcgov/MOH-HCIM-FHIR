Profile: PatientMerge
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient
//Parent: Patient
Id: bc-merge-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project Merge Operation."
* extension contains BusinessPeriodExtension named effectiveDates 0..1 MS and GenderIdentityExtension named genderIdentity 0..1 MS
* identifier only http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
* identifier 0..* MS
* identifier.extension contains /*SourceIDExtension named sourceID 0..1 MS and */ IdentifierStatusExtension named idStatus 0..1 MS
* deceased[x] 0..1 MS
* deceased[x] only dateTime
* deceased[x].extension contains BusinessPeriodExtension named deathDateEffectiveDates 0..1 MS /*and SourceIDExtension named sourceID 0..1 MS and DeathDateHistoryExtension named deathDateHistory 0..* MS */ and DeathVerifiedFlagExtension named verifiedDeathFlag 0..1 MS
* address MS
* address.type ^short = "postal | physical"
* address.extension contains ValidationStatusExtension named validationStatus 0..1 MS /*and SourceIDExtension named sourceID 0..1 MS */
* link 0..* MS
* name 0..* MS
* name.use 0..1
* name.use from NameUseVS (required)
* name.use ^short = "usual | official | nickname"
//* name.extension contains SourceIDExtension named sourceID 0..1 MS
* address 0..*
* address.type 1..1
* telecom 0..* MS
* telecom.use 1..1
* telecom.system 1..1
* telecom.use from ContactPointUseVS (required)
* telecom.use ^short = "home | work | mobile"
* telecom.system from ContactPointSystemVS (required)
* telecom.system ^short = "phone | email"
//* telecom.extension contains SourceIDExtension named sourceID 0..1 MS
* gender 0..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1 MS /*and SourceIDExtension named sourceID 0..1 MS and GenderHistoryExtension named history 0..* MS */
* birthDate 0..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1 /*and SourceIDExtension named sourceID 0..1 MS and BirthDateHistoryExtension named history 0..* MS */
* multipleBirth[x].extension contains BusinessPeriodExtension named multipleBirthEffectiveDates 0..1 MS /*and SourceIDExtension named sourceID 0..1 MS and MultipleBirthHistoryExtension named history 0..* MS */
* link.extension contains MergeStatusExtension named mergeStatus 0..* MS

