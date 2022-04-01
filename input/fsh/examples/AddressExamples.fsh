Instance: Address-0-Example-Valid
InstanceOf: Address
Description: "Address example physical, validation status valid"
Usage: #inline
* type = #physical
* line = "721 FRONT ST"
* city = "VICTORIA"
* state = "BC"
* country = "CA"
* postalCode = "V9A3Y3"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* extension.valueCode = #valid

// incoming address so no validation status
Instance: Address-0-Example
InstanceOf: Address
Description: "Address example physical, validation status valid"
Usage: #inline
* type = #physical
* line = "721 FRONT ST"
* city = "VICTORIA"
* state = "BC"
* country = "CA"
* postalCode = "V9A3Y3"

Instance: Address-1-Example-Invalid
InstanceOf: Address
Description: "Address example postal, validation status invalid"
Usage: #inline
* type = #postal
* line = "721 FRONT AVE"
* city = "Victoria"
* state = "BC"
* country = "CA"
* postalCode = "V9A3V3"
// address validation status
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension"
* extension.valueCode = #invalid

// incoming address so no validation status
Instance: Address-1-Example
InstanceOf: Address
Description: "Address example postal, validation status invalid"
Usage: #inline
* type = #postal
* line = "721 FRONT AVE"
* city = "Victoria"
* state = "BC"
* country = "CA"
* postalCode = "V9A3V3"

