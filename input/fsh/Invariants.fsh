Invariant: invariant-fc-1
Description: "One and only one of RelatePerson or Patient can be present in this Bundle."
Expression: "entry.resource.ofType(Patient).count()=1 xor entry.resource.ofType(RelatedPerson).count()=1"
Severity: #error

Invariant: invariant-update-1
Description: "When Updating a Patient with the UpdatePatient Operation at least one of name, telecom, gender, address, birthDate or deceased attributes must be present."
Expression: "entry.resource.ofType(Patient).name.count()>=1 or entry.resource.ofType(Patient).telecom.count()>=1 or entry.resource.ofType(Patient).gender.count() >=1 or entry.resource.ofType(Patient).deceased[x].count()>=1 or entry.resource.ofType(Patient).address.count()>=1 or entry.resource.ofType(Patient).communication.count()>=1"
Severity: #error
