<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PatientProfile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-aboriginalidentitygroup']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-aboriginalidentitygroup': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-aboriginalidentityindicator']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-aboriginalidentityindicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-patientbirthsex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-patientbirthsex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-ethnicity']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-ethnicity': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-identity-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-gender-identity-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier</sch:title>
    <sch:rule context="f:Patient/f:identifier">
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-identifier-status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-identifierversion']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-identifierversion': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:telecom</sch:title>
    <sch:rule context="f:Patient/f:telecom">
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:gender</sch:title>
    <sch:rule context="f:Patient/f:gender">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:birthDate</sch:title>
    <sch:rule context="f:Patient/f:birthDate">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-business-period-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-preferred']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-preferred': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-nofixedaddress']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-nofixedaddress': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-sourceId-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/client/StructureDefinition/bc-validation-status-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
