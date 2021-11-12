Instance: FindCandidates
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[3].name = "address"
* parameter[3].valueAddress.type = #postal
* parameter[3].valueAddress.line[0] = "123 Any St"
* parameter[3].valueAddress.line[1] = "line 2"
* parameter[3].valueAddress.line[2] = "line 3"
* parameter[3].valueAddress.line[3] = "line 4"
* parameter[3].valueAddress.city = "Victoria"
* parameter[3].valueAddress.state = "BC"
* parameter[3].valueAddress.country = "CA"
* parameter[3].valueAddress.postalCode = "V1V1V1"

* parameter[4].name = "gender"
* parameter[4].valueCode = #male

* parameter[5].name = "birthDate"
* parameter[5].valueDate = 1959-12-30

* parameter[6].name = "deceased-date"
* parameter[6].valueDateTime = 2005-05-05

* parameter[7].name = "name"
* parameter[7].valueHumanName.given = "Barney"
* parameter[7].valueHumanName.family = "Purple"
* parameter[7].valueHumanName.use = #official

* parameter[8].name = "telecom"
* parameter[8].valueContactPoint.system = #phone
* parameter[8].valueContactPoint.value = "1234567890"
* parameter[8].valueContactPoint.use = #home

* parameter[9].name = "identifiersOnly"
* parameter[9].valueBoolean = false

Instance: FindCandidates-MomsPHN
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation with mother's PHN"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[3].name = "mothersPHN"
* parameter[3].valueString = "9123123432"

Instance: FindCandidates-SSRI
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates operation with SSRI identifier"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[3].name = "address"
* parameter[3].valueAddress.type = #postal
* parameter[3].valueAddress.line[0] = "123 Any St"
* parameter[3].valueAddress.line[1] = "line 2"
* parameter[3].valueAddress.line[2] = "line 3"
* parameter[3].valueAddress.line[3] = "line 4"
* parameter[3].valueAddress.city = "Victoria"
* parameter[3].valueAddress.state = "BC"
* parameter[3].valueAddress.country = "CA"
* parameter[3].valueAddress.postalCode = "V1V1V1"

* parameter[4].name = "gender"
* parameter[4].valueCode = #male

* parameter[5].name = "birthDate"
* parameter[5].valueDate = 1959-12-30

* parameter[6].name = "deceased-date"
* parameter[6].valueDateTime = 2005-05-05

* parameter[7].name = "name"
* parameter[7].valueHumanName.given = "Barney"
* parameter[7].valueHumanName.family = "Purple"
* parameter[7].valueHumanName.use = #official

* parameter[8].name = "telecom"
* parameter[8].valueContactPoint.system = #phone
* parameter[8].valueContactPoint.value = "1234567890"
* parameter[8].valueContactPoint.use = #home

* parameter[9].name = "identifier"
* parameter[9].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-ssri"
* parameter[9].valueIdentifier.value = "24234"
* parameter[9].valueIdentifier.assigner.display = "VPP_CER"

Instance: GetDemographics
InstanceOf: BCMetadataParameters
Description: "Example of $GetDemographics operation"
* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "VPP"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier.value = "bob@me.com"
* parameter[enterer].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-userid"

* parameter[4].name = "identifier"
* parameter[4].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* parameter[4].valueIdentifier.value = "912345892"
* parameter[4].valueIdentifier.type.coding.code = #JHN
* parameter[4].valueIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* parameter[5].name = "history"
* parameter[5].valueBoolean = false

