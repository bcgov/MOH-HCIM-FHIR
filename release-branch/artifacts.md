# Artifacts Summary - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Capability Statement 

The Capability Statement for Client Registry

| | |
| :--- | :--- |
| [BC HCIM Server Capability Statement](CapabilityStatement-bc-hcim-capability-statement-server.md) | This capability statement describes the use cases that are supported by the BC FHIR implementation of the Client Registry when it is acting as a server. |
| [Notifications Distributor (Client) — Operations Only](CapabilityStatement-bc-hcim-capability-statement-client.md) | PCR as a client posts notifications/distributions via a patient-level operation. |

### Operation Definitions 

The defined Operations

| | |
| :--- | :--- |
| [AddPatient](OperationDefinition-bc-patient-add.md) | This operation is used for newborns or to 'force create' a patient. |
| [Find Candidates By Example](OperationDefinition-bc-patient-find-candidates.md) | This operation is used to query for a patient. The response can contain 0 or more Patients. |
| [GetDemographics](OperationDefinition-bc-patient-get-demographics.md) | This operation is used to query for a patient. The response can contain 0 or 1 Patient. |
| [Merge Patient](OperationDefinition-bc-patient-merge.md) | This operation is used to merge patients. |
| [Revise Patient](OperationDefinition-bc-patient-revise.md) | This operation is used to revise a patient's demographics. |

### Patient Profile 

The BC Patient profile

| | |
| :--- | :--- |
| [ClientRegistryPatient](StructureDefinition-bc-patient.md) | General constraints on the Patient resource for use in the BC Client Registry project. |
| [PatientMerge](StructureDefinition-bc-merge-patient.md) | General constraints on the Patient resource for use in the BC Client Registry project Merge Operation. |

### Supporting Profiles - Bundles 

Bundles that support Patient and Client Registry Operations - Request and Response

| | |
| :--- | :--- |
| [AddRequestBundle](StructureDefinition-bc-add-request-bundle.md) | A Bundle that is used in the Client Registry for Add Patient requests. |
| [AddResponseBundle](StructureDefinition-bc-add-response-bundle.md) | A Bundle that is used in the Client Registry response to Add Patient requests. |
| [AsyncAckBundle](StructureDefinition-bc-async-ack-response-bundle.md) | A Bundle that is used for the ACK response to an aynchronous operation request. |
| [FindCandidatesRequestBundle](StructureDefinition-bc-find-candidates-request-bundle.md) | A Bundle that is used in the Find Candidates Operation request. |
| [GetDemographicsRequestBundle](StructureDefinition-bc-get-demographics-request-bundle.md) | A Bundle that is used in the Get Demographics Operation request. |
| [ReviseRequestBundle](StructureDefinition-bc-revise-request-bundle.md) | A Bundle that is used in the Client Registry for Revise Patient requests. This is also used by Patient Notitifications. |
| [ReviseResponseBundle](StructureDefinition-bc-revise-response-bundle.md) | A Bundle that is used in the Client Registry response to Revise Patient requests. |
| [SearchResponseBundle](StructureDefinition-bc-search-response-bundle.md) | A Bundle that is used in the Client Registry response to Find Candidates and Get Demographics queries. |

### Supporting Profiles 

Artifacts associated with resources that support Patient and Client Registry Operations

| | |
| :--- | :--- |
| [MetadataParametersAsync](StructureDefinition-bc-metadata-parameter-async-response.md) | Parameters profile for BC meta data - async messages. |
| [MetadataParametersIn](StructureDefinition-bc-metadata-parameters-in.md) | Parameters profile for BC meta data - incoming messages. This profile is also intended to force the inclusion of specific parameters for the related Parameters. |
| [MetadataParametersOut](StructureDefinition-bc-metadata-parameters-out.md) | Parameters profile for BC meta data - outbound messages. |

### Request Examples 

A set of operation request examples

