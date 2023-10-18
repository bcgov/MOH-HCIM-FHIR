Instance: IdentifierExamplePHN
//InstanceOf: Identifier
InstanceOf: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
//InstanceOf: http://hl7.org/fhir/StructureDefinition/Identifier
Description: "An example of a PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
//* value = "9123456789"
* value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* value.extension.valueCode = #unknown
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* period.start = "2000-01-01T11:11:11+08:00"
* use = #official

Instance: IdentifierExamplePHNNoPeriod
//InstanceOf: Identifier
InstanceOf: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
Description: "An example of a PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* value = "9123456778"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* use = #official

Instance: IdentifierExamplePHN2NoPeriod
//InstanceOf: Identifier
InstanceOf: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
Description: "An example of a PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* value = "9876543210"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* use = #official

Instance: IdentifierExampleSRINoPeriod
//InstanceOf: Identifier
InstanceOf: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
Description: "An example of a SRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "123345654"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* assigner.display = "ORG_SRC e.g. VPP_CER, IHA_IHA"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* use = #official

Instance: IdentifierExampleSRINoPeriodForMerge
//InstanceOf: Identifier
InstanceOf: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
Description: "An example of a SRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "8375493847"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* assigner.display = "ORG_SRC e.g. VPP_CER, IHA_IHA"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* use = #official

Instance: IdentifierExampleSSRINoPeriod
//InstanceOf: Identifier
InstanceOf: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
Description: "An example of a SSRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "123345654"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* assigner.display = "ORG_SUBSRC e.g. FHA_CAC or VPP_CW"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* use = #secondary



