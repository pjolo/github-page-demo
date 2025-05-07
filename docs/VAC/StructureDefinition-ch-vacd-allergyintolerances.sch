<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CHCoreAllergyIntolerance
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:AllergyIntolerance</sch:title>
    <sch:rule context="f:AllergyIntolerance">
      <sch:assert test="count(f:extension[@url = 'http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-ext-entry-resource-cross-references']) &lt;= 1">extension with URL = 'http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-ext-entry-resource-cross-references': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:verificationStatus) &gt;= 1">verificationStatus: minimum cardinality of 'verificationStatus' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AllergyIntolerance/f:reaction</sch:title>
    <sch:rule context="f:AllergyIntolerance/f:reaction">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/openEHR-location|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/openEHR-location|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/openEHR-exposureDate|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/openEHR-exposureDate|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/openEHR-exposureDuration|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/openEHR-exposureDuration|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/openEHR-management|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/openEHR-management|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
