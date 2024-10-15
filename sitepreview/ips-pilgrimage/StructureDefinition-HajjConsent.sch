<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Consent
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Consent</sch:title>
    <sch:rule context="f:Consent">
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/ips-pilgrimage/StructureDefinition/ConsentPeriod']) &gt;= 1">extension with URL = 'http://smart.who.int/ips-pilgrimage/StructureDefinition/ConsentPeriod': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:patient) &gt;= 1">patient: minimum cardinality of 'patient' is 1</sch:assert>
      <sch:assert test="count(f:verification) &gt;= 1">verification: minimum cardinality of 'verification' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Consent/f:verification</sch:title>
    <sch:rule context="f:Consent/f:verification">
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/ips-pilgrimage/StructureDefinition/ConsentVerifiedBy']) &gt;= 1">extension with URL = 'http://smart.who.int/ips-pilgrimage/StructureDefinition/ConsentVerifiedBy': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:verifiedWith) &gt;= 1">verifiedWith: minimum cardinality of 'verifiedWith' is 1</sch:assert>
      <sch:assert test="count(f:verificationDate) &gt;= 1">verificationDate: minimum cardinality of 'verificationDate' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
