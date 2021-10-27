Profile: BCSearchResponseBundle
Parent: Bundle
Id: bc-search-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Find Candidates and Get Demographics queries."
* type 1..1 MS
* type = #collection (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 1..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a search query."
* entry contains Patient 0..* MS and Parameters 1..1 MS and OperationOutcome 1..1 MS
* entry[Patient].resource only BCPatient
* entry[Parameters].resource only BCMetadataParameters
* entry[OperationOutcome].resource only OperationOutcome

Profile: BCReviseAndMergeResponseBundle
Parent: Bundle
Id: bc-revise-and-merge-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Revise and Merge Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 1..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a revise or merge request."
* entry contains Patient 1..1 MS and Parameters 1..1 MS and OperationOutcome 1..1 MS
* entry[Patient].resource only BCPatient
* entry[Parameters].resource only BCMetadataParameters
* entry[OperationOutcome].resource only OperationOutcome
