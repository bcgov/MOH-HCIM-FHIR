
Merge Patient is a FHIR Operation.  

This operation needs the Patient.link.other field populated with an Identifier so the non-survivor Patients can be located.  There may be more than one set of Identifiers and each will be merged (if they represent more than a single non-surviving Patient).  See an example of linking the non-survivors [here](Bundle-Bundle-MergePatient-Request-Example.html).
