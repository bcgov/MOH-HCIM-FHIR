Profile: MetadataParametersIn
Parent: Parameters
Id: bc-metadata-parameters-in
Description: "Parameters profile for BC meta data - incoming messages. This profile is also intended to force the inclusion of specific parameters for the related Parameters."
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Metadata."
* parameter contains messageId 1..1 MS and identifiersOnly 0..1 MS and history 0..1 MS
* parameter[messageId].name MS
* parameter[messageId].name = "messageId"
* parameter[messageId].value[x] only string
* parameter[messageId].valueString 1..1 MS
* parameter[messageId].resource 0..0
* parameter[messageId].part 0..0
// * parameter[messageDateTime].name MS
// * parameter[messageDateTime].name = "messageDateTime"
// * parameter[messageDateTime].valueDateTime 1..1 MS
// * parameter[messageDateTime].value[x] only dateTime
// * parameter[messageDateTime].resource 0..0
// * parameter[messageDateTime].part 0..0
// * parameter[messageDateTime] ^short = "The messageDateTime is deprecated. To be removed in future releases."
* parameter[identifiersOnly].name MS
* parameter[identifiersOnly].name = "identifiersOnly"
* parameter[identifiersOnly].value[x] only boolean
* parameter[identifiersOnly].resource 0..0
* parameter[identifiersOnly].part 0..0
* parameter[history].name MS
* parameter[history].name = "history"
* parameter[history].value[x] only boolean
* parameter[history].resource 0..0
* parameter[history].part 0..0


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
* parameter[requestMessageId] ^short = "The messageID coming from the request"
//* parameter[requestMessageId].description = "messageId from the Request"
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

Profile: MetadataParametersAsync
Parent: MetadataParametersIn
Id: bc-metadata-parameter-async-response
Description: "Parameters profile for BC meta data - async messages."
* ^status = #draft
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
* parameter[requestMessageId] ^short = "The messageID coming from the request"
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

Profile: MetadataParametersSubscription
Parent: Parameters
Id: bc-metadata-parameters-subscription
Description: "Parameters profile for BC meta data when a subscription response is sent."
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Subscription Metadata."
* parameter contains messageId 1..1 MS and eventType 1..1 MS
* parameter[messageId].name MS
* parameter[messageId].name = "messageId"
* parameter[messageId].value[x] only string
* parameter[messageId].valueString 1..1 MS
* parameter[messageId].resource 0..0
* parameter[messageId].part 0..0
// * parameter[messageDateTime].name MS
// * parameter[messageDateTime].name = "messageDateTime"
// * parameter[messageDateTime].valueDateTime 1..1 MS
// * parameter[messageDateTime].value[x] only dateTime
// * parameter[messageDateTime].resource 0..0
// * parameter[messageDateTime].part 0..0
* parameter[eventType]
  * name MS
  * name = "eventType"
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1 MS
  * valueCodeableConcept from PatientChangeNotificationEventsValueSet
  * resource 0..0
  * part 0..0
  