| | |
| :--- | :--- |
| [AddNewbornByMumsPHN-Request](Bundle-AddNewbornByMumsPHN-Request.md) | Example of $Add request with Mother's PHN. |
| [AddPatient-Request](Bundle-AddPatient-Request.md) | Example of $Add Patient request with all data fields populated. |
| [FindCandidates-Request](Bundle-FindCandidates-Request.md) | Example of $FindCandidates request |
| [FindNewbornByMumsPHN-Request](Bundle-FindNewbornByMumsPHN-Request.md) | Example of $FindCandidates request with Mother's PHN. |
| [GetDemographics-Request](Bundle-GetDemographics-Request.md) | Example of $GetDemographics request |
| [GetDemographics-Request-By-SSRI](Bundle-GetDemographics-Request-By-SSRI.md) | Example of $GetDemographics request by SSRI. |
| [GetDemographics-withHistory-Request](Bundle-GetDemographics-withHistory-Request.md) | Example of $GetDemographics request with History |
| [Merge-Min-Request](Parameters-Merge-Min-Request.md) | Example of $Merge request with minimum data. |
| [Merge-Request](Parameters-Merge-Request.md) | Example of $Merge request. |
| [Revise-Request-No-SRI](Bundle-Revise-Request-No-SRI.md) | Example of $Revise request with no SRI. |
| [Revise-withMaxData-Request](Bundle-Revise-withMaxData-Request.md) | Example of $Revise request with all data fields populated. |

### Response Examples 

A set of operation response examples

| | |
| :--- | :--- |
| [AddPatient-Response](Bundle-AddPatient-Response.md) | Example of a $Add Patient Response message. |
| [FindCandidates-Response](Bundle-FindCandidates-Response.md) | Example of $FindCandidates response |
| [FindNewbornByMumsPHN-Response](Bundle-FindNewbornByMumsPHN-Response.md) | Example of $FindCandidates response with Mother's PHN. |
| [GetDemographics-Response](Bundle-GetDemographics-Response.md) | Example of $GetDemographics response |
| [GetDemographics-Response-Masked](Bundle-GetDemographics-Response-Masked.md) | Example of $GetDemographics masked response. |
| [GetDemographics-withHistory-Response](Bundle-GetDemographics-withHistory-Response.md) | Example of $GetDemographics response with History |
| [GetDemographics-withPHNInfo-Response](Bundle-GetDemographics-withPHNInfo-Response.md) | Example of $GetDemographics response with PHN info. Only organization users with specific access will receive this data, to be used by the admin Webapp |
| [Merge-Response](Parameters-Merge-Response.md) | Example of $Merge response. |
| [Revise-Async-ACK](Bundle-Revise-Async-ACK.md) | Example of an Asynchronous $Revise ACK message. |
| [Revise-Response](Bundle-Revise-Response.md) | Example of a $Revise Patient Response message. |

### RESTful Examples 

A set of RESTful request examples

| | |
| :--- | :--- |
| [Force-Create-Request](Patient-Force-Create-Request.md) | Example of RESTful force create request. |
| [Newborn-Request](Patient-Newborn-Request.md) | Example of RESTful newborn request. |
| [Revise-Request](Patient-Revise-Request.md) | Example of RESTful $Revise request. |
| [Revise-Request-No-SRI-RESTful](Patient-Revise-Request-No-SRI-RESTful.md) | Example of RESTful $Revise request with no SRI. |

### Distribution Examples 

A set of Distribution examples

