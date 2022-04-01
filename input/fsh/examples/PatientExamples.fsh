Instance: Patient-RevisePatient-Example
InstanceOf: BCPatient
Description: "Patient example for a RevisePatient operation"
* address = Address-0-Example
* telecom = ContactPoint-Example-Home-Phone
* identifier = IdentifierExampleSRI
* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = #official
* gender = #male
* birthDate = 1940-06-06

Instance: Patient-AddPatient-Example
InstanceOf: BCPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* address = Address-0-Example-Valid
* telecom[0] = ContactPoint-Example-Home-Phone
* telecom[1] = ContactPoint-Example-Home-Email
* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = #usual
* gender = #male
* birthDate = 1940-06-06

Instance: Patient-AddPatient-Newborn-Example
InstanceOf: BCPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* identifier = IdentifierExampleSRI
* address = Address-0-Example-Valid
* telecom[0] = ContactPoint-Example-Home-Phone
* name.given = "Baby Girl"
* name.family = "Barness"
* name.use = #usual
* gender = #unknown
* birthDate = 2021-11-02

Instance: Patient-MergePatient-Example
InstanceOf: BCPatient
Description: "Example of a merge patient Patient"
* active = true
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "876092N4"
* address[0] = Address-0-Example
* telecom[0] = ContactPoint-Example-Home-Phone
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
* link[0].other.identifier = IdentifierExampleSRINoPeriod
* link[0].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[0].extension.valueCode = #cancelled

* link[1].type = #replaces
* link[1].other.identifier = IdentifierExamplePHNNoPeriod
* link[1].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[1].extension.valueCode = #cancelled

* link[2].type = #replaces
* link[2].other.identifier = IdentifierExampleSSRINoPeriod
* link[2].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[2].extension.valueCode = #obsolete

* link[3].type = #replaces
* link[3].other.identifier = IdentifierExamplePHN2NoPeriod
* link[3].extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-merge-status-extension"
* link[3].extension.valueCode = #obsolete

Instance: Patient-0-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle with 4 different kinds of identifiers: SRI-PHN, SRI, SSRI and alternative."
// Patient business date
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension.valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* identifier[1] = IdentifierExampleSRI
* identifier[2] = IdentifierExampleSSRI
* identifier[3] = IdentifierExampleQCPHN
* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #male
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1940-06-06
* birthDate.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[0].valuePeriod.start = "2020-10-17T03:29:17-08:00"

Instance: Patient-1-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name.given = "SARAH"
* name.given[1] = "LYNN"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#official
* gender = #female
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1973-05-18
* birthDate.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[0].valuePeriod.start = "2018-10-17T03:29:17-08:00"

Instance: Patient-2-Example
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name.given = "BAILEY"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1985-12-14
* birthDate.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[0].valuePeriod.start = "2019-10-17T03:29:17-08:00"
* multipleBirthBoolean = false
* multipleBirthBoolean.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* multipleBirthBoolean.extension[0].valuePeriod.start = "2019-10-17T03:29:17-08:00"

Instance: Patient-GetDemographics-Example
InstanceOf: BCPatient
Description: "Example of Patient for $GetDemographics operation response"
* address[0] = Address-0-Example
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name.given = "JILLIAN"
* name.given[1] = "DAWN"
* name.given[2] = "THIRD NAME"
* name.family = "COOK-ADAMS"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* gender.extension[1].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"
* gender.extension[1].extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[1].extension[0].valuePeriod.start = "2016-04-05"
* gender.extension[1].extension[0].valuePeriod.end = "2017-04-05"
* gender.extension[1].extension[1].url = "gender"
* gender.extension[1].extension[1].valueCode = #other
* gender.extension[2].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"
* gender.extension[2].extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[2].extension[0].valuePeriod.start = "2015-04-05"
* gender.extension[2].extension[0].valuePeriod.end = "2016-04-05"
* gender.extension[2].extension[1].url = "gender"
* gender.extension[2].extension[1].valueCode = #unknown
* birthDate = 1972-10-16
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2018-03-17T03:29:17-08:00"

Instance: Patient-AddReviseOrMergePatient-Response-Example
InstanceOf: BCPatient
Description: "Example of Merge or Revise response Bundle with 4 different kinds of identifiers: SRI-PHN, SRI, SSRI and alternative."
// Patient business date
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* identifier[1] = IdentifierExampleSRI
* identifier[2] = IdentifierExampleSSRI
* identifier[3] = IdentifierExampleQCPHN
* name.given = "PURPLE"
* name.family = "BARNEY"
* name.use = #usual
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1940-06-06
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2020-10-17T03:29:17-08:00"


Instance: Patient-BabyBoy-Example
InstanceOf: BCPatient
Description: "Example of Patient newborn for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-11-12T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
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
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
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
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
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

