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
* #COMPOSITE "composite" "Composite view distributions inform a subscribing system that their records are out-of-sync with the composite view and a subscriber that a data attribute has been modified on a specific source."
* #DEATH "death" "DEATH distributions inform a subscriber that they have a record that is out of sync with the Date of Death, or the Deceased indicator is present and a change to the composite view has occurred and a subscribing system there is a Date of Death, or the Deceased indicator is present and a change to the composite view has occurred."
* #EID "eid" "EID distributions inform subscribers when one of their source records has changed entity sets and/or is out-of-sync with the composite view."
* #NEW "new PHN" "The New PHN (NEW) distribution is a non-source distribution and informs subscribers of all new PHNs."
* #NEWBORN "newborn" "This distribution informs subscribers that a newborn record has been created in the EMPI, and has been assigned a PHN."
* #NEWBORN_GENDER "newborn gender" "A non-source distribution and informs subscribers when the gender on a newborn record changes from unknown or undifferentiated to any other gender value."
* #PHN "PHN change" "PHN Change distributions inform source systems that their purported PHN is out-of-sync with the PHN in the composite view."
* #PHNJOIN "PHN Join" "PHN Join distributions inform source systems that their record has joined an entity with a PHN."
* #PHNMERGE "PHN Merge" "PHN merge is a non-source distribution and informs subscribers of merged PHNs."
* #SSRI "SSRI Sync" "SSRI Sync distributions notify a parent system that one of its child system’s records has joined the set."

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
