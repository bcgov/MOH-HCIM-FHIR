# BC Client Registry Patient Change Notification Events Code System - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Client Registry Patient Change Notification Events Code System**

## CodeSystem: BC Client Registry Patient Change Notification Events Code System 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events | *Version*:1.0.0 |
| Active as of 2026-03-17 | *Computable Name*:PatientChangeNotificationEvents |

 
Codes used to indicate that type of patient changes that a subscriber is interested in receiving. 

## Business Objective

This page outlines the objectives of each distribution profile and describes how the distribution service fulfills those objectives. A distribution profile consists of a collection of configurable options that allow a subscriber to customize how and when they will receive a distribution message. There is no limit to the number of distribution profiles for an organization.

### Distribution Profile Configuration Options

Each distribution profile has a number of options for its configuration.

**Organization** The Organization that this profile belongs to.

**Distribution Type** The distribution type that this profile subscribes to.

**Source Subscriptions** This option allows a source to limit the source systems that can trigger a notification. This means that changes to a source not in the subscription list will be ignored and not trigger a notification. The default setting is all sources.

**Source/Non-Source** **Source:** These require source context and are applicable when comparisons are made against records within EMPI and require the subscriber to be a source system in the EMPI. Subscribers will be notified that their data is out-of-sync with the composite view. These types of distributions will only notify the subscriber if they have a record in the affected entity. **Non-Source:** These do not require subscribers to have a record in the EMPI; instead, they are constrained to listening to all events that occur to a specific source in the EMPI. Note that it is possible to subscribe to multiple source systems.

**Data Permissions** A list of Source Identifiers that the subscribing organization has permission to view. Each organization has permission to see the MOH_CRS source (the source of the PHN) by default. The distribution service will filter out any Identifiers not in the permissions list. Currently, this permission list lives in the HCIM security settings for the organization and is applied to all services, not just the distribution service.

**Message Format** This is a new option for the profiles. The goal of this feature is to allow support for multiple messaging formats (such as HL7v3 and HL7 FHIR).

**Backwards Compatibility** One of the options would be a backward compatibility mode for HL7v3. If this project makes changes to the message structure or contents, there is a chance that existing systems will be incompatible; therefore, this mode will ensure that the distribution messages appear the same as prior to the distribution rewrite.

**Subscribed Regions** This new option would allow a subscriber to limit distributions by region. The distribution service would look at the home or mailing address for the affected record and send a notification if they are within a subscribed area. Filters would include:

* Region (i.e., postal code ranges)
* Province
* Country

## Distribution Types

The following tables describe each type of distribution and include a description with the following information:

* **Conditions**: Conditions that must be met for a distribution notification to occur; all conditions must apply
* **Contents**: Data attributes that will be populated in the distribution message

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientChangeNotificationEventsValueSet](ValueSet-bc-client-registry-patient-change-notification-events-value-set.md)

### Notes:

| | | |
| :--- | :--- | :--- |
| COMP | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* The source record must be active (not merged or in an overlay task)
* There are no source records in the entity with an overlay task
* The modified record that triggered the event is NOT new
* Source Distributions: The data attribute on the subscriber's source record is out-of-sync with the Composite View
* Non-Source Distributions: A data attribute has changed on a subscribed source system record
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, and PHN
* Active and Merged SSRIs
* Last Modified Business Date
* Source: SRI of Source Record that is out-of-sync with the Composite View
* Non-Source: SRI of the modified Source Record
 |
| DEATH | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
* Source Distributions:
* Non-Source Distributions:
* Subscribe to one of the following:
* If the source has permission to provide the date of death to the composite view, the record cannot be a singleton; the member must be in an entity with a MOH_CRS record
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, and PHN
* Active and Merged SSRIs
* Last Modified Business Date
* Source: SRI of Source Record in the entity set
 |
| NEW | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
* The event was generated by the creation of a new record
* The new record belongs to one of the source subscriptions from the profile
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, and PHN
* Active and Merged Sub Source Record Identifiers (SSRIs)
* Mother's PHN
* Last Modified Business Date
 |
| NEWBORN | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
* The newborn record is new
* The declared name value is a Newborn Name
* The newborn record has a mother's PHN
* No death date and death indicator are present
 | * All composite view data attributes: Name, Gender, Date of Birth, Address, Phone Number, Email Address, and PHN
* Mother's PHN
* All SSRIs (Active and Merged)
* All Source Record Identifers (SRIs)
* Last Modified Business Date
 |
| NEWBORNGENDER | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
* The newborn record is NOT new
* The declared name value is (or was) a Newborn Name
* The old gender value is Unknown
* The new gender value is NOT Uknown or Undifferentiated
* The intial newborn record must have a date of birth within the change window (5 days)
* No death date or death indicator is present
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Address, Phone Number, Email Address, and PHN
* All SSRIs (Active and Merged)
* Mother's PHN
* Last Modified Business Date
 |
| PHN | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
* The source record must be an active (not merged or in an overlay task)
* The modified record that triggered the event is NOT new
* The PHN attribute on the subscriber's source record is out-of-sync with the composite view
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, and PHN
* All SSRIs (Active and Merged)
* SRI of the source record that is out-of-sync with the PHN
* Last Modified Business Date
 |
| PHNJOIN | * An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
* The source record must be active (not merged or in an overlay task)
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, or PHN
* All SSRIs (Active and Merged)
* SRI has joined the entity, or a PHN has joined the entity
* Last Modified Business Date
 |
