Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains PatientBusinessDateExtension named effectiveDates 1..1
* extension contains PHNBusinessDateExtension named phnEffectiveDates 1..1
* extension contains DeathDateExtension named deathDate 0..1
* extension contains BirthDateBusinessDateExtension named birthDateEffectiveDates 0..1
* extension contains DeathDateBusinessDateExtension named deathDateEffectiveDates 0..1
* extension contains DeathDateFlagBusinessDateExtension named deathDateFlagEffectiveDates 0..1
* extension contains GenderBusinessDateExtension named genderEffectiveDates 0..1
* extension contains PHNExtension named genderEffectiveDatesAndSource 0..1
* deceased[x] only boolean
* address only BCClientRegistryAddress
* address MS
* link.other.identifier 1..1 MS
* name 1..* MS
* gender 1..1 MS
* birthDate 1..1 MS

Extension: PatientBusinessDateExtension
Id: bc-patient-business-dates
Title: "BC Patient business dates"
Description: "The effective dates for the Patient."
* value[x] only Period

Extension: PHNExtension
Id: bc-phn-extension
Title: "BC extension for source and business dates."
Description: "BC extension for source and business dates."
* extension contains SourceExtension named source 0..1
* extension contains BusinessDatesExtension named businessDates 0..1

Extension: SourceExtension
Id: bc-source-extension
Title: "BC source"
Description: "The elements source. I.e. who create/updated this element."
* value[x] only string

Extension: BusinessDatesExtension
Id: bc-business-dates-extension
Title: "BC business dates"
Description: "Business dates recored by the Client Registry."
* value[x] only dateTime

Extension: PHNBusinessDateExtension
Id: bc-phn-business-dates
Title: "BC Patient PHN business date"
Description: "The effective dates for the Patient's PHN."
* value[x] only Period

Extension: DeathDateExtension
Id: bc-death-date-extension
Title: "BC Patient death date"
Description: "The Patients death date and time as recorded in the Client Registry."
* value[x] only dateTime

Extension: DeathDateBusinessDateExtension
Id: bc-death-date-business-dates
Title: "BC Patient Death Date business date"
Description: "The effective dates for the Patient's Death Date."
* value[x] only Period

Extension: DeathDateFlagBusinessDateExtension
Id: bc-death-date-flag-business-dates
Title: "BC Patient Death Date flag business date"
Description: "The effective dates for the Patient's Death Date flag."
* value[x] only Period

Extension: GenderBusinessDateExtension
Id: bc-gender-business-dates
Title: "BC Patient Gender business date"
Description: "The effective dates for the Patient's Gender."
* value[x] only Period

Extension: BirthDateBusinessDateExtension
Id: bc-birth-date-business-dates
Title: "BC Patient Birth Date business date"
Description: "The effective dates for the Patient's Birth Date."
* value[x] only Period

Profile: BCClientRegistryAddress
Parent: Address
Id: bc-client-registry-address
Description: "The BC Client Registry address profile."
* extension contains AddressValidationStatusExtension named addressValidationStatus 1..1
* extension contains SourceExtension named source 0..1

CodeSystem: BCAddressValidationCS
Id: bc-client-registry-address-validation-code-system
Title: "BC Client Registry address validation status code"
Description: "Codes used to define the address validation status."
* #valid "valid" "The address is valid, i.e. there is a reasonable good chance this address is known by Canada Post."
* #invalid "invalid" "The address validation status is invalid and like not recognized by Canada Post."
* #unknown "unknown" "The address validation status is unknown."

ValueSet: BCAddressValidationVS
Title: "BC Address Validation value set"
Id: bc-address-validation-value-set
Description: "BC Address Validation value set used to desribe the validation status of an address"
* codes from system BCAddressValidationCS

Extension: AddressValidationStatusExtension
Id: bc-address-validation-status
Title: "BC Address validation status code"
Description: "A code that represents the validation status of the address"
* value[x] only code
* valueCode from BCAddressValidationVS (required)


