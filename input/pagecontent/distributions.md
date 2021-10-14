### Distributions

A Distribution is an interaction for which the Client Registry acts as the requestor and the user system is the FHIR server.  Distributions are sent when a patient record is created or changed and the user has been registried to receive notifications (in the form of a FHIR message) that contain new patient data.  More specifically users apply to recieve a distribution based on an event.  The full patient record is sent, and any missing data indicates that that particular data has been deleted in the Client Registry.

See Revise Patient; the Distribution message is a Revise Patient interaction sent to a user's system.  The expected success response is a HTTP code 200 without a body.  The RevisePatient.Newborn and RevisePatient.Async are not included in Distributions.

It is the user's responsibility to create a conformant FHIR endpoint for the Revise Patient interaction.  As such, this guide, and other FHIR specifications should be understood by the user and utilized to create the FHIR endpoint.
