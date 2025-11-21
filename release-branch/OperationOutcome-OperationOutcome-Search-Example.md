# OperationOutcome-Search-Example - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OperationOutcome-Search-Example**

## Example OperationOutcome: OperationOutcome-Search-Example

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Warning | Business Rule Violation | Warning: The identifier you used in the query has been merged. The surviving identifier was returned. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "OperationOutcome-Search-Example",
  "issue" : [
    {
      "severity" : "warning",
      "code" : "business-rule",
      "details" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ClientRegistry/CodeSystem/bc-oo-codes",
            "code" : "BCHIM.GD.0.0015"
          }
        ],
        "text" : "Warning: The identifier you used in the query has been merged. The surviving identifier was returned."
      }
    }
  ]
}

```
