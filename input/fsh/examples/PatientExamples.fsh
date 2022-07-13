Instance: Patient-RevisePatient-Example
InstanceOf: ClientRegistryPatient
Description: "Patient example for a RevisePatient operation"
* address = Address-0-Example
* telecom = ContactPoint-Example-Home-Phone
* identifier = IdentifierExampleSRI
* name = Name-Example-JohnDoe
* gender = #male
* birthDate = 1940-06-06

Instance: Patient-AddPatient-Example
InstanceOf: ClientRegistryPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* address = Address-0-Example-NoPeriod-NoStatus
* telecom[+] = ContactPoint-Example-Work-Phone-NoPeriod
* telecom[+] = ContactPoint-Example-Mobile-Phone-NoPeriod
* telecom[+] = ContactPoint-Example-Home-Email-NoPeriod
* telecom[+] = ContactPoint-Example-Work-Email-NoPeriod
* name = Name-Example-JohnDoe-NoPeriod
* gender = #male
* birthDate = 1940-06-06

Instance: Patient-AddPatient-Newborn-Example
InstanceOf: ClientRegistryPatient
Description: "The Patient is completely new to the Client Registry, no identifiers."
* identifier = IdentifierExampleSSRINoPeriod
* address = Address-0-Example-NoPeriod-NoStatus
* telecom[0] = ContactPoint-Example-Home-Phone-NoPeriod
* name.given = "Baby girl"
* gender = #female
* birthDate = 2021-11-02

Instance: Patient-MergePatient-Example
InstanceOf: ClientRegistryPatient
Description: "Example of a merge patient Patient"
* active = true
* identifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* identifier.value = "876092N4"
* address[0] = Address-0-Example
* telecom[0] = ContactPoint-Example-Home-Phone
* name = Name-Example-DarDwayne
* name = Name-Example-DarrelDwayne
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
InstanceOf: ClientRegistryPatient
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
* name = Name-Example-JaneDoe
* gender = #male
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1940-06-06
* birthDate.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[0].valuePeriod.start = "2020-10-17T03:29:17-08:00"

Instance: Patient-1-Example
InstanceOf: ClientRegistryPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-JaneDoe
* gender = #female
* gender.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension[0].valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1973-05-18
* birthDate.extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension[0].valuePeriod.start = "2018-10-17T03:29:17-08:00"

Instance: Patient-2-Example
InstanceOf: ClientRegistryPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-JohnDoe
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
InstanceOf: ClientRegistryPatient
Description: "Example of Patient for $GetDemographics operation response"
* address[0] = Address-0-Example
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-JaneDoe-GD
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
InstanceOf: ClientRegistryPatient
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
* name = Name-Example-JohnDoe
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 1940-06-06
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2020-10-17T03:29:17-08:00"


Instance: Patient-BabyBoy-Example
InstanceOf: ClientRegistryPatient
Description: "Example of Patient newborn for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-11-12T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-JohnDoe
* gender = #male
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 2019-12-12
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2019-11-12T03:29:17-08:00"


Instance: Patient-BabyGirl-Example
InstanceOf: ClientRegistryPatient
Description: "Example of Patient newborn for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-11-12T13:21:13-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-JaneDoe
* gender = #female
* gender.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* gender.extension.valuePeriod.start = "2017-04-05T16:16:16-08:00"
* birthDate = 2019-12-12
* birthDate.extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* birthDate.extension.valuePeriod.start = "2019-11-12T03:29:17-08:00"


Instance: Patient-Mother-Example
InstanceOf: ClientRegistryPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-MotherDoe
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
InstanceOf: ClientRegistryPatient
Description: "Example of Patient for $GetDemographics operation response"
* address[0] = Address-0-Example-Valid
* address[1] = Address-1-Example-Invalid
* telecom[0] = ContactPoint-Example-Home-Phone
* telecom[0] = ContactPoint-Example-Home-Phone-2
* identifier[0] = IdentifierExamplePHN
* name = Name-Example-JaneDoe
* name = Name-Example-JaneDoe-History1
* name = Name-Example-JaneDoe-History2
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
