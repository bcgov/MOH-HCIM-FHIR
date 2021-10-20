>**Note**<br>This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

# Transition from V3 to FHIR

In the future stakeholders can transition from V3 to FHIR.  The older specification will not be deprecated however FHIR interactions have several advantages:
* FHIR will allow users to recieve and send more information than is currently within the V3 specification.  Attributes such as Address Validation Status and comprehensive business dates on all Patient attributes will be available in FHIR, but not in V3.
* FHIR uses JSON which makes new implementations simpler than V3
* FHIR is being adopted throughout the health care landscape and switching to FHIR may help interoperability with other health organizations and systems

## Note on Get Eligibility

The Client Registry FHIR operations do not include a Get Eligibility operation.  The V3 implementation of Get Eligibility is composed of two interactions, a Get Demographics and then a Get Eligibility, which Client Registry does on behalf of the V3 message requestor.  For FHIR, this will no longer be supported.  Users wishing to use Get Eligibility will need to use the FHIR Get Demographics operation and then send the Get Eligibility request to ....
>Where is the Get Eligibility supposed to be sent to

## FHIR Development

This guide is a primary source of information and describes the specification in detail.  Developers and the whole technical team should have access to this guide.

There are a variety of approaches one can take to develop FHIR capabilities.  FHIR servers can be rented via Cloud providers (Azure has one [here](https://docs.microsoft.com/en-us/azure/healthcare-apis/fhir/)) or build one from scratch using libraries such as [HAPI](https://hapifhir.io/hapi-fhir/ "HAPI") which is a Java library.  One could also develop a custom implementation that integrates with an existing webservice and system.

The Client Registry team will have test Client Registry FHIR servers available to test interactions and operation validity.

### Partial Implementations
As the V3 services will not be deprecated you may choose to develop some interactions with FHIR and still use other Client Registry services with V3.  This allows you to avoid a complete switch-over to FHIR all at once and instead roll out your new FHIR services as required or over a longer period.

## Business Rules
The FHIR interface is subject to the same rules as V3.  Some examples regarding patient data:

*No Browsing* - Users must be providing health services or facilitating care related to the patient prior to searching for the patient in a provincial clinical repository (e.g., PharmaNet, PLIS).

*No Modifications of HIE Data* - Data received from a Ministry HIE service cannot be modified. 

*Use or Disclosure of Patient Data* - Patient data received from a Ministry HIE service must not be used or disclosed for any purpose other than: 
* providing care to the individual whose information is being 
accessed; or 
* providing a patient with a copy of their own profile.

*Temporary Copies of Patient Data* - Temporary copies (e.g., paper forms) of patient data received from a Ministry HIE service must be securely disposed when no longer required for its intended use. 

*Reporting Incidents of Inappropriate Access, Use or Disclosure* - Personnel (employees and contractors) must be made aware of procedures for responding to suspected and actual privacy and security incidents and breaches, including "whistle-blower" protection measures. 

See British Columbia's [Health Information Exchange](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software) for details on the Client Registry system and access to Client Registry.
