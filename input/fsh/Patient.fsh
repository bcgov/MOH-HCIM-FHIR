Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains BusinessPeriodExtension named effectiveDates 0..1
* deceased[x] only boolean
* deceased[x].extension contains DeathDateExtension named deathDate 0..1
* deceased[x].extension contains BusinessPeriodExtension named deathDateEffectiveDates 0..1
* deceased[x].extension contains DeathDateFlagBusinessPeriodExtension named deathDateFlagEffectiveDates 0..1
* address only BCClientRegistryAddress
* address MS
* link 0..* MS
//* link.other.identifier 1..1 MS
* name 1..* MS
* name.use 1..1 MS
* name.use from BCNameUse (required)
* telecom.use from BCContactPointUse (required)
* telecom.system from BCContactPointSystem (required)
* gender 1..1 MS
* gender.extension contains BusinessPeriodExtension named genderEffectiveDates 0..1
* birthDate 1..1 MS
* birthDate.extension contains BusinessPeriodExtension named birthDateEffectiveDates 0..1
* multipleBirth[x].extension contains BusinessPeriodExtension named multipleBirthBusinessDates 0..1

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

Profile: BCClientRegistryAddress
Parent: Address
Id: bc-client-registry-address
Description: "The BC Client Registry address profile."
* extension contains ValidationStatusExtension named validationStatus 0..1
* use from BCAddressUse (required)
* type from BCAddressType (required)

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


