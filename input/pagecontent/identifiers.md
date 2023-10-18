### Identifiers

The Client Registry makes use of several kinds of identifiers, each requiring different attributes and codes.  This page explains, in more detail, the different kinds and how in FHIR they should be represented.  This page has PHN, SRI, SSRI, encrypted and encoded PHNs and alternate identifier examples below.

PHN example:

    {
      "use" : "official",
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }

Encrypted and encoded PHN example:

    {
      "use" : "official",
      "system" : "http://hlth.gov.bc.ca/fhir/client/id-issuer/BC-encrypted",
      "value" : "aGVsbG8=",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }

Non PHN, SRI example;

    {
      "use" : "official",
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-iha-iha-source-patient-id",
      "value" : "abc123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00"
      }
    }

This represents a SSRI identifier; notice the use is secondary (as opposed to official like above SRI example)..

    {
      "use" : "secondary",
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vpp-cw-source-patient-id",
      "value" : "def123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00"
      }
    }


This represents alternate identifiers.  In the example below the identifier is from Quebec, and the system represents this with 'QC' at the end.

    {
      "use" : "official",
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-qc-patient-healthcare-id",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }

The system value is formated as follows http://hlth.gov.bc.ca/fhir/client/id-issuer/_issuer code_.

Model Type | HL7 FHIR TYpe | HL7 FHIR System | Notes
:---|:---|:---|:---|:---|:---|:---
BCPHN|JHN|http://hlth.gov.bc.ca/fhir/client/id-issuer/BC|
SRI|AN|http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode|Uses the HCIM Source Code 
SSRI|AN|http://hlth.gov.bc.ca/fhir/client/id-issuer/SrcCode|Uses the HCIM Source Code.
ABPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-ab-patient-healthcare-id|
MBPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-mb-patient-healthcare-id|
NBPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nb-patient-healthcare-id|
NFPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nl-patient-healthcare-id|
NSPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-ns-patient-healthcare-id|
NTPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nt-patient-healthcare-id|
NUPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nu-patient-healthcare-id|
ONPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-on-patient-hcn|
PEPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-pe-patient-healthcare-id|
QCPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-qc-patient-healthcare-id|Quebec health number.
SKPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-sk-patient-healthcare-id|
YTPHN|JHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-yt-patient-healthcare-id|
AHULI|U|http://hlth.gov.bc.ca/fhir/client/id-issuer/AHULI|
CACF|MI|https://fhir.infoway-inforoute.ca/NamingSystem/ca-armed-forces-health-id|
RCMP|EN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-royal-mounted-police-health-id|
TRTY|TN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-indigenous-northern-affairs-number|
VAC|U|http://hlth.gov.bc.ca/fhir/client/id-issuer/VAC|
CCIMS|U|https://fhir.infoway-inforoute.ca/NamingSystem/ca-correctional-service-health-id|
CPIM|U|https://fhir.infoway-inforoute.ca/NamingSystem/ca-cpim-service-health-id|
{:.grid}
