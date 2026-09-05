<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ImmunizationRecommendation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation">
      <sch:assert test="count(f:recommendation) &lt;= 1">recommendation: maximum cardinality of 'recommendation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation">
      <sch:assert test="count(f:vaccineCode) &gt;= 1">vaccineCode: minimum cardinality of 'vaccineCode' is 1</sch:assert>
      <sch:assert test="count(f:vaccineCode) &lt;= 1">vaccineCode: maximum cardinality of 'vaccineCode' is 1</sch:assert>
      <sch:assert test="count(f:dateCriterion) &gt;= 1">dateCriterion: minimum cardinality of 'dateCriterion' is 1</sch:assert>
      <sch:assert test="count(f:dateCriterion) &lt;= 1">dateCriterion: maximum cardinality of 'dateCriterion' is 1</sch:assert>
      <sch:assert test="count(f:supportingImmunization) &gt;= 1">supportingImmunization: minimum cardinality of 'supportingImmunization' is 1</sch:assert>
      <sch:assert test="count(f:supportingImmunization) &lt;= 1">supportingImmunization: maximum cardinality of 'supportingImmunization' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation/f:vaccineCode</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
