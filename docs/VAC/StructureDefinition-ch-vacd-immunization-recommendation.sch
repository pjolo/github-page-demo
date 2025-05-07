<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CHCoreImmunizationRecommendation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation">
      <sch:assert test="count(f:contained) &lt;= 1">contained: maximum cardinality of 'contained' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation">
      <sch:assert test="count(f:targetDisease) &gt;= 1">targetDisease: minimum cardinality of 'targetDisease' is 1</sch:assert>
      <sch:assert test="count(f:forecastReason) &gt;= 1">forecastReason: minimum cardinality of 'forecastReason' is 1</sch:assert>
      <sch:assert test="count(f:dateCriterion) &gt;= 1">dateCriterion: minimum cardinality of 'dateCriterion' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
