><span style="color:red">Note</span><br>This specification is currently published as a Draft Standard on the ministry GitHub and is not intended for implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide. For more information, please see the Future Plans page in this guide.

# Definitions

In alphabetical order the table below defines terms used in this FHIR Implementation Guide.

 Term | Definition
:---|:---
client | A person 
Client Registry | This term refers to the EMPI and HCIM in a general sense
EMPI | Enterprise Master Patient Index.  The EMPI is an index of patient data and identifiers which are collected from disparate electronic databases from health authority systems. The EMPI performs probabilistic record matching to uniquely identify patients with multiple identifiers.
HCIM | Healthcare Identify Management 1. The Ministry of Health's HCIM system uniquely identifies individuals to the Healthcare community based on probabilistic matching.  2.  Used as a synonym for Client Registry services; for example all CR message names are prefixed “HCIM”.
HIE | Health Information Exchange such as HCIM
message| A http request or response.  This term does not imply FHIR Messaging. 
patient | A patient.  Patient with capital P represents the FHIR resource Patient
POS | Point of Service
V3 | The HL7V3 specification
