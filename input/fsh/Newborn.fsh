Instance: Newborn
InstanceOf: Patient
* name.given = "Baby Girl"
* name.family = "Schmotz"
* gender = #female
* birthDate = "2013-07-10"
* address.line = "222 First St"
* address.city = "Victoria"
* address.state = "BC"
* address.postalCode = "V8C2P6"
* address.country = "CA"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2503148867"

Instance: MotherRelated
InstanceOf: RelatedPerson
* identifier.value = "MOTHERPHN"
* identifier.system = "http://hl7.org/fhir/sid/bc-phn"
* patient = Reference(Newborn)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