| |
| :--- |
| [COMP-Distribution-Notification](Bundle-COMP-Distribution-Notification.md) |
| [NEW-Distribution-Notification](Bundle-NEW-Distribution-Notification.md) |
| [NEWBORN-Distribution-Notification-Masked-MumPHN](Bundle-NEWBORN-Distribution-Notification-Masked-MumPHN.md) |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Patient Notification](OperationDefinition-bc-patient-notification.md) | This operation is used notify a user that a patient's record has changed. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [HCIMPatientChangeSubscription](StructureDefinition-HCIMPatientChangeSubscription.md) | Profile on subscription for HCIM Patient Changes |
| [MergeRequestBundle](StructureDefinition-bc-merge-request-bundle.md) | A Bundle that is used in the Client Registry for Add Patient requests. |
| [MergeResponseBundle](StructureDefinition-bc-merge-response-bundle.md) | A Bundle that is used in the Client Registry response to Merge Patient requests. |
| [MetadataParametersSubscription](StructureDefinition-bc-metadata-parameters-subscription.md) | Parameters profile for BC meta data when a subscription response is sent. |
| [PatientByExample](StructureDefinition-bc-patient-by-example.md) | Will get removed. General constraints on the Patient resource for use in the BC Client Registry project for queries. PatientByExample is a resource of the Client Registry FHIR implementation use only by Get Demographics and Find Candidates |
| [SubscriptionNotificationBundle](StructureDefinition-bc-subscription-notification-bundle.md) | A Bundle that is used in the Client Registry when sending subscription notifications. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BC Address Validation Status Code](StructureDefinition-bc-validation-status-extension.md) | A code that represents the validation status of the address |
| [BC Birth Date History](StructureDefinition-bc-birthdate-history-extension.md) | This extension allows the Client Registry to include historical birth dates in a single Patient resource. |
| [BC Business Dates](StructureDefinition-bc-business-period-extension.md) | The effective dates for the parent element. |
| [BC Death Date History](StructureDefinition-bc-death-date-history-extension.md) | This extension allows the Client Registry to include historical death dates and flags in a single Patient resource. |
| [BC Death Verified Flag](StructureDefinition-bc-death-verified-flag-extension.md) | The Patients death is verified and as recorded in the Client Registry as a flag. This also includes death verified flag history as required. |
| [BC Death Verified Flag History](StructureDefinition-bc-death-verified-flag-history-extension.md) | This extension allows the Client Registry to include historical death flags in a single Patient resource. |
| [BC Gender History](StructureDefinition-bc-gender-history-extension.md) | This extension allows the Client Registry to include historical gender codes in a single Patient resource. |
| [BC Identifier Status](StructureDefinition-bc-identifier-status-extension.md) | Identifier status. |
| [BC Merge Status Code](StructureDefinition-bc-merge-status-extension.md) | A code that represents the Merge status of the Patient. |
| [BC Multiple Birth History](StructureDefinition-bc-multiplebirth-history-extension.md) | This extension allows the Client Registry to include historical multiple birth values in a single Patient resource. |
| [BC SourceID and UserID](StructureDefinition-bc-sourceId-extension.md) | Identifiers for the source and user that modified the specific element that this extension is on. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BC Address Validation Value Set](ValueSet-bc-address-validation-value-set.md) | BC Address Validation value set used to describe the validation status of an address |
| [BC Client Registry Patient Change Notification Events Value Set](ValueSet-bc-client-registry-patient-change-notification-events-value-set.md) | Codes used to indicate that type of patient changes that a subscriber is interested in receiving. |
| [BC Contact Point System Value Set](ValueSet-bc-contact-point-system-value-set.md) | BC Contact Point System value set, sliced to meet BC constraints. |
| [BC Contact Point Use Value Set](ValueSet-bc-contact-point-use-value-set.md) | BC Contact Point Use value set, sliced to meet BC constraints. |
| [BC Identifier Status Value Set](ValueSet-bc-identifier-status-value-set.md) | BC Identifier Status value set used to describe the status of an identifier. |
| [BC Identifier Use Value Set](ValueSet-bc-identifier-use-value-set.md) | BC Identifier Use value set, sliced to meet BC constraints. |
| [BC Merge Status Value Set](ValueSet-bc-merge-status-value-set.md) | BC Merge Status value set used to describe the merge status of a Patient. |
| [BC Name Use value set.](ValueSet-bc-name-use-value-set.md) | BC Name Use value set, sliced to meet BC constraints. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BC Client Registry Address Validation Status Code](CodeSystem-bc-client-registry-address-validation-code-system.md) | Codes used to define the address validation status. |
| [BC Client Registry Operation Outcome details code system](CodeSystem-bc-operation-outcome-details-code-system.md) | BC Client Registry Operation Outcome details code system |
| [BC Client Registry Patient Change Notification Events Code System](CodeSystem-bc-client-registry-patient-change-notification-events.md) | Codes used to indicate that type of patient changes that a subscriber is interested in receiving. |
| [BC Client Registry merge status.](CodeSystem-bc-client-registry-merge-status-code-system.md) | Codes used to describe the merge status. |
| [BC Client registry identifier status code system](CodeSystem-bc-identifier-status-code-system.md) | BC Client registry identifier status code system. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [OperationOutcome-Example](OperationOutcome-OperationOutcome-Example.md) | Example OperationOutcome for a Client Registry Add, Revise or Merge. |
| [OperationOutcome-Search-Example](OperationOutcome-OperationOutcome-Search-Example.md) | Example OperationOutcome for a Client Registry Search |
| [Patient-GetDemographics-Example](Patient-Patient-GetDemographics-Example.md) | Example of Patient for $GetDemographics operation response |
| [SampleCompositeSubscriptionRequest](Subscription-SampleCompositeSubscriptionRequest.md) | Sample subscription request for Composite View events |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [HCIM Patient Change Distributions Topic](SubscriptionTopic-HCIMPatientChangeDistributionTopic.md) | This is the subscription topic used for subscribing to different change distributions. |

