><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

This is the Revise Patient operation.  The request is a Bundle and is used for incoming updates and also used for Patient notifications (outbound messages, from the Client Registry to a connected partner."

A Patient resource is required to update or add a patient.  If updating, the empty attributes in the Patient resource will be deleted by the Client Registry.



