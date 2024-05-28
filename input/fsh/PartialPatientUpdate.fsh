/**Profile: PartialPatientUpdate
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-patient

Extension: UpdatePatientOperationExtension
Id: bc-update-patient-operation-extension
Title: "A code the describes how a particular Patient attribute is to be changed"
Description: "A code the describes how a particular Patient attribute is to be changed."
* ^context.type = #element
* ^context.expression = "Patient.telecom"
* ^context[+].type = #element
* ^context[=].expression = "Patient.identifier"
* ^context[+].type = #element
* ^context[=].expression = "Patient.deceased[x]"
* ^context[+].type = #element
* ^context[=].expression = "Patient.address"
* ^context[+].type = #element
* ^context[=].expression = "Patient.name"
* ^context[+].type = #element
* ^context[=].expression = "Patient.gender"
* ^context[+].type = #element
* ^context[=].expression = "Patient.birthDate"
* ^context[+].type = #element
* ^context[=].expression = "Patient.multipleBirth[x]"
* value[x] 0..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from UpdatePatientOperationVS (required) */


