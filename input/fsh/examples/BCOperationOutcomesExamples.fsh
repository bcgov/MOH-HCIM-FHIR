Instance: SearchOperationOutcome
InstanceOf: BCOperationOutcome
Description: "Example OperationOutcome for a Client Registry Search"
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The Find Candidates Patient name has been modified to filter out invalid characters."
//* issue.details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue.details.coding.code = #BCHCIM.GD.1.0017
* issue[1].severity = #error
* issue[1].code = #business-rule
* issue[1].details.text = "The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ..."
//* issue.details.coding.system = "http://hlth.gov.bc.ca/fhir/client/bc-oo-codes"
* issue[1].details.coding.code = #BCHCIM.GD.1.0017

Instance: RPMPOperationOutcome
InstanceOf: BCOperationOutcome
Description: "Example OperationOutcome for a Client Registry Revise or Merge"
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The Revise Patient name has been modified to filter out invalid characters."
//system is HCIM codes, and not required, as FHIR docs say the system is inferred
* issue.details.coding.code = #BCHCIM.RP.1.0017
* issue[1].severity = #error
* issue[1].code = #business-rule
* issue[1].details.text = "The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ..."
//system is HCIM codes, and not required, as FHIR docs say the system is inferred
* issue[1].details.coding.code = #BCHCIM.RP.1.0017

