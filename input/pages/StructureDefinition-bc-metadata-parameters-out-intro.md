This profile of Parameters is intended to force the inclusion of specific parameters that are common to all Operations.  Below is a list with descriptions.

Parameter Name | Description |
:--- | :---
messageId | The unique id for the operation request.  This is assigned by the sender of the operation request.
<!-- messageDateTime | This field stores the date and time that the request was sent. -->
requestMessageId | Each request will have a response.  The response can be related back to the request (important for asynchronous operations) when the unique Id of the request is included in the response.
sender | This is an identifier for the source of the request or response.
enterer | The user identifier if required.

Each request (Operation) and response (Bundle) must have these fields in a Parameter resource.

