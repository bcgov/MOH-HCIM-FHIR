Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains BusinessPeriodExtension named effectiveDates 0..1 MS and DeathDateExtension named deathDate 0..1 MS
* deceased[x] 0..1 MS
* deceased[x] only boolean 
* deceased[x].extension contains DeathFlagExtension named deathDateFlag 0..1 MS
* address MS
* address.type ^short = "postal | physical"
* link 0..* MS
* name 1..* MS
* name.use 1..1
* name.use from BCNameUseVS (required)
* name.use ^short = "usual | official | nickanme"
* telecom 0..* MS
* telecom.use from BCContactPointUseVS (required)
* telecom.use ^short = "home | work | mobile"
* telecom.system from BCContactPointSystemVS (required)
* telecom.system ^short = "phone | email"
* gender 1..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1 
and GenderHistoryExtension named history 0..* MS
* birthDate 1..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1 
and BirthDateHistoryExtension named history 0..* MS
* multipleBirth[x].extension contains MultipleBirthHistoryExtension named history 0..* MS and BusinessPeriodExtension named multipleBirthEffectiveDates 0..1 MS

Extension: BusinessPeriodExtension
Id: bc-business-period-extension
Title: "BC Business Dates"
Description: "The effective dates for the parent element."
* value[x] only Period

Extension: DeathDateExtension
Id: bc-death-date-extension
Title: "BC Patient Death Date"
Description: "The Patients death date and time as recorded in the Client Registry.  This also include death date history as required."
* extension contains deathDate 1..1 MS and BusinessPeriodExtension named businessDates 0..1 MS and DeathDateHistoryExtension named deathDateHistory 0..* MS 
* extension[deathDate].value[x] 1..1 MS
* extension[deathDate].value[x] only dateTime
* extension[businessDates] only BusinessPeriodExtension
* extension[businessDates] 0..1 MS
* extension[deathDateHistory] only DeathDateHistoryExtension
* extension[deathDateHistory] 0..* MS

Extension: DeathFlagExtension
Id: bc-death-flag-extension
Title: "BC Patient Death Date"
Description: "The Patients death date and time as recorded in the Client Registry."
* extension contains BusinessPeriodExtension named businessDates 0..1 MS and DeathFlagHistoryExtension named deathFlagHistory 0..* MS 
* extension[businessDates] only BusinessPeriodExtension
* extension[businessDates] 0..1 MS
* extension[deathFlagHistory] only DeathFlagHistoryExtension
* extension[deathFlagHistory] 0..* MS

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
* extension contains businessDates 1..1 MS and gender 1..1 MS
* extension[businessDates].value[x] 1..1 MS
* extension[businessDates].value[x] only Period
* extension[gender].value[x] 1..1 MS
* extension[gender].value[x] only code
* extension[gender].valueCode from AdministrativeGender (required)

Extension: BirthDateHistoryExtension
Id: bc-birthdate-history-extension
Title: "BC Birth Date History"
Description: "This extension allows the Client Registry to include historical birth dates in a single Patient resource."
* extension contains businessDates 1..1 MS and birthDate 1..1 MS
* extension[businessDates].value[x] 1..1 MS
* extension[businessDates].value[x] only Period
* extension[birthDate].value[x] 1..1 MS
* extension[birthDate].value[x] only date

Extension: DeathDateHistoryExtension
Id: bc-death-date-history-extension
Title: "BC Death Date History"
Description: "This extension allows the Client Registry to include historical death dates and flags in a single Patient resource."
* extension contains businessDates 1..1 MS and deathDate 1..1 MS
* extension[businessDates].value[x] 1..1 MS
* extension[businessDates].value[x] only Period
* extension[deathDate].value[x] 1..1 MS
* extension[deathDate].value[x] only dateTime

Extension: DeathFlagHistoryExtension
Id: bc-death-flag-history-extension
Title: "BC Death Flag History"
Description: "This extension allows the Client Registry to include historical death dates and flags in a single Patient resource."
* extension contains deathFlag 1..1 MS and businessDates 1..1 MS
* extension[deathFlag].value[x] 1..1 MS
* extension[deathFlag].value[x] only boolean
* extension[businessDates].value[x] 1..1 MS
* extension[businessDates].value[x] only Period

Extension: MultipleBirthHistoryExtension
Id: bc-multiplebirth-history-extension
Title: "BC Multiple Birth History"
Description: "This extension allows the Client Registry to include historical multiple birth values in a single Patient resource."
* extension contains businessDates 1..1 MS and multipleBirth 1..1 MS
* extension[businessDates].value[x] 1..1 MS
* extension[businessDates].value[x] only Period
* extension[multipleBirth].value[x] 1..1 MS
* extension[multipleBirth].value[x] only boolean or integer
