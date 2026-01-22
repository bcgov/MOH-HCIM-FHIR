# OperationOutcome-Example - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OperationOutcome-Example**

## Example OperationOutcome: OperationOutcome-Example

> **issue****severity**: Warning**code**: Business Rule Violation**details**: Warning: The Revise Patient name has been modified to filter out invalid characters.

> **issue****severity**: Error**code**: Business Rule Violation**details**: The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ...



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "OperationOutcome-Example",
  "issue" : [
    {
      "severity" : "warning",
      "code" : "business-rule",
      "details" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-oo-codes",
            "code" : "HCIM.RP.1.0017"
          }
        ],
        "text" : "Warning: The Revise Patient name has been modified to filter out invalid characters."
      }
    },
    {
      "severity" : "error",
      "code" : "business-rule",
      "details" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-oo-codes",
            "code" : "HCIM.RP.1.0017"
          }
        ],
        "text" : "The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ..."
      }
    }
  ]
}

```
