/*Future release

CodeSystem: PatientChangeNotificationEvents

ValueSet: PatientChangeNotificationEventsValueSet

Profile: HCIMPatientChangeSubscription

Instance: SampleCompositeSubscriptionRequest 

*/
CodeSystem: PatientChangeNotificationEvents
Id: bc-client-registry-patient-change-notification-events
Title: "BC Client Registry Patient Change Notification Events Code System"
Description: "Codes used to indicate that type of patient changes that a subscriber is interested in receiving."
* ^url = "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events"
* ^caseSensitive = true
* ^experimental = false
* #COMP "Composite View" "Composite view distributions inform a subscribing source system that their records are out-of-sync with the composite view. For non-source system, the composite view distribution informs a subscriber when a data attribute has been modified on a specific source."
* #DEATH "Death" "DEATH distributions inform a source system subscriber that they have a record that is out-of-sync with the Date of Death, or the Deceased indicator is added to the composite view. For non-source systems the death distribution informs a subsciribin system there is a Date of Death, or the Deceased indicator is added."
* #EID "EID" "EID distributions work for subscribers that are source systems and informs them when one of their source records has changed entity sets and/or is out-of-sync with the composite view."
* #NEW "New" "The New distribution is a non-source distribution that informs subscribers of all new records. Any source can trigger a NEW distribution, and subscribers can limit the source they subscribe to."
* #NEWBORN "Newborn" "This is a non-source distribution that informs subscribers that a newborn record has been created in the EMPI and has been assigned a PHN. Typically, subscribers would limit their source subscription to MOH_CRS for this distribution."
* #NEWBORN_GENDER_CHANGE "Newborn Gender Change" "A non-source distribution and informs subscribers when the gender on a newborn record changes from unknown or undifferentiated to any other gender value. This distribution is used to ensure that pre-registered newborns (where the gender is frequently unknown) are registered for MSP benefits. MSP does not allow the registration of newborns with an unknown gender value. The Newborn Gender Change distribution is sent out as a Newborn distribution; however, it has a different triggered mechanism. As such, while the distribution message is mapped and delivered as a Newborn distribution, it is logged as a Newborn Gender Change in the transaction tables."
* #PHN "PHN" "PHN distributions only work for subscribers that are source systems. This distribution informs source systems that their purported PHN is out-of-sync with the PHN in the composite view. The purported PHN is the PHN sent on the last update by the source system, while the PHN in the Composite View is the MOH_CRS source PHN."
* #PHNJOIN "PHN Join" "A PHN Join distribution only works for subscribers that are source systems and informs source systems that their record has joined an entity with a PHN, or a PHN has joined its entity."
* #MERGE "Merge" "Merge is a non-source distribution and informs subscribers of merged PHNs or SRIs. Merge distributions can be triggered by any source. All distribution profiles can limit the sources they subscribe to; therefore, if a subscriber only wants to be notified of a PHN merge, they subscribe to the MOH_CRS source. If they want to be notified of a SRI merge, they subscribe to the require source."
* #SSRISYNC "SSRI Sync" "SSRI Sync distributions apply only to subscribers that are source systems and are used to notify a parent source system when one of its child system’s records has joined or changed within an entity set. SSRI Sync distributions support PHSA and the Clinical and Systems Transformation project (CST). In this project, multiple sources (VCHA, PHC, and PHSA) are implementing a single Cerner CIS (VPP Cerner) accross all their facilities and replacing multiple existing systems. As part of this effort, all patients are issued a new SRI; existing SRIs are recorded and stored for historical use only. The new Cerner CIS is loading the SRI from the old system as the SSRI in the new system. The new CIS will be deployed to facilities over several years and the patients will be migrated from their existing systems to the new CIS as their facilities go live and the legacy system is decommissioned."
* #CRS "CRS" "CRS distributions are a special case and have different business objectives for their respective events compared to normal distributions. CRS distributions create an maintain a Composite View History in the EMPI and synchronize the CRS record with the Composite View. The MDM is updated, and no messages (FHIR or HL7v3) are sent out to the connected partner."

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
* channel.payload = #application/fhir+json"
* channel.payload.extension[content].valueCode = #full-resource