Instance: Patient-GetDemographics-withHistory-Example
InstanceOf: BCPatient
Description: "Example of Patient for $GetDemographics operation response"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* telecom[0] = ContactPoint-Example-Home-Phone-2
* identifier[0] = IdentifierExamplePHN
* name.given = "JILLIAN"
* name.given[1] = "DAWN"
* name.given[2] = "THIRD NAME"
* name.family = "COOK-ADAMS"
* name.use = http://hl7.org/fhir/name-use#usual
* name.period.start = "2021-01-01"
* name[1].given = "TILLIAN"
* name[1].given[1] = "DUSK"
* name[1].given[2] = "THIRD NAME"
* name[1].family = "COOK-ADAMS"
* name[1].use = http://hl7.org/fhir/name-use#usual
* name[1].period.start = "2020-01-01T00:00:00-08:00"
* name[1].period.end = "2021-01-01T00:00:00-08:00"
* name[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name[2].extension[0].valueCode = #masked
* name[2].use = http://hl7.org/fhir/name-use#temp
* gender = #female
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2018-04-05T16:16:16-08:00"
* gender.extension[1].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-history-extension"
* gender.extension[1].extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[1].extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* gender.extension[1].extension[0].valuePeriod.end = "2018-04-05T16:16:16-08:00"
* gender.extension[1].extension[1].url = "gender"
* gender.extension[1].extension[1].valueCode = #unknown 
* birthDate = "1972-10-16" 
* birthDate.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[0].valuePeriod.start = "2020-03-17T00:00:00-08:00"
* birthDate.extension[1].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-birthdate-history-extension"
* birthDate.extension[1].extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[1].extension[0].valuePeriod.start = "2018-03-17T00:00:00-08:00"
* birthDate.extension[1].extension[1].url = "birthDate"
* birthDate.extension[1].extension[1].valueDate = "1972-11-16"
* multipleBirthBoolean = true
* multipleBirthBoolean.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* multipleBirthBoolean.extension[0].valuePeriod.start = "2021-04-01T00:00:00-08:00"
* multipleBirthBoolean.extension[1].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-multiplebirth-history-extension"
* multipleBirthBoolean.extension[1].extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* multipleBirthBoolean.extension[1].extension[0].valuePeriod.start = "2018-03-17T03:29:17-08:00"
* multipleBirthBoolean.extension[1].extension[0].valuePeriod.end = "2019-03-17T03:29:17-08:00"
* multipleBirthBoolean.extension[1].extension[1].url = "multipleBirth"
* multipleBirthBoolean.extension[1].extension[1].valueBoolean = true
* multipleBirthBoolean.extension[2].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-multiplebirth-history-extension"
* multipleBirthBoolean.extension[2].extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* multipleBirthBoolean.extension[2].extension[0].valuePeriod.start = "2019-03-17T03:29:17-08:00"
* multipleBirthBoolean.extension[2].extension[0].valuePeriod.end = "2020-03-17T03:29:17-08:00"
* multipleBirthBoolean.extension[2].extension[1].url = "multipleBirth"
* multipleBirthBoolean.extension[2].extension[1].valueBoolean = false

* deceasedDateTime = "2000-01-01"

// date period
* deceasedDateTime.extension[deathDateEffectiveDates].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedDateTime.extension[deathDateEffectiveDates].valuePeriod.start = "1980-01-01"
* deceasedDateTime.extension[deathDateEffectiveDates].valuePeriod.end = "2000-01-01"

// date source
* deceasedDateTime.extension[sourceID].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"
* deceasedDateTime.extension[sourceID].extension[0].url = "sourceID"
* deceasedDateTime.extension[sourceID].extension[0].valueIdentifier.assigner.display = "SOURCE"
* deceasedDateTime.extension[sourceID].extension[1].url = "userID"
* deceasedDateTime.extension[sourceID].extension[1].valueIdentifier.assigner.display = "USERID"

// flag
* deceasedDateTime.extension[verifiedDeathFlag].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-death-verified-flag-extension"
* deceasedDateTime.extension[verifiedDeathFlag].extension[deathVerifiedFlag].url = "deathVerifiedFlag"
* deceasedDateTime.extension[verifiedDeathFlag].extension[deathVerifiedFlag].valueBoolean = true

// flag period
* deceasedDateTime.extension[verifiedDeathFlag].extension[businessDates].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* deceasedDateTime.extension[verifiedDeathFlag].extension[businessDates].valuePeriod.start = "1980-01-01"
* deceasedDateTime.extension[verifiedDeathFlag].extension[businessDates].valuePeriod.end = "2000-01-01"

// flag source
* deceasedDateTime.extension[verifiedDeathFlag].extension[sourceID].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension"
* deceasedDateTime.extension[verifiedDeathFlag].extension[sourceID].extension[0].url = "sourceID"
* deceasedDateTime.extension[verifiedDeathFlag].extension[sourceID].extension[0].valueIdentifier.assigner.display = "SOURCE"
* deceasedDateTime.extension[verifiedDeathFlag].extension[sourceID].extension[1].url = "userID"
* deceasedDateTime.extension[verifiedDeathFlag].extension[sourceID].extension[1].valueIdentifier.assigner.display = "USERID"
