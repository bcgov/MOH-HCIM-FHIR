/* Instance: Parameters-GetDemographicsWithEligibility-Example
InstanceOf: MetadataParametersIn
Description: "Example of $GetDemographics.withEligibility operation"
* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

// * parameter[messageDateTime].name = "messageDateTime"
// * parameter[messageDateTime].valueDateTime = "2015-02-07T13:28:17-08:00"

* parameter[2].name = "identifier"
* parameter[2].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-sri"
* parameter[2].valueIdentifier.value = "912345892"
* parameter[2].valueIdentifier.type.coding.code = #JHN
* parameter[2].valueIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" */


/**Instance: Parameters-GetDemographicsWithEligibility-Response-Example
InstanceOf: MetadataParametersOut
Description: "Example of $GetDemographics.withEligibility response Metadata parameters"

* parameter[messageId].name = "messageId"
* parameter[messageId].valueString = "c087e71e-3e7e-4c22-a3ce-61523f600615"

// * parameter[messageDateTime].name = "messageDateTime"
// * parameter[messageDateTime].valueDateTime = "2015-02-07T13:29:17-08:00"

* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString = "98028b44-882a-4c72-8c92-b87d916147e1"

* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier.value = "MOH_CRS"
* parameter[sender].valueIdentifier.system = "http://hlth.gov.bc.ca/fhir/client/bc-org"

Instance: Bundle-GetDemographicsWithEligibility-Response-Example
InstanceOf: SearchResponseBundle
Description: "Example of $GetDemographics.withEligibility operation response Bundle"
* type = #searchset
* timestamp = "2011-09-07T12:18:23.000-07:00"
* link.relation = "self"
* link.url = "http://your.search.url"

* entry[parameters].resource = Parameters-GetDemographicsWithEligibility-Response-Example
* entry[parameters].fullUrl = "urn:uuid:61061501-9953-4fba-87fe-6ae30e79da33"
* entry[parameters].search.mode = #include

* entry[operationOutcome].resource = OperationOutcome-Search-Example
* entry[operationOutcome].fullUrl = "urn:uuid:2d028b44-882a-4c72-8c92-b87d916147e1"
* entry[operationOutcome].search.mode = #outcome

* entry[2].resource = Patient-GetDemographics-Example
* entry[2].fullUrl = "urn:uuid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"
* entry[2].search.mode = #include

* entry[3].resource = Coverage-Active-Example
* entry[3].fullUrl = "urn:uuid:0e65065f-76a8-4578-a286-eb9c1ac3dbbc"
* entry[3].search.mode = #include

Instance: Coverage-Active-Example
InstanceOf: Coverage
Description: "Example of Get Eligibility response, the patient is eligible."
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding.code = #MANDPOL
* period.start = "2021-01-17"
* beneficiary.reference = "urn:uuid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"
* payor.display = "Health Insurance BC"

Instance: Coverage-InActive-Example
InstanceOf: Coverage
Description: "Example of Get Eligibility response, the patient is not eligible."
* status = #cancelled
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding.code = #MANDPOL
* period.start = "2021-01-17"
* beneficiary.reference = "urn:uuid:4e795f80-6032-42e3-bbfd-24e27f0c3e7c"
* payor.display = "Health Insurance BC"*/

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

Instance: OperationOutcome-Search-Example
InstanceOf: OperationOutcome
Description: "Example OperationOutcome for a Client Registry Search"
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The identifier you used in the query has been merged. The surviving identifier was returned."
* issue.details = $bc-oo-codes#BCHIM.GD.0.0015

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