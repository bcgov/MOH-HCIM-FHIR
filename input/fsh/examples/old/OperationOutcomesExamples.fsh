Instance: OperationOutcome-Example
InstanceOf: OperationOutcome
Description: "Example OperationOutcome for a Client Registry Add, Revise or Merge."
* issue.severity = #warning
* issue.code = #business-rule
* issue.details.text = "Warning: The Revise Patient name has been modified to filter out invalid characters."
* issue.details = $bc-oo-codes#HCIM.RP.1.0017
* issue[1].severity = #error
* issue[1].code = #business-rule
* issue[1].details.text = "The HL7 message is invalid. Please correct the HL7 message, and resubmit it. (System.Exception: Results from Schematron validation: ..."
* issue[1].details = $bc-oo-codes#HCIM.RP.1.0017
