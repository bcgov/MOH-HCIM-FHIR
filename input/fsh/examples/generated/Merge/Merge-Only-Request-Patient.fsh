Instance: Merge-Only-Request-Patient  
InstanceOf: PatientMerge
Usage: #inline
* identifier.use = #official
//* identifier.type = $v2-0203#AN
* identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vcha-rich-source-patient-id"
* identifier.value = "56N4QF275188070LV60O8RM2L"
//* identifier.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
//* identifier.value.extension.valueCode = #unknown
* link[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[=].extension.valueCode = #obsolete
* link[=].other.identifier.use = #official
//* link[=].other.identifier.type = $v2-0203#AN
* link[=].other.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vcha-rich-source-patient-id"
* link[=].other.identifier.value = "58EZ32AH5MLP9GT20"
* link[=].type = #replaces
* link[+].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[=].extension.valueCode = #obsolete
* link[=].other.identifier.use = #official
//* link[=].other.identifier.type = $v2-0203#AN
* link[=].other.identifier.system = "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vcha-rich-source-patient-id"
* link[=].other.identifier.value = "JP5Y964W2B1B13C6"
//* link[=].other.identifier.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
//* link[=].other.identifier.value.extension.valueCode = #unknown
* link[=].type = #replaces