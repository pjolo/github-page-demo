<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MessageHeader
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MessageHeader</sch:title>
    <sch:rule context="f:MessageHeader">
      <sch:assert test="count(f:destination) &gt;= 1">destination: minimum cardinality of 'destination' is 1</sch:assert>
      <sch:assert test="count(f:destination) &lt;= 1">destination: maximum cardinality of 'destination' is 1</sch:assert>
      <sch:assert test="count(f:sender) &gt;= 1">sender: minimum cardinality of 'sender' is 1</sch:assert>
      <sch:assert test="count(f:responsible) &gt;= 1">responsible: minimum cardinality of 'responsible' is 1</sch:assert>
      <sch:assert test="count(f:reason) &gt;= 1">reason: minimum cardinality of 'reason' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MessageHeader/f:destination</sch:title>
    <sch:rule context="f:MessageHeader/f:destination">
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:receiver) &gt;= 1">receiver: minimum cardinality of 'receiver' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MessageHeader/f:source</sch:title>
    <sch:rule context="f:MessageHeader/f:source">
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:software) &gt;= 1">software: minimum cardinality of 'software' is 1</sch:assert>
      <sch:assert test="count(f:version) &gt;= 1">version: minimum cardinality of 'version' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
