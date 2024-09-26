Profile: ClientRegistryPatient
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient
//Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains BusinessPeriodExtension named patientEffectiveDates 0..1 MS and GenderIdentityExtension named genderIdentity 0..1 MS
* identifier only http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
* identifier 0..* MS
* identifier.extension contains SourceIDExtension named sourceID 0..1 MS and IdentifierStatusExtension named idStatus 0..1 MS
* deceased[x] 0..1 MS
* deceased[x] only dateTime
* deceased[x].extension contains BusinessPeriodExtension named deathDateEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and DeathDateHistoryExtension named deathDateHistory 0..* MS and DeathVerifiedFlagExtension named verifiedDeathFlag 0..1 MS
* address MS
* address.type ^short = "postal | physical"
* address.extension contains SourceIDExtension named sourceID 0..1 MS and ValidationStatusExtension named validationStatus 0..1 MS
* link 0..* MS
* name 0..* MS
* name.use 0..1
* name.use from NameUseVS (required)
* name.use ^short = "usual | official | nickname"
* name.extension contains SourceIDExtension named sourceID 0..1 MS
* telecom 0..* MS
* telecom.use from ContactPointUseVS (required)
* telecom.use ^short = "home | work | mobile"
* telecom.system from ContactPointSystemVS (required)
* telecom.system ^short = "phone | email"
* telecom.extension contains SourceIDExtension named sourceID 0..1 MS
* gender 0..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and GenderHistoryExtension named history 0..* MS
* birthDate 0..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1 and SourceIDExtension named sourceID 0..1 MS and BirthDateHistoryExtension named history 0..* MS 
* multipleBirth[x].extension contains BusinessPeriodExtension named multipleBirthEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and MultipleBirthHistoryExtension named history 0..* MS 
* link.extension contains MergeStatusExtension named mergeStatus 0..* MS


Extension: GenderIdentityExtension
Id: bc-gender-identity-extension
Title: "BC Gender Identity with business dates."
Description: "Gender Identity with business dates."
* ^context.type = #element
* ^context.expression = "Patient"
* extension contains BusinessPeriodExtension named genderIdentityEffectiveDates 0..1 MS and http://hl7.org/fhir/StructureDefinition/patient-genderIdentity named genderIdentity 0..1 MS

Extension: BusinessPeriodExtension
Id: bc-business-period-extension
Title: "BC Business Dates"
Description: "The effective dates for the parent element."
* ^context.type = #element
* ^context.expression = "Extension"
* ^context[+].type = #element
* ^context[=].expression = "Patient.gender"
* ^context[+].type = #element
* ^context[=].expression = "Patient.birthDate"
* ^context[+].type = #element
* ^context[=].expression = "Patient.multipleBirth"
* ^context[+].type = #element
* ^context[=].expression = "Patient.deceased"
* value[x] only Period

Extension: DeathVerifiedFlagExtension
Id: bc-death-verified-flag-extension
Title: "BC Death Verified Flag"
Description: "The Patients death is verified and as recorded in the Client Registry as a flag.  This also includes death verified flag history as required."
* ^context[+].type = #element
* ^context[=].expression = "Patient.deceased"
* extension contains deathVerifiedFlag 1..1 MS and BusinessPeriodExtension named businessDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and DeathVerifiedFlagHistoryExtension named deathVerifiedFlagHistory 0..* MS 
* extension[deathVerifiedFlag].value[x] 1..1 MS
* extension[deathVerifiedFlag].value[x] only boolean

Extension: MergeStatusExtension
Id: bc-merge-status-extension
Title: "BC Merge Status Code"
Description: "A code that represents the Merge status of the Patient."
* ^context[+].type = #element
* ^context[=].expression = "Patient.link"
* value[x] 1..1 MS
* value[x] only code
* valueCode from MergeStatusVS (required)

Extension: ValidationStatusExtension
Id: bc-validation-status-extension
Title: "BC Address Validation Status Code"
Description: "A code that represents the validation status of the address"
* ^context[+].type = #element
* ^context[=].expression = "Patient.address"
* value[x] 1..1 MS
* value[x] only code
* valueCode from AddressValidationVS (required)

