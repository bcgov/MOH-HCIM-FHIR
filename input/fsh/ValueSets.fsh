CodeSystem: MergeStatusCS
Id: bc-client-registry-merge-status-code-system
Title: "BC Client Registry merge status."
Description: "Codes used to describe the merge status."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-merge-status-code-system"
* ^caseSensitive = true
* ^experimental = false
* #obsolete "obsolete" "The merge obsoletes this Patient."
* #cancelled "cancelled" "The merge cancels this Patient."

ValueSet: MergeStatusVS
Title: "BC Merge Status Value Set"
Id: bc-merge-status-value-set
Description: "BC Merge Status value set used to describe the merge status of a Patient."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-merge-status-value-set"
* ^experimental = false
* codes from system MergeStatusCS

/**CodeSystem: UpdatePatientOperationCS
Id: bc-client-registry-update-patient-operation-code-system
Title: "BC Code System Of Allowed Update Operations"
Description: "BC Code System of allowed update patient operations."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-update-patient-operation-code-system"
* ^caseSensitive = true
* ^experimental = false
* #add "add" "This operation adds an attribute."
* #delete "delete" "This operation deletes an existing attribute."
* #replace "replace" "This operation replaces an existing attribute."

ValueSet: UpdatePatientOperationVS
Title: "BC Update Patient Operation Value Set"
Id: bc-client-registry-update-patient-operation-value-set
Description: "A Value Set of allowed update operations."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-client-registry-update-patient-operation-value-set"
* ^experimental = false
* codes from system UpdatePatientOperationCS*/

CodeSystem: AddressValidationCS
Id: bc-client-registry-address-validation-code-system
Title: "BC Client Registry Address Validation Status Code"
Description: "Codes used to define the address validation status."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-address-validation-code-system"
* ^caseSensitive = true
* ^experimental = false
* #valid   "valid"   "The address is valid, i.e. there is a reasonable good chance this address is known to Canada Post."
* #invalid "invalid" "The address validation status is invalid and like not recognized by Canada Post."
* #unknown "unknown" "The address validation status is unknown."

CodeSystem: OperationOutcomeDetailsCS
Id: bc-operation-outcome-details-code-system
Title: "BC Client Registry Operation Outcome details code system"
Description: "BC Client Registry Operation Outcome details code system"
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-operation-outcome-details-code-system"
* ^caseSensitive = true

ValueSet: AddressValidationVS
Title: "BC Address Validation Value Set"
Id: bc-address-validation-value-set
Description: "BC Address Validation value set used to describe the validation status of an address"
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-address-validation-value-set"
* ^experimental = false
* codes from system AddressValidationCS

CodeSystem: IdentifierStatusCS
Id: bc-identifier-status-code-system
Title: "BC Client registry identifier status code system"
Description: "BC Client registry identifier status code system."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-identifier-status-code-system"
* ^caseSensitive = true
* ^experimental = false
* #merged "merged" "The identifier has been merged."
* #active "active" "The identifier is active."

ValueSet: IdentifierStatusVS
Title: "BC Identifier Status Value Set"
Id: bc-identifier-status-value-set
Description: "BC Identifier Status value set used to describe the status of an identifier."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-identifier-status-value-set"
* ^experimental = false
* codes from system IdentifierStatusCS

ValueSet: NameUseVS
Title: "BC Name Use value set."
Description: "BC Name Use value set, sliced to meet BC constraints."
Id: bc-name-use-value-set
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-name-use-value-set"
* ^experimental = false
* include codes from valueset NameUse
* exclude http://hl7.org/fhir/name-use#temp
* exclude http://hl7.org/fhir/name-use#anonymous
* exclude http://hl7.org/fhir/name-use#old
* exclude http://hl7.org/fhir/name-use#maiden

ValueSet: ContactPointUseVS
Title: "BC Contact Point Use Value Set"
Description: "BC Contact Point Use value set, sliced to meet BC constraints."
Id: bc-contact-point-use-value-set
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-use-value-set"
* ^experimental = false
* include codes from valueset ContactPointUse
* exclude http://hl7.org/fhir/contact-point-use#old
* exclude http://hl7.org/fhir/contact-point-use#temp

ValueSet: ContactPointSystemVS
Title: "BC Contact Point System Value Set"
Description: "BC Contact Point System value set, sliced to meet BC constraints."
Id: bc-contact-point-system-value-set
* include codes from valueset ContactPointSystem
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-contact-point-system-value-set"
* ^experimental = false
* exclude http://hl7.org/fhir/contact-point-system#fax
* exclude http://hl7.org/fhir/contact-point-system#pager
* exclude http://hl7.org/fhir/contact-point-system#url
* exclude http://hl7.org/fhir/contact-point-system#sms
* exclude http://hl7.org/fhir/contact-point-system#other


