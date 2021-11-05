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
* entry contains patient 0..* MS and parameters 1..1 MS and parametersRequest 1..1 MS and operationOutcome 1..1 MS
* entry[parametersRequest].resource only BCMetadataParameters
* entry[parameters].resource only BCMetadataParameters
* entry[patient].resource only BCPatient
* entry[operationOutcome].resource only OperationOutcome

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
* entry contains patient 1..1 MS and parameters 1..1 MS and parametersRequest 1..1 MS and operationOutcome 1..1 MS
* entry[parametersRequest].resource only BCMetadataParameters
* entry[patient].resource only BCPatient
* entry[parameters].resource only BCMetadataParameters
* entry[operationOutcome].resource only OperationOutcome