| MERGE | *  An active (not merged or in an overlay task) MOH_CRS record exists in the entity set
* There are no source records in the entity with an overlay task
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, and PHN
* All SSRIs (Active and Merged)
* All Merged identifiers (i.e., SRI, SSRI)
* Last Modified Business Date
 |
| SSRSISYNC | * There are no source records in the entity with an overlay task
* The source record that triggered the event is either Active or Merged
* A Parent Source Record is in the entity
* One or more child source systems are in the entity
* The parent source systems' list of SSRIs does not match the SRIs of the children source systems
 | * All composite view Data Attributes: Name, Gender, Date of Birth, Date of Death, Deceased Indicator, Address, Phone Number, Email Address, and PHN
* All SSRIs (Active and Merged)
* All SRIs (Active and Merged)
* Last Modified Business Date
 |



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-client-registry-patient-change-notification-events",
  "url" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-client-registry-patient-change-notification-events",
  "version" : "1.0.0",
  "name" : "PatientChangeNotificationEvents",
  "title" : "BC Client Registry Patient Change Notification Events Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-17T18:19:20+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Codes used to indicate that type of patient changes that a subscriber is interested in receiving.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "COMP",
    "display" : "Composite View",
    "definition" : "The Composite View distribution serves different business purposes depending on whether or not the subscriber is a source system. For a source system, Composite View distributions inform a subscribing system that its records are out-of-sync with the composite view. For a non-source system, Composite View distributions inform a subscriber when a data attribute has been modified on a specific source."
  },
  {
    "code" : "DEATH",
    "display" : "Death",
    "definition" : "A Death Distributions notifications inform subscribers of both confirmed and unconfirmed deaths. This occurs when just the Date of Death is present, or both the Date of Death and Deceased indicator are present in the Composite View. There are some behavior differences depending on whether or not the subscriber is a source system. For a source system, Death distributions inform a subscriber that they have a record that is out-of-sync with the Date of Death, or the Deceased indicator is added to the Composite View. For a non-source system, Death distributions inform a subscribing system that there is a Date of Death, or the Deceased indicator is added."
  },
  {
    "code" : "NEW",
    "display" : "New",
    "definition" : "The NEW distribution is a non-source distribution that informs subscribers of all new records. Any source can trigger a NEW distribution, and subscribers can limit the sources they subscribe to. For instnce, if a subscriber wants to be notified of new PHNs, they subscribe to the MOH_CRS source."
  },
  {
    "code" : "NEWBORN",
    "display" : "Newborn",
    "definition" : "A Newborn distribution is a non-source distribution that informs subscribers that a newborn record has been created and has been assigned a PHN. Typically, subscribers would limit their source subscription to MOH_CRS for this distribution."
  },
  {
    "code" : "NEWBORNGENDER",
    "display" : "Newborn Gender",
    "definition" : "The Newborn Gender distribution is a non-source distribution and informs subscribers when the gender on a newborn record changes from unknown or undifferentiated to Male or Female. This distribution is used to ensure that pre-registered newborns (where the gender is frequently unknown) are registered for MSP benefits. MSP does not allow the registration of newborns with an unknown gender value."
  },
  {
    "code" : "PHN",
    "display" : "PHN",
    "definition" : "PHN distributions only work for subscribers that are source systems. This distribution informs source systems that their purported PHN is out-of-sync with the PHN in the Composite View. The purported PHN is the PHN sent on the last update by the source system, while the PHN in the Composite View is the MOH_CRS source PHN."
  },
  {
    "code" : "PHNJOIN",
    "display" : "PHN Join",
    "definition" : "A PHNJOIN distribution works for subscribers that are source and non-source systems and informs them that their record has joined an entity with a PHN, or a PHN has joined its entity. For source systems, PHNJOIN distribution informs a subscriber that one of the following has occured: their record has created a PHN, their record has joined the set of an existing PHN, their record moved from a non-survivor PHN to a survivor PHN when the PHNs were merged. For non-source systems, PHNJOIN distribution informs non-source subscribers that a specific source they are listening to has joined a set with a PHN."
  },
  {
    "code" : "MERGE",
    "display" : "Merge",
    "definition" : "MERGE is a non-source distribution and informs subscribers of merged PHNs or Source Record Identifiers (SRIs). Merge distributions can be triggered by any source. All distribution profiles can limit the sources they subscribe to; therefore, if a subscriber only wants to be notified of a PHN merge, they subscribe to the MOH_CRS source. If they want to be notified of a SRI merge, they subscribe to the required source."
  },
  {
    "code" : "SSRISYNC",
    "display" : "SSRI Sync",
    "definition" : "An SSRI Sync distribution applies only to subscribers that are source systems and are used to notify a parent source system when one of its child systems' records has joined or changed within an entity set. SSRI Sync distributions support PHSA and the Clinical and Systems Transformation project (CST). In this project, multiple sources (VCHA, PHC, and PHSA) are implementing a single Cerner CIS (VPP Cerner) across all their facilities and replacing multiple existing systems. As part of this effort, all patients are issued a new SRI; existing SRIs are recorded and stored for historical use only. The new Cerner CIS is loading the SRI from the old system as the SSRI in the new system. The new CIS will be deployed to facilities over several years, and the patients will be migrated from their existing systems to the new CIS as their facility goes live and the legacy system is decommissioned."
  }]
}

```
