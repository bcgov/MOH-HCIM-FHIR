# Future Plans - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Future Plans**

## Future Plans

The FHIR artifacts have been created according to the current understood expectations. Priority to the most desired services, as indicated by Client Registry stakeholders, will be implemented first. It still needs to undergo review and testing. Over the next year, the following needs to be completed before this guide will be ready for implementation:

* Testing of the guides operations and profiles to ensure proper coverage
* Publication to BC's FHIR Portal

Although this guide is complete the implementation of the new FHIR Operations will be done in stages. Priority to the most desired services, as indicated by Client Registry stakeholders, will be implemented first. Currently the search services are highest priority and will be completed first.

### Current and Past

#### Current - HCIM Release 7.7.2 - FHIR 4.0-1

This release includes the following Operations

| |
| :--- |
| [Add](OperationDefinition-bc-patient-add.md) |
| [MergePatient](OperationDefinition-bc-patient-merge.md) |
| [RevisePatient](OperationDefinition-bc-patient-revise.md) |

| |
| :--- |
| [Get](restful.md#restful-get) |
| [Find](restful.md#restful-find) |
| [Revise Person](restful.md#restful-revise-person) |

#### HCIM release 7.8 (Asynchronous)

This release might include an asynchronous way to perform the Add, Merge and Update Operations

See following Supporting Profiles

| |
| :--- |
| [Bundle](StructureDefinition-bc-async-ack-response-bundle.md) |
| [Parameters](StructureDefinition-bc-metadata-parameter-async-response.md) |

#### Past - HCIM release 7.6 - FHIR 4.0-1

This section describes everything that is available in this release. Currently the search services are highest priority and will be completed first.

To access this release through messaging, in the HTTP Accept header, update the versions to: **fhirVersion=4.0;BCFhirVersion=1**

This release includes the following Operations and restful queries

| |
| :--- |
| [FindCandidate](OperationDefinition-bc-patient-find-candidates.md) |
| [GetDemographics](OperationDefinition-bc-patient-get-demographics.md) |

| |
| :--- |
| [Get Patient by ID](StructureDefinition-bc-patient.md) |

### Future

#### HCIM release 8.0

This release might include the following Operations and supporting profiles
This will be released in a phased approach

| |
| :--- |
| [Distribution](CodeSystem-bc-client-registry-patient-change-notification-events.md) |
| [Subscription Bundle](StructureDefinition-bc-subscription-notification-bundle.md) |

