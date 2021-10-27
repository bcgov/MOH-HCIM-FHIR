Profile: BCMetadataParameters
Parent: Parameters
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Metadata."
* parameter contains MessageID 1..1 MS and MessageDate 1..1 MS and MessageRequestID 0..1 MS
* parameter[MessageID].name MS
* parameter[MessageID].name = "MessageID"
* parameter[MessageID].value[x] 1..1 MS
* parameter[MessageID].value[x] only string
* parameter[MessageID].resource 0..0
* parameter[MessageID].part 0..0
* parameter[MessageDate].name MS
* parameter[MessageDate].name = "MessageDate"
* parameter[MessageDate].value[x] 1..1 MS
* parameter[MessageDate].value[x] only date
* parameter[MessageDate].resource 0..0
* parameter[MessageDate].part 0..0
* parameter[MessageRequestID].name MS
* parameter[MessageRequestID].name = "MessageRequestID"
* parameter[MessageRequestID].value[x] 0..1 MS
* parameter[MessageRequestID].value[x] only string
* parameter[MessageRequestID].resource 0..0
* parameter[MessageRequestID].part 0..0

Profile: BCPatientBusinessParameters
Parent: BCMetadataParameters
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "The specific parameters to specify BC Patient Business Parameters."
* parameter contains Patient 1..1 MS
* parameter[Patient].name MS
* parameter[Patient].name = "Patient"
* parameter[Patient].value[x] 0..0
* parameter[Patient].resource 1..1 MS
* parameter[Patient].resource only BCPatient

