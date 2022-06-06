Profile: MetadataParametersIn
Parent: Parameters
Id: bc-metadata-parameters-in
Description: "Parameters profile for BC meta data - incoming messages."
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Metadata."
* parameter contains messageId 1..1 MS and messageDateTime 1..1 MS
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

Profile: MetadataParametersOut
Parent: MetadataParametersIn
Id: bc-metadata-parameters-out
Description: "Parameters profile for BC meta data - outbound messages."
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Metadata."
* parameter contains requestMessageId 0..1 MS and sender 1..1 MS and enterer 0..1 MS and requestParameters 0..1 MS
* parameter[requestMessageId].name MS
* parameter[requestMessageId].name = "requestMessageId"
* parameter[requestMessageId].valueString 0..1 MS
* parameter[requestMessageId].value[x] only string
* parameter[requestMessageId].resource 0..0
* parameter[requestMessageId].part 0..0
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
* parameter[requestParameters].name MS
* parameter[requestParameters].name = "requestParameters"
* parameter[requestParameters].resource 1..1 MS
* parameter[requestParameters].resource only Parameters
* parameter[requestParameters].value[x] 0..0
* parameter[requestParameters].part 0..0

