# Merge Patient - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Merge Patient**

## OperationDefinition: Merge Patient 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-merge | *Version*:1.0.0 |
| Active as of 2026-03-25 | *Computable Name*:MergePatient |

 
This operation is used to merge patients. 

The merge operation is used to request two patient resources be merged. One of the two patients is identified as the source (non-survivor) and on as the target (survivor). The data from the source patient will be merged with the data of the target patient.

The source Patient resource will be updated to add a new Patient.link reference to the target Patient resource with a link-type of replaced-by. The source Patient will also be updated to have a status of inactive, unless the source Patient resource was deleted.

The target Patient resource will be updated to add a new Patient.link reference to the source Patient resource with a link-type of replaces unless the source Patient resource is deleted. The target Patient resource must be included in the result-patient paramter if used.

### Notes:

The FHIR Mimic R5 Merge Person feature is one that modifies the format of the existing R4 Merge Person interface so that it aligns closely with the R5 version of the FHIR specifications.

Some of the differences include:

* Identifier in the Parameters (source-patient-identifier) needs to include the [merge-status-extension](StructureDefinition-bc-merge-status-extension.md)
* Preview parameter is not allowed
* Merge Patient identifiers its own value set that allows official, secondary and old. Old will indicate non-survivors in the patient in the result-patient and only for merge patients.

#### Examples

See [Merge Patient request](Parameters-Merge-Request.md) example. See [Merge Patient response](Parameters-Merge-Response.md) example.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-patient-merge",
  "url" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-merge",
  "version" : "1.0.0",
  "name" : "MergePatient",
  "title" : "Merge Patient",
  "status" : "active",
  "kind" : "operation",
  "date" : "2026-03-25T22:00:37+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This operation is used to merge patients.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "merge",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "outputProfile" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "parameter" : [{
    "name" : "source-patient",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "A direct resource reference to the source patient resource (this may include an identifier).",
    "type" : "Reference"
  },
  {
    "name" : "source-patient-identifier",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "When source-patient-identifiers are provided, the server is expected to perform an internal lookup to identify the source patient record. The server SHALL reject the request if the provided identifiers do not resolve to a single patient record. This resolution MAY occur asynchronously, for example, as a part of a review by a user.",
    "type" : "Identifier"
  },
  {
    "name" : "target-patient",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "A direct resource reference to the target patient resource. This is the surviving patient resource, the target for the merge.",
    "type" : "Reference"
  },
  {
    "name" : "target-patient-identifier",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "When target-patient-identifiers are provided, the server is expected to perform an internal lookup to identify the target patient record. The server SHALL reject the request if the provided identifiers do not resolve to a single patient record. This resolution MAY occur asynchronously, for example, as a part of a review by a user.",
    "type" : "Identifier"
  },
  {
    "name" : "result-patient",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "The details of the Patient resource that is expected to be updated to complete with and must have the same patient.id and provided identifiers included. This resource MUST have the link property included referencing the source patient resource. It will be used to perform an update on the target patient resource. In the absence of this parameter the servers should copy all identifiers from the source patient into the target patient, and include the link property. This is often used when properties from the source patient are desired to be included in the target resource. The receiving system may also apply other internal business rules onto the merge which may make the resource different from what is provided here.",
    "type" : "Patient"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The Parameters resource will include: The Input parameters to the operation, An OperationOutcome containing errors, warnings, and information messages, The resulting merged Patient resource (or a patient reference if the patient is not committed), Optionally a Task resource to track any additional processing that was required.",
    "type" : "Parameters"
  }]
}

```
