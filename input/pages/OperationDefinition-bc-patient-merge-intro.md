
The merge operation is used to request two patient resources be merged. One of the two patients is identified as the source and on as the target. The data from the source patient will be merged with the data of the target patient.

The source Patient resource will be updated to add a new Patient.link reference to the target Patient resource with a link-type of replaced-by. The source Patient will also be updated to have a status of inactive, unless the source Patient resource was deleted.

The target Patient resource will be updated to add a new Patient.link reference to the source Patient resource with a link-type of replaces unless the source Patient resource is deleted. The target Patient resource must be included in the result-patient paramter if used.
