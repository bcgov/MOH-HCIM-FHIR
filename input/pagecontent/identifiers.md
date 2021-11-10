### Identifiers

The Client Registry makes use of several kinds of identifiers, each requiring different attributes or required, constrained code fields.  This page explains, in more detail, the different kinds and how in FHIR they should be represented.

There are three identifier systems:  **http://hl7.org/fhir/bc-hcim/bc-ssri**, **http://hl7.org/fhir/bc-hcim/bc-out-of-province-sri** and **http://hl7.org/fhir/bc-hcim/bc-sri**.  

The suffix, _bc-sri_, is a system of Client Registry health identifiers.  Usually the source is necessary to determine the type of identifier; this value is placed in assigner.display field.  If the bc-sri is a PHN, the identifier needs, additionaly, a type.coding.code of JHN from the type.coding.system of http://terminology.hl7.org/CodeSystem/v2-0203.  

PHN example:

          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "JHN"
                }
              ]
            },
            "system" : "http://hl7.org/fhir/bc-hcim/bc-sri",
            "value" : "9999999999"
          }

Non PHN, SRI example;

          {
            "system" : "http://hl7.org/fhir/bc-hcim/bc-sri",
            "value" : "CER2234",
            "assigner" : {
              "display" : "VPP_CER"
            }
          }

The _bc-ssri_ represents a SSRI identifier, which also requires the source system be known.  

          {
            "system" : "http://hl7.org/fhir/bc-hcim/bc-ssri",
            "value" : "VCHA234",
            "assigner" : {
              "display" : "VPP_LION"
            }
          }

The _bc-out-of-province-sri_ suffix represents alternate identifiers and are a special case as the source of the identifier is unknown.  For alternate identifiers the assigner.display field is a string representing the province, like MB for Manitoba.

         {
            "system" : "http://hl7.org/fhir/bc-hcim/bc-out-of-province-sri",
            "value" : "90348733a",
            "assigner" : {
              "display" : "MB"
            }
          }
