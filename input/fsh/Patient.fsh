Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains PatientBusinessDateExtension named effectiveDates 0..1
* extension contains DeathDateExtension named deathDate 0..1
* extension contains BirthDateBusinessDateExtension named birthDateEffectiveDates 0..1
* extension contains DeathDateBusinessDateExtension named deathDateEffectiveDates 0..1
* extension contains DeathDateFlagBusinessDateExtension named deathDateFlagEffectiveDates 0..1
* extension contains GenderBusinessDateExtension named genderEffectiveDates 0..1
* deceased[x] only boolean
* address only BCClientRegistryAddress
* address MS
* link 0..* MS
* link.other.identifier 1..1 MS
* name 1..* MS
* name.use 1..1 MS
* name.use from BCNameUse (required)
* telecom.use from BCContactPointUse (required)
* telecom.system from BCContactPointSystem (required)
* gender 1..1 MS
* birthDate 1..1 MS

Extension: PatientBusinessDateExtension
Id: bc-patient-business-dates-extension
Title: "BC Patient business dates"
Description: "The effective dates for the Patient."
* value[x] only Period

Extension: DeathDateExtension
Id: bc-death-date-extension
Title: "BC Patient death date"
Description: "The Patients death date and time as recorded in the Client Registry."
* value[x] only dateTime

Extension: DeathDateBusinessDateExtension
Id: bc-death-date-business-dates-extension
Title: "BC Patient Death Date business date"
Description: "The effective dates for the Patient's Death Date."
* value[x] only Period

Extension: DeathDateFlagBusinessDateExtension
Id: bc-death-date-flag-business-dates-extension
Title: "BC Patient Death Date flag business date"
Description: "The effective dates for the Patient's Death Date flag."
* value[x] only Period

Extension: GenderBusinessDateExtension
Id: bc-gender-business-dates-extension
Title: "BC Patient Gender business date"
Description: "The effective dates for the Patient's Gender."
* value[x] only Period

Extension: BirthDateBusinessDateExtension
Id: bc-birth-date-business-dates-extension
Title: "BC Patient Birth Date business date"
Description: "The effective dates for the Patient's Birth Date."
* value[x] only Period

Profile: BCClientRegistryAddress
Parent: Address
Id: bc-client-registry-address
Description: "The BC Client Registry address profile."
* extension contains AddressValidationStatusExtension named addressValidationStatus 0..1
* use from BCAddressUse (required)
* type from BCAddressType (required)

Extension: MergeStatusExtension
Id: bc-merge-status-extension
Title: "BC Merge status code"
Description: "A code that represents the Merge status of the Patient."
* value[x] only code
* valueCode from BCMergeStatusVS (required)

Extension: AddressValidationStatusExtension
Id: bc-address-validation-status-extension
Title: "BC Address validation status code"
Description: "A code that represents the validation status of the address"
* value[x] only code
* valueCode from BCAddressValidationVS (required)


