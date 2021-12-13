><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

# Client Registry Overview

The Client Registry is the authoritative registry of health care client demographics information in British Columbia.  The purpose of the Provincial Client Registry is to: 
- assign a Personal Health Number (PHN) for all receivers of healthcare services; 
- maintain client demographic information (e.g., name, address, contact) in relation to those 
PHNs; and
- collect and link identity information about clients who have received a healthcare service across the BC health sector.

Authorized users with a point of service application integrated with the Client Registry can: 
- search for and capture patient identity information to support safe health care service delivery; 
- store client demographics from the Client Registry in the point of service application; 
- update client demographic information in the Client Registry; and 
- create PHNs for patients. 

Client Registry currently has a HL7 V3 implementation and this guide describes the HL7 FHIR implementation.

See British Columbia's [Health Information Exchange](https://www2.gov.bc.ca/gov/content/health/practitioner-professional-resources/software) for more for details on the Client Registry system and access to Client Registry.

For design information start [here](design.html), to view details about profiles, operations, examples, etc, view this [page](artifacts.html).


## Miscellaneous

Conformance verbs - SHALL, SHOULD, MAY - used in this guide's Capability Statement are defined in [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html#conflang).  The informative information outside the Capability Statement is intended to be descriptive and guide implementors through the profiles and examples without any formal requirements language.

No form of data absent reason is supported; mandatory data must always be present.  There is a new Operations, PartialRevise, which allows for partial Patient record updates outside the standed Add, Revise and Merge Operations.

