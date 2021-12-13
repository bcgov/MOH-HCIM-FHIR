><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

### Patient Change Notifications

This is is an interaction for which the Client Registry acts as the requester (the client) and the user system acts as the FHIR server; the Client Registry is sending Patient change notifications.  Notifications are sent when a patient record is created or changed and the user has been registered to receive notifications (in the form of a FHIR message) that contain new patient data.  More specifically users apply to receive a distribution based on an event such as PHN change or merge.  The full patient record is sent, and any missing data indicates that that particular data has been deleted in the Client Registry.

The expected success response is a HTTP code 200 without a body.  

It is the user's responsibility to create a conformant FHIR endpoint for the Patient Notification interaction.  As such, this guide, and other FHIR specifications should be understood by the user and utilized to create the FHIR endpoint.
