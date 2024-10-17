<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Parameters
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>Parameters.meta</sch:title>
    <sch:rule context="f:Parameters/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.implicitRules</sch:title>
    <sch:rule context="f:Parameters/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.language</sch:title>
    <sch:rule context="f:Parameters/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.parameter</sch:title>
    <sch:rule context="f:Parameters/f:parameter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="(exists(f:resource) or exists(f:part) or exists(f:*[starts-with(local-name(.), 'value')])) and not(exists(f:*[starts-with(local-name(.), 'value')])) and exists(f:resource))) and not(exists(f:*[starts-with(local-name(.), 'value')])) and exists(f:part))) and not(exists(f:part) and exists(f:resource))">A parameter must have one and only one of (value, resource, part) (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="(exists(f:resource) or exists(f:part) or exists(f:*[starts-with(local-name(.), 'value')])) and not(exists(f:*[starts-with(local-name(.), 'value')])) and exists(f:resource))) and not(exists(f:*[starts-with(local-name(.), 'value')])) and exists(f:part))) and not(exists(f:part) and exists(f:resource))">A parameter must have one and only one of (value, resource, part) (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.parameter.extension</sch:title>
    <sch:rule context="f:Parameters/f:parameter/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.parameter.modifierExtension</sch:title>
    <sch:rule context="f:Parameters/f:parameter/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.parameter.name</sch:title>
    <sch:rule context="f:Parameters/f:parameter/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.parameter.value[x] 1</sch:title>
    <sch:rule context="f:Parameters/f:parameter/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Parameters.parameter.part</sch:title>
    <sch:rule context="f:Parameters/f:parameter/f:part">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Parameters/f:parameter</sch:title>
    <sch:rule context="f:Parameters/f:parameter">
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
