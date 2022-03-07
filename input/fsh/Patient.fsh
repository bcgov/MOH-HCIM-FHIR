Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains BusinessPeriodExtension named effectiveDates 0..1 MS
* identifier 0..* MS
* identifier.extension contains SourceIDExtension named sourceID 0..1 MS and IdentifierStatusExtension named idStatus 0..1 MS
* deceased[x] 0..1 MS
* deceased[x] only dateTime
* deceased[x].extension contains BusinessPeriodExtension named deathDateEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and DeathDateHistoryExtension named deathDateHistory 0..* MS and DeathVerifiedFlagExtension named verifiedDeathFlag 0..1 MS
* address MS
* address.type ^short = "postal | physical"
* address.extension contains SourceIDExtension named sourceID 0..1 MS
* link 0..* MS
* name 1..* MS
* name.use 1..1
* name.use from BCNameUseVS (required)
* name.use ^short = "usual | official | nickname"
* name.extension contains SourceIDExtension named sourceID 0..1 MS
* telecom 0..* MS
* telecom.use from BCContactPointUseVS (required)
* telecom.use ^short = "home | work | mobile"
* telecom.system from BCContactPointSystemVS (required)
* telecom.system ^short = "phone | email"
* telecom.extension contains SourceIDExtension named sourceID 0..1 MS
* gender 1..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and GenderHistoryExtension named history 0..* MS
* birthDate 1..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1 and SourceIDExtension named sourceID 0..1 MS and BirthDateHistoryExtension named history 0..* MS 
* multipleBirth[x].extension contains BusinessPeriodExtension named multipleBirthEffectiveDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and MultipleBirthHistoryExtension named history 0..* MS 

Extension: BusinessPeriodExtension
Id: bc-business-period-extension
Title: "BC Business Dates"
Description: "The effective dates for the parent element."
* value[x] only Period

Extension: DeathVerifiedFlagExtension
Id: bc-death-verified-flag-extension
Title: "BC Death Verified Flag"
Description: "The Patients death is verified and as recorded in the Client Registry as a flag.  This also includes death verified flag history as required."
* extension contains deathVerifiedFlag 1..1 MS and BusinessPeriodExtension named businessDates 0..1 MS and SourceIDExtension named sourceID 0..1 MS and DeathVerifiedFlagHistoryExtension named deathVerifiedFlagHistory 0..* MS 
* extension[deathVerifiedFlag].value[x] 1..1 MS
* extension[deathVerifiedFlag].value[x] only boolean

Extension: MergeStatusExtension
Id: bc-merge-status-extension
Title: "BC Merge Status Code"
Description: "A code that represents the Merge status of the Patient."
* value[x] 1..1 MS
* value[x] only code
* valueCode from BCMergeStatusVS (required)

Extension: ValidationStatusExtension
Id: bc-validation-status-extension
Title: "BC Address Validation Status Code"
Description: "A code that represents the validation status of the address"
* value[x] 1..1 MS
* value[x] only code
* valueCode from BCAddressValidationVS (required)

Extension: GenderHistoryExtension
Id: bc-gender-history-extension
Title: "BC Gender History"
Description: "This extension allows the Client Registry to include historical gender codes in a single Patient resource."
* extension contains gender 0..* MS and BusinessPeriodExtension named businessDates 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[gender].value[x] 1..1 MS
* extension[gender].value[x] only code
* extension[gender].valueCode from AdministrativeGender (required)

Extension: BirthDateHistoryExtension
Id: bc-birthdate-history-extension
Title: "BC Birth Date History"
Description: "This extension allows the Client Registry to include historical birth dates in a single Patient resource."
* extension contains BusinessPeriodExtension named businessDates 1..1 MS and birthDate 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[birthDate].value[x] 1..1 MS
* extension[birthDate].value[x] only date

Extension: DeathDateHistoryExtension
Id: bc-death-date-history-extension
Title: "BC Death Date History"
Description: "This extension allows the Client Registry to include historical death dates and flags in a single Patient resource."
* extension contains deathDate 1..1 MS and BusinessPeriodExtension named businessDates 1..1 MS  and SourceIDExtension named sourceID 0..1 MS
* extension[deathDate].value[x] 1..1 MS
* extension[deathDate].value[x] only date

Extension: DeathVerifiedFlagHistoryExtension
Id: bc-death-verified-flag-history-extension
Title: "BC Death Verified Flag History"
Description: "This extension allows the Client Registry to include historical death flags in a single Patient resource."
* extension contains deathFlag 1..1 MS and BusinessPeriodExtension named businessDates 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[deathFlag].value[x] 1..1 MS
* extension[deathFlag].value[x] only boolean

Extension: MultipleBirthHistoryExtension
Id: bc-multiplebirth-history-extension
Title: "BC Multiple Birth History"
Description: "This extension allows the Client Registry to include historical multiple birth values in a single Patient resource."
* extension contains multipleBirth 1..1 MS and  BusinessPeriodExtension named businessDates 1..1 MS and SourceIDExtension named sourceID 0..1 MS
* extension[multipleBirth].value[x] 1..1 MS
* extension[multipleBirth].value[x] only boolean or integer

Extension: SourceIDExtension
Id: bc-sourceId-extension
Title: "BC SourceID and UserID"
Description: "Identifiers for the source and user that modified the specific element that this extension is on."
* extension contains sourceID 1..1 MS and userID 1..1 MS
* extension[sourceID].value[x] 1..1 MS
* extension[sourceID].value[x] only Identifier
* extension[userID].value[x] 1..1 MS
* extension[userID].value[x] only Identifier

Extension: IdentifierStatusExtension
Id: bc-identifier-status-extension
Title: "Identifier status"
Description: "Identifier status."
* value[x] 1..1 MS
* value[x] only code
* valueCode from BCIdentifierStatusVS (required)

