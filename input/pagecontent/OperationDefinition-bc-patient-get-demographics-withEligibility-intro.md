><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

><span style="color:red">Note</span><br>Get Eligibility is a service provided by Health Insurance British Columbia.  The Client Registry, when receiving a Get Demographics with Eligibility (aka Batch) request, forwards the eligibility component on to a HIBC webservice and forwards the response back along with the Get Demographics results.  At this time the FHIR design for this operation is speculative and the Client Registry needs to work with HIBC in the future to come to an agreement on the final design. At this time it is also speculation as to whether HIBC will even adopt FHIR. The V3 Batch can continue to be used in the interim.

The Get Demographics with Eligibility query is an Operation.  

This a special case of Get Demographics that returns the British Columbia insurance eligibility of the Patient in addition to the Patient record using the Coverage resource.

The request is a Bundle with Resources for search parameters (MetadataParametersIn), a Patient to match against.

The Patient Bundle entry is a [Patient](StructureDefinition-bc-patient.html). See the Get Demographics [search design](search.html#get-demographics-search) for more details on the critera.
