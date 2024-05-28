

The FHIR artifacts have been created according to the current understood expectations. Priority to the most desired services, as indicated by Client Registry stakeholders, will be implemented first. It still needs to undergo review and testing. Over the next year, the following needs to be completed before this guide will be ready for implementation:

* Testing of the guides operations and profiles to ensure proper coverage
* Publication to BC's FHIR Portal

Although this guide is complete the implementation of the new FHIR Operations will be done in stages.  Priority to the most desired services, as indicated by Client Registry stakeholders, will be implemented first.  Currently the search services are highest priority and will be completed first.

### Release 4.0 - 1 - HCIM release 7.6

This section describes everything that is available in this release. Currently the search services are highest priority and will be completed first.

To access this release through messaging, in the HTTP Accept header, update the versions to:
<b> fhirVersion=4.0;BCFhirVersion=1 </b>

This release includes the following Operations and restful queries

Operation |
:--- |
[FindCandidate](OperationDefinition-bc-patient-find-candidates.html) |
[GetDemographics](OperationDefinition-bc-patient-get-demographics.html) |
{:.grid}

Restful |
:--- |
[Get Patient by ID](StructureDefinition-bc-patient.html) |
{:.grid}

### Future

#### HCIM release 7.7 (Synchronous)

This release may include the following Operations

Operation |
:--- |
[Add](OperationDefinition-bc-patient-add.html) |
[MergePatient](OperationDefinition-bc-patient-merge.html) |
[RevisePatient](OperationDefinition-bc-patient-revise.html) |
{:.grid}

#### HCIM release 7.8 (Asynchronous)

This release might include an asynchronous way to perform the Add, Merge and Update Operations

See following Supporting Profiles

Supporting Profile |
:--- |
[Bundle](StructureDefinition-bc-async-ack-response-bundle.html) |
[Parameters](StructureDefinition-bc-metadata-parameter-async-response.html) |
{:.grid}

#### HCIM release 8.0

This release might include the following Operations and supporting profiles

Operation |
:--- |
[Distribution](OperationDefinition-bc-patient-find-candidates.html) |
[Subscription Bundle](StructureDefinition-bc-subscription-notification-bundle.html) |
{:.grid}