Instance: FindCandidates-ResponseMetadata
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[messageRequestId].name = "messageRequestId"
* parameter[messageRequestId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"


Instance: GetDemographics-ResponseMetadata
InstanceOf: BCMetadataParameters
Description: "Example of $FindCandidates response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[messageRequestId].name = "messageRequestId"
* parameter[messageRequestId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-org"

Instance: SearchOperationOutcome
InstanceOf: BCOperationOutcome
Description: "Example OperationOutcome for a Client Registry Search"
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The Find Candidates Patient name has been modified to filter out invalid characters."
//* issue.details.coding.system = "http://hl7.org/fhir/bc-hcim/bc-oo-codes"
* issue.details.coding.code = #BCHCIM.GD.1.0017
* issue[1].severity = #error
* issue[1].code = #business-rule
* issue[1].details.text = "The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ..."
//* issue.details.coding.system = "http://hl7.org/fhir/bc-hcim/bc-oo-codes"
* issue[1].details.coding.code = #BCHCIM.GD.1.0017


Instance: FindCandidatesResponse
InstanceOf: BCSearchResponseBundle
Description: "Example of FindCandidates response Bundle.  Patient0 has PHN, alternate, SRI and SSRI identifier examples."
* type = #searchset
* timestamp = "2011-09-13T16:11:43.000-07:00"
* total = 4
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e770dd20-7fe9-406f-a57c-52ed466f7a3b"
* link[0].relation = "self"
* link[0].url = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[parameters].resource = FindCandidates-ResponseMetadata
* entry[parameters].fullUrl = "61061501-9953-4fba-87fe-6ae30e79da33"

* entry[parametersRequest].resource = FindCandidates
* entry[parametersRequest].fullUrl = "urn:uuid:98028b44-882a-4c72-8c92-b87d916147e1"

* entry[operationOutcome].resource = SearchOperationOutcome
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

* entry[3].resource = Patient0Response
* entry[3].search.score = 31
//* entry[2].search.mode = #match
* entry[3].fullUrl = "urn:uuid:c789da11-0e78-4eb5-a9b2-d31d8249fd50"

* entry[4].resource = Patient1Response
* entry[4].search.score = -53
// crashes sushi * entry[3].search.mode = #match
* entry[4].fullUrl = "urn:uuid:90bf49dc-4590-4302-8e28-f02bb4deb353"

* entry[5].resource = Patient2Response
* entry[5].search.score = -56
// crashes sushi * entry[4].search.mode = #match
* entry[5].fullUrl = "urn:uuid:072f48b7-43c5-4bec-8798-026cc432adcf"

Instance: Patient0Response
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle with 4 different kinds of identifiers: SRI-PHN, SRI, SSRI and alternative."
// Patient business date
* extension[0].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-patient-business-dates-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = BCPatientAddress0Example
* address[1] = BCPatientAddress1Example
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
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #male
* birthDate = 1940-06-06
* deceasedBoolean = false
* extension[1].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-birth-date-business-dates-extension"
* extension[1].valuePeriod.start = "2020-10-17T03:29:17-08:00"
* extension[2].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-gender-business-dates-extension"
* extension[2].valuePeriod.start = "1973-05-18"

Instance: Patient1Response
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-patient-business-dates-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = BCPatientAddress0Example
* address[1] = BCPatientAddress1Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2505557841"
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "SARAH"
* name.given[1] = "LYNN"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#official
* gender = #female
* birthDate = 1973-05-18
* deceasedBoolean = true
* extension[1].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-birth-date-business-dates-extension"
* extension[1].valuePeriod.start = "2018-10-17T03:29:17-08:00"
* extension[2].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-death-date-business-dates-extension"
* extension[2].valuePeriod.start = "2020-10-17T03:29:17-08:00"
* extension[3].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-death-date-extension"
* extension[3].valueDateTime = "2021-11-17"
* extension[4].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-death-date-flag-business-dates-extension"
* extension[4].valuePeriod.start = "2021-11-17"
* extension[5].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-gender-business-dates-extension"
* extension[5].valuePeriod.start = "1973-05-18"

Instance: Patient2Response
InstanceOf: BCPatient
Description: "Example of Patient for query response Bundle"
* extension[0].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-patient-business-dates-extension"
* extension[0].valuePeriod.start = "2019-02-07T13:29:17-08:00"
* address[0] = BCPatientAddress0Example
* address[1] = BCPatientAddress1Example
* telecom.use = #home
* telecom.system = #phone
* telecom.value = "2504283447"
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9999999999"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "BAILEY"
* name.family = "PURPLE"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* birthDate = 1985-12-14
* extension[1].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-birth-date-business-dates-extension"
* extension[1].valuePeriod.start = "2019-10-17T03:29:17-08:00"
* extension[2].url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-gender-business-dates-extension"
* extension[2].valuePeriod.start = "1973-05-18"

Instance: GetDemographicsResponse
InstanceOf: BCSearchResponseBundle
Description: "Example of $GetDemographics operation response Bundle"
* type = #searchset
* timestamp = "2011-09-07T12:18:23.000-07:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3a12f0c-a332-4ec9-94b9-d8539a02df48"

* entry[parameters].resource = GetDemographics-ResponseMetadata
* entry[parameters].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"

* entry[parametersRequest].resource = GetDemographics
* entry[parametersRequest].fullUrl = "urn:uuid:753f756d-63b2-4086-86a4-d7768fd5374a"

* entry[operationOutcome].resource = SearchOperationOutcome
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"

* entry[3].resource = PatientDemographicsResponse
* entry[3].fullUrl = "urn:uuid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"

Instance: GetDemographicsINParameters
InstanceOf: Parameters
Description: "Example of $GetDemographics operation, IN parameters"
* parameter[0].name = "identifier"
* parameter[0].valueIdentifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* parameter[0].valueIdentifier.value = "9834902274"
* parameter[0].valueIdentifier.type.coding.code = #JHN
* parameter[0].valueIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

Instance: PatientDemographicsResponse
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
* identifier.system = "http://hl7.org/fhir/bc-hcim/bc-sri"
* identifier.value = "9983652763"
* identifier.type.coding.code = #JHN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.given = "JILLIAN"
* name.given[1] = "DAWN"
* name.given[2] = "THIRD NAME"
* name.family = "COOK-ADAMS"
* name.use = http://hl7.org/fhir/name-use#usual
* gender = #female
* birthDate = 1972-10-16

Instance: BCPatientAddress0Example
InstanceOf: BCClientRegistryAddress
Description: "Address example physical, validation status valid"
Usage: #inline
* type = #physical
* line = "123 FRONT ST"
* city = "VICTORIA"
* state = "BC"
* country = "CA"
* postalCode = "V6N2W2"
// address validation status
* extension.url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-address-validation-status-extension"
* extension.valueCode = #valid

Instance: BCPatientAddress1Example
InstanceOf: BCClientRegistryAddress
Description: "Address example postal, validation status invalid"
Usage: #inline
* type = #postal
* line = "432 Douglas St"
* city = "Victoria"
* state = "BC"
* country = "CA"
* postalCode = "V6N2R2"
// address validation status
* extension.url = "http://moh.fhir/bc-clientregistry/StructureDefinition/bc-address-validation-status-extension"
* extension.valueCode = #invalid

