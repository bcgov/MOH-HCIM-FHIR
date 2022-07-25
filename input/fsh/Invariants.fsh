Invariant: invariant-fc-1
Description: "One and only one of RelatePerson or Patient can be present in this Bundle."
Expression: "entry.resource.ofType(Patient).count()=1 xor entry.resource.ofType(RelatedPerson).count()=1"
Severity: #error

Invariant: invariant-sourceid-1
Description: "When using the bc-sourceid-extension one of sourceId or userId must be populated."
Expression: "extension.count()=1 or extension.count()=2"
Severity: #error
