Profile: BCPatient
Parent: Patient
Id: bc-patient
Description: "General constraints on the Patient resource for use in the BC Client Registry project."
* extension contains PatientBusinessDateExtension named effectiveDate 1..1
* extension contains PHNBusinessDateExtension named phnEffectiveDate 1..1 MS
* extension contains DeathDateExtension named deathDate 0..1 MS
* deceased[x] only boolean
* address only BCClientRegistryAddress
* address MS

Extension: PatientBusinessDateExtension
Id: bc-patient-business-date
Title: "BC Patient business date"
Description: "The effective start date for the Patient."
* value[x] only dateTime

Extension: PHNBusinessDateExtension
Id: bc-phn-business-date
Title: "BC Patient PHN business date"
Description: "The effective start date for the Patient's PHN."
* value[x] only dateTime

Extension: DeathDateExtension
Id: bc-death-date-extension
Title: "BC Patient death date"
Description: "The Patients death date and time as recorded in the Client Registry."
* value[x] only dateTime

Profile: BCClientRegistryAddress
Parent: Address
Id: bc-client-registry-address
Description: "The BC Client Registry address profile."
* extension contains AddressValidationStatusExtension named addressValidationStatus 1..1

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


