<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile BackportSubscription
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Subscription/f:channel</sch:title>
    <sch:rule context="f:Subscription/f:channel">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-heartbeat-period']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-heartbeat-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-timeout']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-timeout': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-max-count']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-max-count': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:endpoint) &gt;= 1">endpoint: minimum cardinality of 'endpoint' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Subscription/f:channel/f:type</sch:title>
    <sch:rule context="f:Subscription/f:channel/f:type">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-channel-type']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-channel-type': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Subscription/f:channel/f:payload</sch:title>
    <sch:rule context="f:Subscription/f:channel/f:payload">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Subscription/f:channel/f:payload/f:extension</sch:title>
    <sch:rule context="f:Subscription/f:channel/f:payload/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
