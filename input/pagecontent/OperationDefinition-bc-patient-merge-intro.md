Merge Patient operation needs the Patient.link.other field populated with an Identifier so the non-survivor Patients can be located.  There may be more than one set of Identifiers and each will be merged (if they represent more than a single non-surviving Patient)..

>The link.other.identifier should be 1..* or 1..1.  Not sure how to do that.  Should we change the profile BCPatient?
