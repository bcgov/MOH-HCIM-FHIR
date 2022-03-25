Instance: Patient-Identifier-Examples
InstanceOf: BCPatient
Description: "An example of a Patient with descriptive Identifier."
* identifier[0] = IdentifierExamplePHN
* identifier[1] = IdentifierExampleSRI
* identifier[2] = IdentifierExampleSSRI
* identifier[3] = IdentifierExampleQCPHN
* name.given = "Jodi"
* name.family = "Jedi"
* name.use = #official
* gender = #female
* birthDate = "1965-01-01"

Instance: IdentifierExamplePHN
InstanceOf: Identifier
Description: "An example of a PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* value = "123345654"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #merged
* period.start = "2000-01-01T11:11:11+08:00"
* period.end = "2010-01-01T11:11:11+08:00"
* use = #official

Instance: IdentifierExamplePHNNoPeriod
InstanceOf: Identifier
Description: "An example of a PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* value = "123345654"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #merged
* use = #official

Instance: IdentifierExamplePHN2NoPeriod
InstanceOf: Identifier
Description: "An example of a PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC"
* value = "987654321"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #merged
* use = #official

Instance: IdentifierExampleSRI
InstanceOf: Identifier
Description: "An example of a SRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "123345654"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* period.start = "2000-01-01T11:11:11+08:00"
* period.end = "2010-01-01T11:11:11+08:00"
* use = #official

Instance: IdentifierExampleSRINoPeriod
InstanceOf: Identifier
Description: "An example of a SRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "123345654"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* use = #official

Instance: IdentifierExampleSSRI
InstanceOf: Identifier
Description: "An example of a SSRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "123345654"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* period.start = "2000-01-01T11:11:11+08:00"
* period.end = "2010-01-01T11:11:11+08:00"
* use = #secondary

Instance: IdentifierExampleSSRINoPeriod
InstanceOf: Identifier
Description: "An example of a SSRI Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode"
* value = "123345654"
* type.coding.code = #AN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* use = #secondary

Instance: IdentifierExampleQCPHN
InstanceOf: Identifier
Description: "An example of a Quebec PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/QC"
* value = "123345654"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* period.start = "2000-01-01T11:11:11+08:00"
* period.end = "2010-01-01T11:11:11+08:00"
* use = #official

Instance: IdentifierExampleQCPHNNoPeriod
InstanceOf: Identifier
Description: "An example of a Quebec PHN Identifier."
Usage: #inline
* system = "http://hlth.gov.bc.ca/fhir/client/id-issuer/QC"
* value = "123345654"
* type.coding.code = #JHN
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension.url = "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension"
* extension.valueCode = #active
* use = #official


