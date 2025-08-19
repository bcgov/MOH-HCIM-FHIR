## Business Objective
This page outlines the objectives of each distribution profile and describes how the distribution service fulfills those objectives. A distribution profile consists of a collection of configurable options that allow a subscriber to customize how and when they will receive a distribution message. There is no limit to the number of distribution profiles for an organization.

### Distribution Profile Configuration Options
Each distribution profile has a number of options for its configuration.

**Organization**
The Organization that this profile belongs to.

**Distribution Type**
The distribution type that this profile subscribes to.

**Source Subscriptions**
This option allows a source to limit the source systems that can trigger a notification. This means that changes to a source not in the subscription list will be ignored and not trigger a notification. The default setting is all sources.

**Source/Non-Source**
**Source:** These require source context and are applicable when comparisons are made against records within EMPI and require the subscriber to be a source system in the EMPI. Subscribers will be notified that their data is out-of-sync with the composite view. These types of distributions will only notify the subscriber if they have a record in the affected entity.
**Non-Source:** These do not require subscribers to have a record in the EMPI; instead, they are constrained to listening to all events that occur to a specific source in the EMPI. Note that it is possible to subscribe to multiple source systems.

**Data Permissions**
A list of Source Identifiers that the subscribing organization has permission to view. Each organization has permission to see the MOH_CRS source (the source of the PHN) by default. The distribution service will filter out any Identifiers not in the permissions list. Currently, this permission list lives in the HCIM security settings for the organization and is applied to all services, not just the distribution service.

**Message Format**
This is a new option for the profiles. The goal of this feature is to allow support for multiple messaging formats (such as HL7v3 and HL7 FHIR).

**Backwards Compatibility**
One of the options would be a backward compatibility mode for HL7v3. If this project makes changes to the message structure or contents, there is a chance that existing systems will be incompatible; therefore, this mode will ensure that the distribution messages appear the same as prior to the distribution rewrite.

**Subscribed Regions**
This new option would allow a subscriber to limit distributions by region. The distribution service would look at the home or mailing address for the affected record and send a notification if they are within a subscribed area. Filters would include:
* Region (i.e., postal code ranges)
* Province
* Country

## Distribution Types
The following tables describe each type of distribution and include a description with the following information:
* **Conditions**: Conditions that must be met for a distribution notification to occur; all conditions must apply
* **Contents**: Data attributes that will be populated in the distribution message