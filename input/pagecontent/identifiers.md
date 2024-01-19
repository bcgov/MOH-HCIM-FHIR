### Identifiers

The Client Registry makes use of several kinds of identifiers, each requiring different attributes and codes.  This page explains, in more detail, the different kinds and how in FHIR they should be represented. This page has PHN, SRI, SSRI, encrypted and encoded PHNs and alternate identifier examples below.
The use is supplied in the examples below as it is returned in the response messages, but the use is not required in any of the request message.

PHN Request example, notice that there is no value set for "use"

    {
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }

PHN Response example: 
    
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


This represents alternate identifiers. In the example below the identifier is from Quebec, and the system represents this with 'QC' at the end.
    
    {
      "use" : "official",
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-qc-patient-healthcare-id",
      "value" : "123345654",
      "period" : {
        "start" : "2000-01-01T11:11:11+08:00",
        "end" : "2010-01-01T11:11:11+08:00"
      }
    }


The Naming Systems in the "system" field are registered in the [Canadian URI Registry](https://simplifier.net/canadianuriregistry/~resources?category=NamingSystem&sortBy=RankScore_desc)  and in the [BC-core project](https://simplifier.net/bccore/~resources?category=NamingSystem&sortBy=RankScore_desc).

The ones in the BC-Core project are formated from the V3 Assigning Authority code (source ID or issuer code) following this pattern:
 https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-_SOURCE_ID_-source-patient-id
Example: https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-vpp-cw-source-patient-id , "vpp-cw" is the V3 Assigning Authority code.

The Naming Systems from the [Canadian URI Registry](https://simplifier.net/canadianuriregistry/~resources?category=NamingSystem&sortBy=RankScore_desc) used for patient identifier in HCIM are listed in the table below.

All Naming Systems used for Patient identifiers in HCIM are listed in this [file](HCIMNamingSystems.pdf).

V3 Assigning Authority | HL7 FHIR Naming System | Notes
:---|:---|:---|:---|:---|:---|:---
BCPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id|
MOH-CRS|https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-patient-healthcare-id| 
PUBH_PANO|https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-panorama-client-id|
HIBC_MSP|https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-msp-eligibility-id|
ABPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-ab-patient-healthcare-id|
MBPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-mb-patient-healthcare-id|
NBPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nb-patient-healthcare-id|
NFPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nl-patient-healthcare-id|
NSPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-ns-patient-healthcare-id|
NTPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nt-patient-healthcare-id|
NUPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-nu-patient-healthcare-id|
ONPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-on-patient-hcn|
PEPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-pe-patient-healthcare-id|
QCPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-qc-patient-healthcare-id|
SKPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-sk-patient-healthcare-id|
YTPHN|https://fhir.infoway-inforoute.ca/NamingSystem/ca-yt-patient-healthcare-id|
CACF|https://fhir.infoway-inforoute.ca/NamingSystem/ca-armed-forces-health-id|
RCMP|https://fhir.infoway-inforoute.ca/NamingSystem/ca-royal-mounted-police-health-id|
TRTY|https://fhir.infoway-inforoute.ca/NamingSystem/ca-indigenous-northern-affairs-number|
VAC|https://fhir.infoway-inforoute.ca/NamingSystem/ca-veterans-affairs-health-id|
CCIMS|https://fhir.infoway-inforoute.ca/NamingSystem/ca-correctional-service-health-id|
CPIM|https://fhir.infoway-inforoute.ca/NamingSystem/ca-cpim-service-health-id|
{:.grid}
