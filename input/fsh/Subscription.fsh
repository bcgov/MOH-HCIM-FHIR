CodeSystem: PatientChangeNotificationEvents
Id: bc-client-registry-patient-change-notification-events
Title: "BC Client Registry Patient Change Notification Events Code System"
Description: """
Codes used to indicate that type of patient changes that a subscriber is interested in receiving.

- *Non-source* = you don't have to have a record in the set/entity.
- *Source* = you have a record in the set/entity.
"""
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events"
* ^caseSensitive = true
* ^experimental = false
* #COMP "Composite View" "The Composite View distribution serves different business purposes depending on whether or not the subscriber is a source system. For a source system, Composite View distributions inform a subscribing system that its records are out-of-sync with the composite view. For a non-source system, Composite View distributions inform a subscriber when a data attribute has been modified on a specific source."
* #DEATH "Death" "A Death Distributions notifications inform subscribers of both confirmed and unconfirmed deaths. This occurs when just the Date of Death is present, or both the Date of Death and Deceased indicator are present in the Composite View. There are some behavior differences depending on whether or not the subscriber is a source system. For a source system, Death distributions inform a subscriber that they have a record that is out-of-sync with the Date of Death, or the Deceased indicator is added to the Composite View. For a non-source system, Death distributions inform a subscribing system that there is a Date of Death, or the Deceased indicator is added."
//* #EID "EID" "EID distributions work for subscribers that are source systems and informs them when one of their source records has changed entity sets and/or is out-of-sync with the Composite View."
* #NEW "New" "The NEW distribution is a non-source distribution that informs subscribers of all new records. Any source can trigger a NEW distribution, and subscribers can limit the sources they subscribe to. For instnce, if a subscriber wants to be notified of new PHNs, they subscribe to the MOH_CRS source."
* #NEWBORN "Newborn" "A Newborn distribution is a non-source distribution that informs subscribers that a newborn record has been created and has been assigned a PHN. Typically, subscribers would limit their source subscription to MOH_CRS for this distribution."
* #NEWBORN_GENDER "Newborn Gender" "The Newborn Gender distribution is a non-source distribution and informs subscribers when the gender on a newborn record changes from unknown or undifferentiated to Male or Female. This distribution is used to ensure that pre-registered newborns (where the gender is frequently unknown) are registered for MSP benefits. MSP does not allow the registration of newborns with an unknown gender value."
* #PHN "PHN" "PHN distributions only work for subscribers that are source systems. This distribution informs source systems that their purported PHN is out-of-sync with the PHN in the Composite View. The purported PHN is the PHN sent on the last update by the source system, while the PHN in the Composite View is the MOH_CRS source PHN."
* #PHNJOIN "PHN Join" "A PHNJOIN distribution works for subscribers that are source and non-source systems and informs them that their record has joined an entity with a PHN, or a PHN has joined its entity. For source systems, PHNJOIN distribution informs a subscriber that one of the following has occured: their record has created a PHN, their record has joined the set of an existing PHN, their record moved from a non-survivor PHN to a survivor PHN when the PHNs were merged. For non-source systems, PHNJOIN distribution informs non-source subscribers that a specific source they are listening to has joined a set with a PHN."
* #MERGE "Merge" "MERGE is a non-source distribution and informs subscribers of merged PHNs or Source Record Identifiers (SRIs). Merge distributions can be triggered by any source. All distribution profiles can limit the sources they subscribe to; therefore, if a subscriber only wants to be notified of a PHN merge, they subscribe to the MOH_CRS source. If they want to be notified of a SRI merge, they subscribe to the required source."
* #SSRISYNC "SSRI Sync" "An SSRI Sync distribution applies only to subscribers that are source systems and are used to notify a parent source system when one of its child systems' records has joined or changed within an entity set. SSRI Sync distributions support PHSA and the Clinical and Systems Transformation project (CST). In this project, multiple sources (VCHA, PHC, and PHSA) are implementing a single Cerner CIS (VPP Cerner) across all their facilities and replacing multiple existing systems. As part of this effort, all patients are issued a new SRI; existing SRIs are recorded and stored for historical use only. The new Cerner CIS is loading the SRI from the old system as the SSRI in the new system. The new CIS will be deployed to facilities over several years, and the patients will be migrated from their existing systems to the new CIS as their facility goes live and the legacy system is decommissioned."
//* #CRS "CRS" "CRS distribution is an internal distribution only which synchronizes the MOH_CRS record with the composite view."

ValueSet: PatientChangeNotificationEventsValueSet
Id: bc-client-registry-patient-change-notification-events-value-set
Title: "BC Client Registry Patient Change Notification Events Value Set"
Description: "Codes used to indicate that type of patient changes that a subscriber is interested in receiving."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/ValueSet/bc-client-registry-patient-change-notification-events"
* ^experimental = false
* codes from system PatientChangeNotificationEvents


Profile: HCIMPatientChangeSubscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription
Description: "Profile on subscription for HCIM Patient Changes"
* criteria = "http://hlth.gov.bc.ca/fhir/client/SubscriptionTopic/HCIMPatientChangeDistribution"
* channel MS
  * type = #rest-hook
  * type MS
  * endpoint 1..1 MS
  * payload MS
    * extension[content].valueCode = #full-resource


Instance: SampleCompositeSubscriptionRequest
InstanceOf: HCIMPatientChangeSubscription
Description: "Sample subscription request for Composite View events"
* status = #active
* reason = "Want to receive composite view notifications"
* criteria.extension[filterCriteria].valueString = "eventCode=COMPOSITE"
* channel.endpoint = "http://example.org/subscription-response-channel"
* channel.payload = #application/fhir+json
* channel.payload.extension[content].valueCode = #full-resource
