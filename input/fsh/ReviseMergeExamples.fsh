Instance: RevisePatient-UpdateExisting
InstanceOf: BCPatientBusinessParameters
Description: "Example of $RevisePatient operation that updates an existing Patient"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "PHARM"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "klgodfre"
* parameter[enterer].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-user"

* parameter[patient].name = "patient"
* parameter[patient].resource = PatientRP

Instance: PatientRP
InstanceOf: BCPatient
Description: "Patient example for a RevicePatient operation"
* address.type = #physical
* address.line = "636 YELLOW BRICK RD"
* address.city = "PRINCE GEORGE"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8W 3P9"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"

* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[1].system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier[1].value = "CER2234"
* identifier[1].assigner.display = "VPP_CER"

* identifier[2].system = "http://hl7.org/fhir/bc-hcim/bc-ssri"
* identifier[2].value = "VCHA234"
* identifier[2].assigner.display = "VPP_LION"

* identifier[3].system = "http://hl7.org/fhir/bc-hcim/bc-out-of-province-sri"
* identifier[3].value = "90348733a"
* identifier[3].assigner.display = "MB"

* name.given = "PURPLE"
* name.family = "BARNEY"
* gender = #male
* birthDate = 1940-06-06
* deceasedBoolean = false
* extension[0].url = "http://moh.fhir/bc-client/StructureDefinition/bc-patient-business-dates" 
* extension[0].valuePeriod.start = "2021-11-02T22:00:17-08:00"

Instance: RevisePatient-New
InstanceOf: BCPatientBusinessParameters
Description: "Example of $RevisePatient operation where the Patient is new to the Client Registry."

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "PHARM"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "klgodfre"
* parameter[enterer].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-user"

* parameter[patient].name = "patient"
* parameter[patient].resource = PatientRP-New

Instance: PatientRP-New
InstanceOf: BCPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* address.type = #physical
* address.line = "667 YELLOW BRICK RD"
* address.city = "PRINCE GEORGE"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8W 3P9"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"
* name.given = "PURPLE"
* name.family = "BARNEY"
* gender = #male
* birthDate = 1940-06-06
* deceasedBoolean = false
* extension[0].url = "http://moh.fhir/bc-client/StructureDefinition/bc-patient-business-dates" 
* extension[0].valuePeriod.start = "2021-11-02T22:00:17-08:00"

Instance: RevisePatient-Newborn
InstanceOf: BCPatientBusinessParameters
Description: "Example of $RevisePatient.Newborn operation where the Patient is a newborn.  Awwwwww so cute."

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "IHA"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "klgodfre"
* parameter[enterer].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-user"

* parameter[patient].name = "patient"
* parameter[patient].resource = PatientRP-Newborn

* parameter[5].name = "mothersPHN"
* parameter[5].resource = MotherRelated

Instance: PatientRP-Newborn
InstanceOf: BCPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "IHA2234"
* extension[0].url = "http://moh.fhir/bc-client/StructureDefinition/bc-patient-business-dates" 
* extension[0].valuePeriod.start = "2021-11-02T22:00:17-08:00"
* address.type = #physical
* address.line = "222 First St"
* address.city = "Victoria"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8W 3P9"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"
* name.given = "Baby Girl"
* name.family = "Barness"
* gender = #unknown
* birthDate = 2021-11-02
* deceasedBoolean = false

Instance: MotherRelated
InstanceOf: RelatedPerson
Description: "Example of related person's PHN as Identifier"
* identifier.value = "9736546293"
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
// We have to populate patient with something, based on the operation $RevisePatient.Newborn
// the client registry should look for the mothersPHN parameter to find the related persion ...
// this refernce means nothing really
* patient.reference = "Patient/Newborn"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH


Instance: MergePatient-TwoID
InstanceOf: BCPatientBusinessParameters
Description: "Example of $MergePatient operation."

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2021-11-02T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "NHA"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "nvida"
* parameter[enterer].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-user"

* parameter[patient].name = "patient"
* parameter[patient].resource = PatientMP


Instance: PatientMP
InstanceOf: BCPatient
Description: "Example of a merge patient Patient"
* extension.url = "http://fhir.bc.ca/extension/effectiveDate"
* extension.valuePeriod.start = 2012-12-07T16:35:00.000-07:00
* active = true
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "876092N4"
* address.type = #postal
* address.line = "3216 Peach St"
* address.city = "Victoria"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8Z W3Y"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505559288"
* name.given = "Darrel"
* name.given[1] = "Dwayne"
* name.family = "Barker"
* name.period.start = 2012-12-07T16:35:00.000-07:00
* name[1].given = "Dan"
* name[1].use = #nickname
* gender = #male
* birthDate = 1966-10-01
* link[0].type = #replaces
* link[0].other.identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* link[0].other.identifier.value = "203451T3"
* link[0].extension.url = "http://moh.fhir/bc-clientregistry/extension/bc-merge-status-extension"
* link[0].extension.valueCode = #cancelled

* link[1].type = #replaces
* link[1].other.identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* link[1].other.identifier.value = "9876345146"
* link[1].other.identifier.type.coding.code = #JHN
* link[1].extension.url = "http://moh.fhir/bc-clientregistry/extension/bc-merge-status-extension"
* link[1].extension.valueCode = #cancelled

* link[2].type = #replaces
* link[2].other.identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* link[2].other.identifier.value = "203451T3"
* link[2].extension.url = "http://moh.fhir/bc-clientregistry/extension/bc-merge-status-extension"
* link[2].extension.valueCode = #obsolete

* link[3].type = #replaces
* link[3].other.identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* link[3].other.identifier.value = "9876345146"
* link[3].other.identifier.type.coding.code = #JHN
* link[3].extension.url = "http://moh.fhir/bc-clientregistry/extension/bc-merge-status-extension"
* link[3].extension.valueCode = #obsolete

