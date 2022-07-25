### Identifiers

The Client Registry makes use of several kinds of identifiers, each requiring different attributes and codes.  This page explains, in more detail, the different kinds and how in FHIR they should be represented.

PHN example:

    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension",
          "valueCode" : "merged"
        }
      ],
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "JHN"
          }
        ]
      },
      "system" : "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }

Non PHN, SRI example;

    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension",
          "valueCode" : "active"
        }
      ],
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "AN"
          }
        ]
      },
      "system" : "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }


This represents a SSRI identifier; notice the use is secondary (as opposed to official like above SRI example)..

    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension",
          "valueCode" : "active"
        }
      ],
      "use" : "secondary",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "AN"
          }
        ]
      },
      "system" : "http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }


This represents alternate identifiers.  In the example below the identifier is from Quebec, and the system represents this with 'QC' at the end.

    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension",
          "valueCode" : "active"
        }
      ],
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "JHN"
          }
        ]
      },
      "system" : "http://hlth.gov.bc.ca/fhir/client/id-issuer/QC",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }

The system value is formated as follows http://hlth.gov.bc.ca/fhir/client/id-issuer/_issuer code_.

EMPI | Model Type | HL7 FHIR TYpe | HL7 FHIR System | HL7 FHIR Use | Notes
:---|:---|:---|:---|:---|:---|:---
MemHead (CRS)|BCPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/BC|official|
MemHead (Not CRS)|SRI|AN|http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode|official|Uses the HCIM Source Code 
SSRI|SSRI|AN|http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode|secondary|Uses the HCIM Source Code.
ALTID|PEPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/PE|official|
ALTID|QCPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/QC|official|Quebec health number.
ALTID|SKPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/SK|official|
ALTID|YTPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/YT|official|
ALTID|AHULI|U|http://hlth.gov.bc.ca/fhir/client/id-issuer/AHULI|official|
ALTID|CACF|MI|http://hlth.gov.bc.ca/fhir/client/id-issuer/CACF|official|
ALTID|RCMP|EN|http://hlth.gov.bc.ca/fhir/client/id-issuer/RCMP|official|
ALTID|TRTY|TN|http://hlth.gov.bc.ca/fhir/client/id-issuer/TRTY|official|
ALTID|VAC|U|http://hlth.gov.bc.ca/fhir/client/id-issuer/VAC|official|
ALTID|CCIMS|U|http://hlth.gov.bc.ca/fhir/client/id-issuer/CCIMS|official|
ALTID|ABPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/AB|official|
ALTID|CPIM|U|http://hlth.gov.bc.ca/fhir/client/id-issuer/CPIM|official|
ALTID|MBPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/MB|official|
ALTID|NBPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/NB|official|
ALTID|NFPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/NF|official|
ALTID|NSPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/NS|official|
ALTID|NTPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/NT|official|
ALTID|NUPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/NU|official|
ALTID|ONPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/ON|official|
{:.grid}
