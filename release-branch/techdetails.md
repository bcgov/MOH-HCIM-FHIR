# Technical Details - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Technical Details**

## Technical Details

### OAuth Security

Both Server and Client interactions in PCR are secured with OAuth2. It is recommended using the Ministry of Health's Keycloak server to secure interactions with PCR.

### HTTP Headers

The HTTP Headers will need several specific parameters configured with each request.

| | |
| :--- | :--- |
| Authorization | Bearer KeyCloak token |
| UserId | User id of individual e.g.`bsmith@IDIR`or`<userid>@<identity provider>` |
| Accept | E.g. application/fhir+json; charset=utf-8; fhirVersion=4.0; BCFhirVersion=1 |
| Request-Id | MessageID for the inbound message e.g. 5f8fe04b00c843f59368c374cdf0325f |

The `Accept` parameter must be exactly as in the table with the exception of version changes.

