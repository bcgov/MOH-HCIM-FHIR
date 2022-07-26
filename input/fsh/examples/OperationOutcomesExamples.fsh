Instance: OperationOutcome-Search-Example
InstanceOf: OperationOutcome
Description: "Example OperationOutcome for a Client Registry Search"
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The identifier you used in the query has been merged. The surviving identifier was returned."
* issue.details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue.details.coding.code = #BCHCIM.GD.0.0015


Instance: OperationOutcome-Example
InstanceOf: OperationOutcome
Description: "Example OperationOutcome for a Client Registry Add, Revise or Merge."
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The Revise Patient name has been modified to filter out invalid characters."
* issue.details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue.details.coding.code = #HCIM.RP.1.0017
* issue[1].severity = #error
* issue[1].code = #business-rule
* issue[1].details.text = "The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ..."
* issue[1].details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue[1].details.coding.code = #HCIM.RP.1.0017

Instance: OperationOutcome-Example-RP
InstanceOf: OperationOutcome
Description: "Example OperationOutcome for a Client Registry Revise Patient."
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The Revise Patient name has been modified to filter out invalid characters."
* issue.details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue.details.coding.code = #HCIM.RP.1.0017
* issue[1].severity = #warning
* issue[1].code = #business-rule
* issue[1].details.text = "Warning: the Revise Person request successfully completed, however the record is the subject of a Potential Duplicates task."
* issue[1].details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue[1].details.coding.code = #BCHCIM.RP.1.0502

