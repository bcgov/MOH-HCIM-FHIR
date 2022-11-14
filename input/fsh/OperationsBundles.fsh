////////////////////////////////////
// GET DEMOGRAPHICS
////////////////////////////////////

Profile: GetDemographicsRequestBundle
Parent: Bundle
Id: bc-get-demographics-request-bundle
Description: "A Bundle that is used in the Get Demographics Operation request."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..2
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when sending the Client Registry a Find Candidates query."
* entry contains patient 1..1 MS and parameters 1..1 MS
* entry[parameters].resource only MetadataParametersIn
* entry[parameters] ^short = "Metadata in parameters."
* entry[patient].resource only PatientByExample
* entry[patient] ^short = "An example Patient with Identifier that the Client Registry will use to fufill the search request."

Profile: SearchResponseBundle
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
* entry contains patient 0..* MS and parameters 1..1 MS and operationOutcome 1..1 MS and relatedPerson 0..* MS
* entry[parameters].resource only MetadataParametersOut
* entry[parameters] ^short = "Metadata out parameters."
* entry[operationOutcome].resource only OperationOutcome
* entry[operationOutcome] ^short = "Messages and codes returned by HCIM."
* entry[patient].resource only ClientRegistryPatient
* entry[patient] ^short = "Matching Patients."
* entry[relatedPerson].resource only RelatedPerson
* entry[relatedPerson] ^short = "Resource for Mother's PHN."

Profile: SearchWithEligibilityResponseBundle
Parent: Bundle
Id: bc-search-withEligibility-response-bundle
Description: "A Bundle that is used in the Client Registry response to Get Demographics with Eligibility queries."
* type 1..1 MS
* type = #searchset (exactly)
* entry 2..4
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a search query."
* entry contains patient 0..1 MS and parameters 1..1 MS and operationOutcome 1..1 MS and coverage 0..1 MS
* entry[parameters].resource only MetadataParametersOut
* entry[parameters] ^short = "Metadata out parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[operationOutcome] ^short = "Messages and codes returned by HCIM."
* entry[patient].resource only ClientRegistryPatient
* entry[patient] ^short = "Matching Patient."
* entry[coverage].resource only Coverage

////////////////////////////////////
// FIND CANDIDATES
////////////////////////////////////

Profile: FindCandidatesRequestBundle
Parent: Bundle
Id: bc-find-candidates-request-bundle
Description: "A Bundle that is used in the Find Candidates Operation request."
* obeys invariant-fc-1
* type 1..1 MS
* type = #collection (exactly)
* entry 2..3
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when sending the Client Registry a Find Candidates query."
* entry contains patient 0..1 MS and parameters 1..1 MS and relatedPerson 0..1 MS
* entry[parameters].resource only MetadataParametersIn
* entry[parameters] ^short = "Metadata in parameters."
* entry[patient].resource only PatientByExample
* entry[patient] ^short = "An example Patient that the Client Registry will use to find matching Patients."
* entry[relatedPerson].resource only RelatedPerson
* entry[relatedPerson] ^short = "Resource for Mother's PHN."

////////////////////////////////////
// ADD
////////////////////////////////////

Profile: AddRequestBundle
Parent: Bundle
Id: bc-add-request-bundle
Description:  "A Bundle that is used in the Client Registry for Add Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..3
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a add request."
* entry contains patient 1..1 MS and parameters 1..1 MS and mothersPHN 0..1 MS
* entry[parameters].resource only MetadataParametersIn
* entry[parameters] ^short = "Metadata in parameters"
* entry[patient].resource only ClientRegistryPatient
* entry[patient] ^short = "Created Patient."
* entry[mothersPHN].resource only RelatedPerson
* entry[mothersPHN] ^short = "Mother's PHN in RelatedPerson identifier."

Profile: AddResponseBundle
Parent: Bundle
Id: bc-add-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Add Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..3
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a add request."
* entry contains patient 0..1 MS and parameters 1..1 MS and operationOutcome 1..1 MS
* entry[parameters].resource only MetadataParametersOut
* entry[parameters] ^short = "Metadata out parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[operationOutcome] ^short = "Messages and codes returned by HCIM."
* entry[patient].resource only ClientRegistryPatient
* entry[patient] ^short = "Created Patient."

////////////////////////////////////
// REVISE
////////////////////////////////////

Profile: ReviseRequestBundle
Parent: Bundle
Id: bc-revise-request-bundle
Description:  "A Bundle that is used in the Client Registry for Revise Patient requests.  This is also used by Patient Notitifications."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..2
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a add request."
* entry contains patient 1..1 MS and parameters 1..1 MS
* entry[parameters].resource only MetadataParametersIn
* entry[parameters] ^short = "Metadata in parameters"
* entry[patient].resource only ClientRegistryPatient
* entry[patient] ^short = "Patient resource with revised information."

Profile: ReviseResponseBundle
Parent: Bundle
Id: bc-revise-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Revise Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..3
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a revise request."
* entry contains patient 0..1 MS and parameters 1..1 MS and operationOutcome 1..1 MS
* entry[parameters].resource only MetadataParametersOut
* entry[parameters] ^short = "Metadata out parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[operationOutcome] ^short = "Messages and codes returned by HCIM."
* entry[patient].resource only ClientRegistryPatient
* entry[patient] ^short = "Revised Patient."

////////////////////////////////////
// UPDATE
////////////////////////////////////

Profile: PartialUpdateRequestBundle
Parent: Bundle
Id: bc-update-request-bundle
Description:  "A Bundle that is used in the Client Registry for Patient update requests."
* obeys invariant-update-1
* type 1..1 MS
* type = #collection (exactly)
* entry 2..2
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a add request."
* entry contains parameters 1..1 MS and patient 1..1 MS
* entry[parameters].resource only MetadataParametersIn
* entry[parameters] ^short = "Metadata in parameters"
* entry[patient].resource only PartialPatientUpdate
* entry[patient] ^short = "Updated Patient."



////////////////////////////////////
// MERGE
////////////////////////////////////

Profile: MergeRequestBundle
Parent: Bundle
Id: bc-merge-request-bundle
Description:  "A Bundle that is used in the Client Registry for Add Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..2
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a add request."
* entry contains patient 1..1 MS and parameters 1..1 MS
* entry[parameters].resource only MetadataParametersIn
* entry[parameters] ^short = "Metadata in parameters"
* entry[patient].resource only PatientMerge
* entry[patient] ^short = "Patient resource with merge information."

Profile: MergeResponseBundle
Parent: Bundle
Id: bc-merge-response-bundle
Description:  "A Bundle that is used in the Client Registry response to Merge Patient requests."
* type 1..1 MS
* type = #collection (exactly)
* entry 2..2
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..1
* entry.request 0..1 MS
* entry.response 0..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed when the Client Registry is responding to a merge request."
* entry contains parameters 1..1 MS and operationOutcome 1..1 MS
* entry[parameters].resource only MetadataParametersOut
* entry[parameters] ^short = "Metadata out parameters"
* entry[operationOutcome].resource only OperationOutcome
* entry[operationOutcome] ^short = "Messages and codes returned by HCIM."
