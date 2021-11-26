CodeSystem: BCMergeStatusCS
Id: bc-client-registry-merge-status-code-system
Title: "BC Client Registry merge status."
Description: "Codes used to describe the merge status."
* #obsolete "obsolete" "The merge obsoletes this Patient."
* #cancelled "cancelled" "The merge cancels this Patient."

ValueSet: BCMergeStatusVS
Title: "BC Merge Status value set"
Id: bc-merge-status-value-set
Description: "BC Merge Status value set used to describe the merge status of a Patient."
* codes from system BCMergeStatusCS

CodeSystem: BCAddressValidationCS
Id: bc-client-registry-address-validation-code-system
Title: "BC Client Registry address validation status code"
Description: "Codes used to define the address validation status."
* #valid   "valid"   "The address is valid, i.e. there is a reasonable good chance this address is known to Canada Post."
* #invalid "invalid" "The address validation status is invalid and like not recognized by Canada Post."
* #unknown "unknown" "The address validation status is unknown."

CodeSystem: BCOperationOutcomeDetailsCS
Id: bc-operation-outcome-details-code-system
Title: "BC Client Registry Operation Outcome details code system"
Description: "BC Client Registry Operation Outcome details code system"


ValueSet: BCAddressValidationVS
Title: "BC Address Validation value set"
Id: bc-address-validation-value-set
Description: "BC Address Validation value set used to describe the validation status of an address"
* codes from system BCAddressValidationCS

ValueSet: BCNameUseVS
Title: "BC Name Use value set."
Description: "BC Name Use value set, sliced to meet BC constraints."
Id: bc-name-use-value-set
* include codes from valueset NameUse
* exclude http://hl7.org/fhir/name-use#temp
* exclude http://hl7.org/fhir/name-use#anonymous
* exclude http://hl7.org/fhir/name-use#old
* exclude http://hl7.org/fhir/name-use#maiden

ValueSet: BCContactPointUseVS
Title: "BC Contact Point Use value set."
Description: "BC Contact Point Use value set, sliced to meet BC constraints."
Id: bc-contact-point-use-value-set
* include codes from valueset ContactPointUse
* exclude http://hl7.org/fhir/contact-point-use#old
* exclude http://hl7.org/fhir/contact-point-use#temp

ValueSet: BCContactPointSystemVS
Title: "BC Contact Point System value set."
Description: "BC Contact Point System value set, sliced to meet BC constraints."
Id: bc-contact-point-system-value-set
* include codes from valueset ContactPointSystem
* exclude http://hl7.org/fhir/contact-point-system#fax
* exclude http://hl7.org/fhir/contact-point-system#pager
* exclude http://hl7.org/fhir/contact-point-system#url
* exclude http://hl7.org/fhir/contact-point-system#sms
* exclude http://hl7.org/fhir/contact-point-system#other

//ValueSet: BCAddressUse
//Title: "BC Address Use value set."
//Description: "BC Address Use value set, sliced to meet BC constraints."
//Id: bc-address-use-value-set
//* include codes from valueset AddressUse
//* exclude http://hl7.org/fhir/address-use#work
//* exclude http://hl7.org/fhir/address-use#temp
//* exclude http://hl7.org/fhir/address-use#old
//* exclude http://hl7.org/fhir/address-use#billing

ValueSet: BCAddressTypeVS
Title: "BC Address Type value set."
Description: "BC Address Type value set, sliced to meet BC constraints."
Id: bc-address-type-value-set
* include codes from valueset AddressType
* exclude http://hl7.org/fhir/address-type#both

