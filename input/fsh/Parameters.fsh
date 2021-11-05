Profile: BCMetadataParameters
Parent: Parameters
Id: bc-metadata-parameters
Description: "Parameters profile for BC meta data"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Metadata."
* parameter contains messageId 1..1 MS and messageDateTime 1..1 MS and messageRequestId 0..1 MS and sender 1..1 MS and enterer 0..1 MS
* parameter[messageId].name MS
* parameter[messageId].name = "messageId"
* parameter[messageId].value[x] only string
* parameter[messageId].valueString 1..1 MS
* parameter[messageId].resource 0..0
* parameter[messageId].part 0..0
* parameter[messageDateTime].name MS
* parameter[messageDateTime].name = "messageDateTime"
* parameter[messageDateTime].valueDateTime 1..1 MS
* parameter[messageDateTime].value[x] only dateTime
* parameter[messageDateTime].resource 0..0
* parameter[messageDateTime].part 0..0
* parameter[messageRequestId].name MS
* parameter[messageRequestId].name = "messageRequestId"
* parameter[messageRequestId].valueString 0..1 MS
* parameter[messageRequestId].value[x] only string
* parameter[messageRequestId].resource 0..0
* parameter[messageRequestId].part 0..0
* parameter[sender].name MS
* parameter[sender].name = "sender"
* parameter[sender].valueIdentifier 1..1 MS
* parameter[sender].value[x] only Identifier
* parameter[sender].resource 0..0
* parameter[sender].part 0..0
* parameter[enterer].name MS
* parameter[enterer].name = "enterer"
* parameter[enterer].valueIdentifier 0..1 MS
* parameter[enterer].value[x] only Identifier
* parameter[enterer].resource 0..0
* parameter[enterer].part 0..0

Profile: BCPatientBusinessParameters
Parent: BCMetadataParameters
Id: bc-patient-business-parameters
Description: "Parameters extended from BCMetadataParameters for a Patient resource"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Patient Business Parameters."
* parameter contains patient 1..1 MS
* parameter[patient].name MS
* parameter[patient].name = "patient"
* parameter[patient].value[x] 0..0
* parameter[patient].resource 1..1 MS
* parameter[patient].resource only BCPatient

