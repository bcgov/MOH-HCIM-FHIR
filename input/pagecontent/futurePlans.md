{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide. </p>
</blockquote>
{% endraw %}

The FHIR artifacts have been created according to the current understood expectations. Priority to the most desired services, as indicated by Client Registry stakeholders, will be implemented first. It still needs to undergo review and testing. Over the next year, the following needs to be completed before this guide will be ready for implementation:

* Testing of the guides operations and profiles to ensure proper coverage
* Publication to BC's FHIR Portal

Although this guide is complete the implementation of the new FHIR Operations will be done in stages.  Priority to the most desired services, as indicated by Client Registry stakeholders, will be implemented first.  Currently the search services are highest priority and will be completed first.

### Release 4.0 - 1

This section describes everything that is available in this release. Currently the search services are highest priority and will be completed first.

To access this release through messaging, in the HTTP Accept header, update the versions to:
<b> fhirVersion=4.0;BCFhirVersion=1 </b>

### Future Interfaces

The FHIR specification will expand to include RESTful interfaces for Patient.  I.e.

	GET https://.../Patient/1b3ef948-4e25-4108-84c2-3727a6fb5a3b

Or

	GET https://.../Patient?params=

where a list of parameters can be used to query for Patients similar to Get Demographics.

