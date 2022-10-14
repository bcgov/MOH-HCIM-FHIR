Invariant: invariant-fc-1
Description: "One and only one of RelatePerson or Patient can be present in this Bundle."
Expression: "entry.resource.ofType(Patient).count()=1 xor entry.resource.ofType(RelatedPerson).count()=1"
Severity: #error

Invariant: invariant-update-1
Description: "When Updating a Patient with the UpdatePatient Operation at least one of name, telecom, gender, address, birthDate or deceased attributes must be present."
Expression: "entry.resource.ofType(Patient).name.count()>=1 or entry.resource.ofType(Patient).telecom.count()>=1 or entry.resource.ofType(Patient).gender.count() >=1 or entry.resource.ofType(Patient).deceased[x].count()>=1 or entry.resource.ofType(Patient).address.count()>=1 or entry.resource.ofType(Patient).communication.count()>=1"
Severity: #error

Invariant: invariant-name-use-1
Description: "Each type of allowed Name.use can only be used once."
Expression: "name.where(use = 'nickname').count()<=1 and name.where(use = 'usual').count()<=1 and name.where(use = 'official').count()<=1"
Severity: #error

Invariant: invariant-address-type-2
Description: "Each Address.type, if Address.type is NOT both, must be present no more than once."
Expression: "address.where(type = 'both').count()=0 implies (address.where(type = 'physical').count()<=1 and address.where(type = 'postal').count()<=1)"
Severity: #error

Invariant: invariant-telecom-phone-use-1
Description: "Each type of allowed Telecom.use for phone systems can only be used once."
Expression: "telecom.where(use = 'home' and system='phone').count()<=1 and telecom.where(use = 'work' and system='phone').count()<=1 and telecom.where(use = 'mobile' and system='phone').count()<=1"
Severity: #error

Invariant: invariant-telecom-email-use-1
Description: "Each type of allowed Telecom.use for email systems can only be used once."
Expression: "telecom.where(use = 'home' and system='email').count()<=1 and telecom.where(use = 'work' and system='email').count()<=1 and telecom.where(use = 'mobile' and system='email').count()<=1"
Severity: #error

Invariant: invariant-address-type-1
Description: "Address.type, if both, must not include any other types of addresses, i.e. no postal and no physical."
Expression: "address.where(type = 'both').count()>=1 implies (address.where(type = 'physical').count()=0 and address.where(type = 'postal').count()=0)"
Severity: #error

