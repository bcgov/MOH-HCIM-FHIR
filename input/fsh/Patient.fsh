Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains BusinessPeriodExtension named effectiveDates 0..1 MS
* deceased[x] 0..1 MS
* deceased[x] only boolean 
* deceased[x].extension contains DeathDateExtension named deathDate 0..1
* deceased[x].extension contains BusinessPeriodExtension named deathDateEffectiveDates 0..1
* deceased[x].extension contains DeathDateFlagBusinessPeriodExtension named deathDateFlagEffectiveDates 0..1
* deceased[x].extension contains DeathDateHistoryExtension named deathDateHistory 0..1
* deceased[x].extension contains DeathDateFlagHistoryExtension named deathDateFlagHistory 0..1
* address MS
* link 0..* MS
//* link.other.identifier 1..1 MS
* name 1..* MS
* name.use 1..1
* name.use from BCNameUseVS (required)
* telecom 0..* MS
* telecom.use from BCContactPointUseVS (required)
* telecom.system from BCContactPointSystemVS (required)
* gender 1..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1 
and GenderHistoryExtension named history 0..* MS
* birthDate 1..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1 
and BirthDateHistoryExtension named history 0..* MS
* multipleBirth[x].extension contains MultipleBirthHistoryExtension named history 0..* MS and BusinessPeriodExtension named multipleBirthEffectiveDates 0..1 MS

Extension: BusinessPeriodExtension
Id: bc-business-period-extension
Title: "BC business dates"
Description: "The effective dates for the parent element."
* value[x] only Period

Extension: DeathDateExtension
Id: bc-death-date-extension
Title: "BC Patient death date"
Description: "The Patients death date and time as recorded in the Client Registry."
* value[x] only dateTime

Extension: DeathDateFlagBusinessPeriodExtension
Id: bc-death-date-flag-business-period-extension
Title: "BC Patient Death Date flag business date"
Description: "The effective dates for the Patient's Death Date flag."
* value[x] only Period

Extension: MergeStatusExtension
Id: bc-merge-status-extension
Title: "BC Merge status code"
Description: "A code that represents the Merge status of the Patient."
* value[x] only code
* valueCode from BCMergeStatusVS (required)

Extension: ValidationStatusExtension
Id: bc-validation-status-extension
Title: "BC Address validation status code"
Description: "A code that represents the validation status of the address"
* value[x] only code
* valueCode from BCAddressValidationVS (required)

Extension: GenderHistoryExtension
Id: bc-gender-history-extension
Title: "BC gender history"
Description: "This extension allows the Client Registry to include historical gender codes in a single Patient resource."
* extension contains businessDates 1..1 MS and gender 1..1 MS
* extension[businessDates].value[x] only Period
* extension[gender].value[x] only code
* extension[gender].valueCode from AdministrativeGender (required)

Extension: BirthDateHistoryExtension
Id: bc-birthdate-history-extension
Title: "BC Birth Date history"
Description: "This extension allows the Client Registry to include historical birth dates in a single Patient resource."
* extension contains businessDates 1..1 MS and birthDate 1..1 MS
* extension[businessDates].value[x] only Period
* extension[birthDate].value[x] only date

Extension: DeathDateHistoryExtension
Id: bc-deathdate-history-extension
Title: "BC Death Date history"
Description: "This extension allows the Client Registry to include historical death dates and flags in a single Patient resource."
* extension contains deathDateBusinessDates 1..1 MS and deathDate 1..1 MS
* extension[deathDateBusinessDates].value[x] only Period
* extension[deathDate].value[x] only dateTime

Extension: DeathDateFlagHistoryExtension
Id: bc-deathdate-flag-history-extension
Title: "BC Death Date history"
Description: "This extension allows the Client Registry to include historical death dates and flags in a single Patient resource."
* extension contains deathDateFlag 1..1 MS and deathDateFlagBusinessDates 1..1 MS
* extension[deathDateFlag].value[x] only boolean
* extension[deathDateFlagBusinessDates].value[x] only Period

Extension: MultipleBirthHistoryExtension
Id: bc-multiplebirth-history-extension
Title: "BC multiple birth history"
Description: "This extension allows the Client Registry to include historical multiple birth values in a single Patient resource."
* extension contains businessDates 1..1 MS and multipleBirth 1..1 MS
* extension[businessDates].value[x] only Period
* extension[multipleBirth].value[x]

