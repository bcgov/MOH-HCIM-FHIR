### Data Absent Reason

Data may be absent in notifications or any response.  If data is absent the attribute will have a data absent reason extension indicating why data is missing.  The entire attribute, e.g. BCHumanName may be absent or just part of it.  In the examples below the name use is present but the rest of the name attribute is missing.  History will not be included for any absent attribute.


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

    "name" : [
      {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode": "masked"
          }
        ],
        "use": "temp"
      }
    ]
