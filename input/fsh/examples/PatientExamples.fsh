Instance: Patient-RevisePerson-Example
InstanceOf: BCPatient
Description: "Patient example for a RevisePatient operation"
// Patient business date
* address.type = #physical
* address.line = "636 YELLOW BRICK RD"
* address.city = "PRINCE GEORGE"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8W 3P9"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"

* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[1].system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier[1].value = "CER2234"
* identifier[1].assigner.display = "VPP_CER"

* identifier[2].system = "http://hlth.gov.bc.ca/fhir/client/bc-ssri"
* identifier[2].value = "VCHA234"
* identifier[2].assigner.display = "VPP_LION"

* identifier[3].system = "http://hlth.gov.bc.ca/fhir/client/bc-out-of-province-sri"
* identifier[3].value = "90348733a"
* identifier[3].assigner.display = "MB"

* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = #official
* gender = #male
* birthDate = 1940-06-06
* deceasedBoolean = false

Instance: Patient-AddPatient-Example
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
* telecom.system = #email
* telecom.value = "pbarney@thepark.com"
* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = #usual
* gender = #male
* birthDate = 1940-06-06
* deceasedBoolean = false

Instance: Patient-AddPatient-Newborn-Example
InstanceOf: BCPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "IHA2234"
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
* name.use = #usual
* gender = #unknown
* birthDate = 2021-11-02
* deceasedBoolean = false

Instance: Patient-MergePatient-Example
InstanceOf: BCPatient
Description: "Example of a merge patient Patient"
* active = true
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
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
* name.use = #usual
* name.family = "Barker"
* name.period.start = 2012-12-07T16:35:00.000-07:00
* name[1].given = "Dan"
* name[1].use = #official
* gender = #male
* birthDate = 1966-10-01
* link[0].type = #replaces
* link[0].other.identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* link[0].other.identifier.value = "203451T3"
* link[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[0].extension.valueCode = #cancelled

* link[1].type = #replaces
* link[1].other.identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* link[1].other.identifier.value = "9876345146"
* link[1].other.identifier.type.coding.code = #JHN
* link[1].other.identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* link[1].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[1].extension.valueCode = #cancelled

* link[2].type = #replaces
* link[2].other.identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* link[2].other.identifier.value = "203451T3"
* link[2].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[2].extension.valueCode = #obsolete

* link[3].type = #replaces
* link[3].other.identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* link[3].other.identifier.value = "9876345146"
* link[3].other.identifier.type.coding.code = #JHN
* link[3].other.identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* link[3].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[3].extension.valueCode = #obsolete

Instance: Patient-0-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle with 4 different kinds of identifiers: SRI-PHN, SRI, SSRI and alternative."
// Patient business date
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension.valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"

* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[1].system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier[1].value = "CER2234"
* identifier[1].assigner.display = "VPP_CER"

* identifier[2].system = "http://hlth.gov.bc.ca/fhir/client/bc-ssri"
* identifier[2].value = "VCHA234"
* identifier[2].assigner.display = "VPP_LION"

* identifier[3].system = "http://hlth.gov.bc.ca/fhir/client/bc-out-of-province-sri"
* identifier[3].value = "90348733a"
* identifier[3].assigner.display = "MB"

* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1940-06-06
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2020-10-17T03:29:17-08:00"
* deceasedBoolean = false

Instance: Patient-1-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505557841"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "SARAH"
* name.given[1] = "LYNN"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#official
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1973-05-18
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2018-10-17T03:29:17-08:00"
* deceasedBoolean = true
* deceasedBoolean.extension[0].valueDateTime = 2021-10-12
* deceasedBoolean.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-date-extension"
* deceasedBoolean.extension[1].valuePeriod.start = 2021-10-12
* deceasedBoolean.extension[1].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedBoolean.extension[2].valuePeriod.start = 2021-10-12
* deceasedBoolean.extension[2].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-date-flag-business-period-extension"

Instance: Patient-2-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "BAILEY"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1985-12-14
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2019-10-17T03:29:17-08:00"
* multipleBirthBoolean = false
* multipleBirthBoolean.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* multipleBirthBoolean.extension.valuePeriod.start = "2019-10-17T03:29:17-08:00"

Instance: Patient-GetDemographics-Example
InstanceOf: BCPatient
Description: "Example of Patient for $GetDemographics operation response"
* address.type = #physical
* address.line = "321 SUNSHINE PL"
* address.line[1] = "NEW LINE 2"
* address.line[2] = "NEW LINE 3"
* address.city = "VANCOUVER"
* address.state = "BC"
* address[1].type = #postal
* address[1].line = "1824 CROSS RD"
* address[1].line[1] = "LINE 2"
* address[1].line[2] = "LINE 3"
* address[1].city = "VANCOUVER"
* address[1].state = "BC"
* address[1].postalCode = "V9L 4H2"
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "6048883322"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9983652763"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "JILLIAN"
* name.given[1] = "DAWN"
* name.given[2] = "THIRD NAME"
* name.family = "COOK-ADAMS"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1972-10-16
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2018-03-17T03:29:17-08:00"

Instance: Patient-AddReviseOrMergePatient-Response-Example
InstanceOf: BCPatient
Description: "Example of Merge or Revise response Bundle with 4 different kinds of identifiers: SRI-PHN, SRI, SSRI and alternative."
// Patient business date
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505554848"

* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[1].system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier[1].value = "CER2234"
* identifier[1].assigner.display = "VPP_CER"

* identifier[2].system = "http://hlth.gov.bc.ca/fhir/client/bc-ssri"
* identifier[2].value = "VCHA234"
* identifier[2].assigner.display = "VPP_LION"

* identifier[3].system = "http://hlth.gov.bc.ca/fhir/client/bc-out-of-province-sri"
* identifier[3].value = "90348733a"
* identifier[3].assigner.display = "MB"

* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = #usual
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1940-06-06
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2020-10-17T03:29:17-08:00"
* deceasedBoolean = false


Instance: Patient-BabyBoy-Example
InstanceOf: BCPatient
Description: "Example of Patient newborn for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-11-12T13:29:17-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9123123124"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "Baby Boy"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 2019-12-12
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2019-11-12T03:29:17-08:00"


Instance: Patient-BabyGirl-Example
InstanceOf: BCPatient
Description: "Example of Patient newborn for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-11-12T13:21:13-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9123123123"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "Baby Girl"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 2019-12-12
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2019-11-12T03:29:17-08:00"


Instance: Patient-Mother-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example
* address[1] = Address-1-Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "BAILEY"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1985-12-14
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2019-10-17T03:29:17-08:00"
* link[0].other.reference = "urn:uuid:425b6c71-b198-4e75-b32c-1b3086935c6a"
* link[0].type = #seealso
* link[1].other.reference = "urn:uuid:4a288971-8af6-4d77-a071-4ba3a10042e5"
* link[1].type = #seealso
