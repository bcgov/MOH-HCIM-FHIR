Profile: BCSearchResponseBundle
Parent: Bundle
Id: bc-search-response-bundle
Description: "A Bundle that is used in the Client Registry response to Find Candidates and Get Demographics queries."
* type 1..1 MS
* type = #searchset (exactly)
* entry 2..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a search query."
* entry contains patient 0..* MS and parameters 1..1 MS and operationOutcome 0..1 MS
* entry[parameters].resource only BCMetadataParameters
* entry[parameters] ^short = "Metadata parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[patient].resource only BCPatient
* entry[patient] ^short = "Natching Patients."

Profile: BCSearchWithEligibilityResponseBundle
Parent: Bundle
Id: bc-search-withEligibility-response-bundle
Description: "A Bundle that is used in the Client Registry response to Get Demographics with Eligibility queries."
* type 1..1 MS
* type = #searchset (exactly)
* entry 3..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a search query."
* entry contains patient 0..* MS and parameters 1..1 MS and operationOutcome 0..1 MS and coverage 1..1 MS
* entry[parameters].resource only BCMetadataParameters
* entry[parameters] ^short = "Metadata parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[patient].resource only BCPatient
* entry[patient] ^short = "Matching Patient."
* entry[coverage].resource only Coverage

Profile: BCReviseResponseBundle
Parent: Bundle
Id: bc-revise-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Revise Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 3..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a revise request."
* entry contains patient 0..1 MS and parameters 1..1 MS and operationOutcome 0..1 MS
* entry[parameters].resource only BCMetadataParameters
* entry[parameters] ^short = "Metadata parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[patient].resource only BCPatient
* entry[patient] ^short = "Updated Patient."

Profile: BCAddResponseBundle
Parent: Bundle
Id: bc-add-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Add Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 3..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a add request."
* entry contains patient 0..1 MS and parameters 1..1 MS and operationOutcome 0..1 MS
* entry[parameters].resource only BCMetadataParameters
* entry[parameters] ^short = "Metadata parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[patient].resource only BCPatient
* entry[patient] ^short = "Created Patient."

Profile: BCMergeResponseBundle
Parent: Bundle
Id: bc-merge-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Merge Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a merge request."
* entry contains parameters 1..1 MS and operationOutcome 0..1 MS
* entry[parameters].resource only BCMetadataParameters
* entry[parameters] ^short = "Metadata parameters"
* entry[operationOutcome].resource only OperationOutcome

Profile: BCPartialReviseResponseBundle
Parent: Bundle
Id: bc-partial-revise-response-bundle
Description: "A Bundle that is used in the Client Registry response to Partial Revise Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 3..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a partial revise request."
* entry contains patient 0..1 MS and parameters 1..1 MS and operationOutcome 0..1 MS
* entry[parameters].resource only BCMetadataParameters
* entry[parameters] ^short = "Metadata parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[patient].resource only BCPatient
* entry[patient] ^short = "Updated Patient."
