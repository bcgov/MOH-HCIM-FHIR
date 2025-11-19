
### OAuth Security
Both Server and Client interactions in PCR are secured with OAuth2. It is recommended using the Ministry of Health's Keycloak server to secure interactions with PCR.

### HTTP Headers
The HTTP Headers will need several specific parameters configured with each request.

Parameter | Description
---|---
Authorization | Bearer KeyCloak token
UserId | User id of individual e.g. `bsmith@IDIR` or `<userid>@<identity provider>`
Accept | E.g. application/fhir+json; charset=utf-8; fhirVersion=4.0; BCFhirVersion=1
Request-Id | MessageID for the inbound message e.g. 5f8fe04b00c843f59368c374cdf0325f
{:.grid}

The `Accept` parameter must be exactly as in the table with the exception of version changes.