Extension: GenderHistoryExtension
Id: bc-gender-history-extension
Title: "BC Gender History"
Description: "This extension allows the Client Registry to include historical gender codes in a single Patient resource."
* ^context[+].type = #element
* ^context[=].expression = "Patient.gender"
* extension contains gender 0..* MS and BusinessPeriodExtension named businessDates 1..1 MS and SourceIDExtension named sourceID 0..1 MS and http://hl7.org/fhir/StructureDefinition/patient-genderIdentity named genderIdentity 0..1 MS
* extension[gender].value[x] 1..1 MS
* extension[gender].value[x] only code
* extension[gender].valueCode from AdministrativeGender (required)

Extension: BirthDateHistoryExtension
Id: bc-birthdate-history-extension
Title: "BC Birth Date History"
Description: "This extension allows the Client Registry to include historical birth dates in a single Patient resource."
* ^context[+].type = #element
* ^context[=].expression = "Patient.birthDate"
* extension contains BusinessPeriodExtension named businessDates 1..1 MS and birthDate 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[birthDate].value[x] 1..1 MS
* extension[birthDate].value[x] only date

Extension: DeathDateHistoryExtension
Id: bc-death-date-history-extension
Title: "BC Death Date History"
Description: "This extension allows the Client Registry to include historical death dates and flags in a single Patient resource."
* ^context[+].type = #element
* ^context[=].expression = "Patient.deceased"
* extension contains deathDate 1..1 MS and BusinessPeriodExtension named businessDates 1..1 MS  and SourceIDExtension named sourceID 0..1 MS
* extension[deathDate].value[x] 1..1 MS
* extension[deathDate].value[x] only dateTime

Extension: DeathVerifiedFlagHistoryExtension
Id: bc-death-verified-flag-history-extension
Title: "BC Death Verified Flag History"
Description: "This extension allows the Client Registry to include historical death flags in a single Patient resource."
* ^context[+].type = #element
* ^context[=].expression = "Patient.deceased.extension"
* extension contains deathVerifiedFlag 1..1 MS and BusinessPeriodExtension named businessDates 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[deathVerifiedFlag].value[x] 1..1 MS
* extension[deathVerifiedFlag].value[x] only boolean

Extension: MultipleBirthHistoryExtension
Id: bc-multiplebirth-history-extension
Title: "BC Multiple Birth History"
Description: "This extension allows the Client Registry to include historical multiple birth values in a single Patient resource."
* ^context[+].type = #element
* ^context[=].expression = "Patient.multipleBirth"
* extension contains multipleBirth 1..1 MS and  BusinessPeriodExtension named businessDates 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[multipleBirth].value[x] 1..1 MS
* extension[multipleBirth].value[x] only boolean or integer

Extension: SourceIDExtension
Id: bc-sourceId-extension
Title: "BC SourceID and UserID"
Description: "Identifiers for the source and user that modified the specific element that this extension is on."
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* ^context[+].type = #element
* ^context[=].expression = "Patient.identifier"
* ^context[+].type = #element
* ^context[=].expression = "Patient.deceased"
* ^context[+].type = #element
* ^context[=].expression = "Patient.address"
* ^context[+].type = #element
* ^context[=].expression = "Patient.name"
* ^context[+].type = #element
* ^context[=].expression = "Patient.telecom"
* ^context[+].type = #element
* ^context[=].expression = "Patient.gender"
* ^context[+].type = #element
* ^context[=].expression = "Patient.birthDate"
* ^context[+].type = #element
* ^context[=].expression = "Patient.multipleBirth[x]"
* extension contains sourceID 0..1 MS and userID 0..1 MS
* extension[sourceID].value[x] 0..1 MS
* extension[sourceID].value[x] only string
* extension[userID].value[x] 0..1 MS
* extension[userID].value[x] only string

Extension: IdentifierStatusExtension
Id: bc-identifier-status-extension
Title: "BC Identifier Status"
Description: "Identifier status."
* ^context[+].type = #element
* ^context[=].expression = "Patient.identifier"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.identifier"
* ^context[+].type = #element
* ^context[=].expression = "Patient.link.other.identifier"
* value[x] 1..1 MS
* value[x] only code
* valueCode from IdentifierStatusVS (required)
* value[x] ^short = "merged | active"

