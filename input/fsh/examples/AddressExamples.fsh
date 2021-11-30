Instance: Address-0-Example
InstanceOf: Address
Description: "Address example physical, validation status valid"
Usage: #inline
* type = #physical
* line = "123 FRONT ST"
* city = "VICTORIA"
* state = "BC"
* country = "CA"
* postalCode = "V6N2W2"
// address validation status
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* extension.valueCode = #valid

Instance: Address-1-Example
InstanceOf: Address
Description: "Address example postal, validation status invalid"
Usage: #inline
* type = #postal
* line = "432 Douglas St"
* city = "Victoria"
* state = "BC"
* country = "CA"
* postalCode = "V6N2R2"
// address validation status
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* extension.valueCode = #invalid

