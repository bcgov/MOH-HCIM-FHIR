# AddPatient - BC Client Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AddPatient**

## OperationDefinition: AddPatient 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-add | *Version*:1.0.0 |
| Draft as of 2026-03-25 | *Computable Name*:AddPatient |

 
This operation is used for newborns or to 'force create' a patient. 

Add Patient is a FHIR Operation. ‘force create’ and newborn interactions can be done with Add Patient Operation.

When adding a newborn the child's PHN is unknown (unassigned) and thus a RelatedPersion which identifies the mother is needed to process the request.

### Notes:

##### Alternate Structure

To improve support for commercial off the shelf FHIR server products and to be conformant, the Client Registry offers an alternative Operation Resource structure. Instead of the request body being a Bundle (as described on this page) the user can optionally send in the same Bundle, but wrapped in a Parameters Resource. The Parameters Resource has a single parameter, name is operationBundle, and value is the Bundle Resource.

#### In Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersIn | See[profile](StructureDefinition-bc-metadata-parameters-in.md). |
| 1..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |
| 0..1 | RelatedPerson | For mom's PHN. |

#### Out Bundle Entries

| | | |
| :--- | :--- | :--- |
| 1..1 | MetadataParametersOut | See[profile](StructureDefinition-bc-metadata-parameters-out.md). |
| 1,,1 | OperationOutcome | An OperationOutcome resource that has warnings and errors regarding the operation requested. |
| 0..1 | ClientRegistryPatient | See[profile](StructureDefinition-bc-patient.md). |

#### Metadata In Parameters

Besides the two mandatory name-value pairs, see [profile here](StructureDefinition-bc-metadata-parameters-in.md), Add Patient has no additional paramters.

#### Metadata Out Parameters

Besides the mandatory parameters, see [profile here](StructureDefinition-bc-metadata-parameters-out.md), Add Patient has no additional out parameters.

#### Mother's PHN

The mother's PHN may be required, if so the PHN is sent to the Client Registry via a RelatedPerson resource in the In Bundle for this request.

#### Examples

See [Add Patient request](Bundle-AddPatient-Request.md) example.
 See [Add Patient newborn request](Bundle-AddNewbornByMumsPHN-Request.md) example.
 See [Add Patient response](Bundle-AddPatient-Response.md) example.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-patient-add",
  "url" : "http://hlth.gov.bc.ca/fhir/client/OperationDefinition/bc-patient-add",
  "version" : "1.0.0",
  "name" : "AddPatient",
  "title" : "AddPatient",
  "status" : "draft",
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
  "description" : "This operation is used for newborns or to 'force create' a patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "AddPatient",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-add-request-bundle",
  "outputProfile" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-add-response-bundle",
  "parameter" : [{
    "name" : "AddRequestBundle",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "The AddPatient operation request Bundle.",
    "type" : "Bundle"
  },
  {
    "name" : "AddResponseBundle",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The AddPatient operation response Bundle.",
    "type" : "Bundle"
  }]
}

```
