### Data Absent Reason

Data may be absent in notifications or any response.  This guide will not discuss the busniess reasons that this may be the case.  If data is absent the entire entity will be structured with the data absent reason extension indicating why the data is missing.  History will not be included for any absent attribute.


For example gender would be masked as follows.

        "_gender" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode" : "masked"
            }
          ]
        }

Below is an example for name.

          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode" : "masked"
              }
            ],
            "_use" : {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode" : "masked"
                }
              ]
            }
          }

The _use_ attribute is also masked as the cardinality is 1..1 and must be present when a name is present.

