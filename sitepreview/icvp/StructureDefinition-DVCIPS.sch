<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile BundleUvIps
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Bundle/f:entry</sch:title>
    <sch:rule context="f:Bundle/f:entry">
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:search) &lt;= 1">search: maximum cardinality of 'search' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 1">request: maximum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:response) &lt;= 1">response: maximum cardinality of 'response' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
