Instance: MotherRelated
InstanceOf: RelatedPerson
Description: "Example of related person's PHN as Identifier"
* identifier.value = "9736546293"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
// child identifier (the Patient resource in the Operation)
* patient.identifier.value = "IHA2234"
* patient.identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
// We have to populate patient with something, based on the operation $RevisePatient.Newborn
// the client registry should look for the mothersPHN parameter to find the related person ...
// this reference is not used by HCIM in any way and here to satisfy FHIR
//* patient.reference = "Patient/Newborn"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH

