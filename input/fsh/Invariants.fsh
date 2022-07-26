Invariant: invariant-fc-1
Description: "One and only one of RelatePerson or Patient can be present in this Bundle."
Expression: "entry.resource.ofType(Patient).count()=1 xor entry.resource.ofType(RelatedPerson).count()=1"
Severity: #error
